<!--
AUTH: ASOCIADOS
-->

<script type="text/javascript">
	var product_setup_json = '{PRODUCT}';
	var previous_data_json = '{PREVIOUS_DATA}';

	if (product_setup_json)
		{
		window.product_setup = product_setup_json.parseJSON();
		}
	if (previous_data_json)
		{
		window.previous_data = previous_data_json.parseJSON();
		}

	var errores_json = '{ERRORES}';
	if (errores_json)
		{
		window.errores = errores_json.parseJSON();
		}

	function display_errores(form)
		{
		if (typeof(window.errores) != 'undefined')
			{
			for (var i = 0; i < window.errores.length; i++)
				{
				var name = window.errores[i];
				
				var obj = form.elements[name];
				if (typeof(obj) != 'undefined')
					{
					obj.parentNode.style.background = '#cccccc';
					}
				}
			}
		}

	function setup_values(form)
		{
		if (window.previous_data)
			{
			// Estos se tienen que setear antes para que los selects derivados funcionen
			if (typeof(window.previous_data['segment']) != 'undefined')
				{
				setSelectValue(form.elements['segment'], window.previous_data['segment']);
				update_reasons(form);
				}
			if (typeof(window.previous_data['travel_reason']) != 'undefined')
				{
				setSelectValue(form.elements['travel_reason'], window.previous_data['travel_reason']);
				update_products(form);
				}

			for (var item in window.previous_data)
				{
				if (typeof(window.previous_data[item]) != 'function' && form.elements[item])
					{
					if (form.elements[item].tagName == 'SELECT')
						{
						setSelectValue(form.elements[item], window.previous_data[item]);
						}
					else
						{
						form.elements[item].value = window.previous_data[item];
						}
					}
				}
			setup_calendars();
			}
		}

	function setup_calendars()
		{
		var fechas = getElementsByClassName('fecha');

		for (var i = 0; i < fechas.length; i++)
			{
			var item = fechas[i];
			if (item.value)
				{
				var r = /[0-9]+$/;
				var cal_id = parseInt(r.exec(item.name)) + 1;
				//alert(cal_id);

				var default_date = Date.parseDate(item.value, "%d-%m-%Y");
				anomes = default_date.print("%Y-%m");
				dia = default_date.print("%d");

				document.getElementById('fecha' + cal_id + '_anomes').value = anomes;

				// Actualizo el contenido del select de los dias
				actualiza_dias('{FECHA_DESDE}', '{FECHA_HASTA}', anomes, cal_id, '');	
				document.getElementById('fecha' + cal_id + '_dia').value = dia;
				}
			}
		}

	function setup_products(form)
		{
		if (window.product_setup)
			{
			var segmentos = window.product_setup;

			for (var n = 0; n < segmentos.length; n++)
				{
				if (typeof(segmentos[n]) != 'function')
					{
					var i = segmentos[n];
					form.segment.options[n] = new Option(i.desc, i.cod);

					// Dejo esta por defecto
					/*if (i.cod == '')
						{
						form.compartment.options[n].selected = true;
						}*/
					}
				}

			update_reasons(document.getElementById('formulario'));
			}
		}

	function update_reasons(form)
		{
		if (window.product_setup)
			{
			var reasons_for_segment = Array();
		
			var segments = window.product_setup;
			for (var s = 0; s < segments.length; s++)
				{
				var segment = segments[s];
				if (segment.cod == form.segment.value)
					{
					reasons_for_segment = segment['travel_reason'];
					break;
					}
				}

			// limpio el select
			form.travel_reason.options.length = 0;

			// agrego las opciones segun el segmento
			//form.travel_reason.options[0] = new Option('', '');

			if (reasons_for_segment)
				{
				for (var i = 0; i < reasons_for_segment.length; i++)
					{
					var reason = reasons_for_segment[i];
					form.travel_reason.options[i] = new Option(reason.desc, reason.cod);
					}
				}

			update_products(form);
			}
		}

	function update_products(form)
		{
		if (window.product_setup)
			{
			var products_for_reason = Array();
		
			var segments = window.product_setup;
			var reasons_for_segment = Array();

			for (var s = 0; s < segments.length; s++)
				{
				var segment = segments[s];
				if (segment.cod == form.segment.value)
					{
					reasons_for_segment = segment['travel_reason'];
					break;
					}
				}

			if (reasons_for_segment)
				{
				for (var r = 0; r < reasons_for_segment.length; r++)
					{
					var reason = reasons_for_segment[r];
					if (reason.cod == form.travel_reason.value)
						{
						products_for_reason = reason.product;
						}
					}
				}

			// limpio el select
			form.product.options.length = 0;

			// agrego las opciones segun el segmento
			//form.product.options[0] = new Option('', '');

			if (products_for_reason)
				{
				for (var i = 0; i < products_for_reason.length; i++)
					{
					var product = products_for_reason[i];
					form.product.options[i] = new Option(product.desc, product.cod);
					}
				}
			}
		}

	function check_and_submit(form)
		{
		var errores = '';
		
		var origenes = getElementsByClassName('origen');
		var destinos = getElementsByClassName('destino');
		var fechas = getElementsByClassName('fecha');

		var fechas_iso = Array();

		for (var n = 0; n < origenes.length; n++)
			{
			var origen = origenes[n].value;
			var destino = destinos[n].value;
	
			// Minimo un segmento
			if ((n < 1) && (!origen || !destino))
				{
				errores += 'Debe ingresar al menos un segmento' + "\n";
				}
	
			// Segmentos incompletos
			if ((origen && !destino) || (!origen && destino))
				{
				errores += 'Segmento ' + (n + 1) + ' invalido' + "\n";
				}
	
			// OD tres letras
			if (origen && origen.length < 3)
				{
				errores += 'Origen invalido ' + origen + "\n";
				}	
			if (destino && destino.length < 3)
				{
				errores += 'Destino invalido ' + destino + "\n";
				}

			// Origen != destino
			if (origen && destino && (origen == destino))
				{
				errores += 'Origen igual a destino para segmento ' + (n + 1) + "\n";
				}

			// Fill de fechas
			if (origen)
				{
				var fecha_dia = form.elements['fecha' + (n + 1) + '_dia'].value;
				var fecha_anomes = form.elements['fecha' + (n + 1) + '_anomes'].value;

				if (fecha_dia && fecha_anomes)
					{
					fechas[n].value = fecha_dia + '-' + fecha_anomes.substring(5, 7) + '-' + fecha_anomes.substring(0,4);
					fechas_iso[n] = fecha_anomes + '-' + fecha_dia;
					}
				}	
			}

		// Fechas mayor o igual al segmento anterior
		for (var i = 1; i < fechas_iso.length; i++)
			{
			if (fechas_iso[i] < fechas_iso[i - 1])
				{
				errores += 'La fecha del segmento ' + (i + 1) + ' no puede ser menor a la del segmento anterior' + "\n";
				}
			}

		// Pax sea > 0
		if (!isInteger(form.total_pax.value) || !(form.total_pax.value > 0))
			{
			errores += 'La cantidad de pasajeros es invalida' + "\n";
			}

		// Pax child y pax full fare >= 0
		if (!isInteger(form.pax_full_fare.value) || !(form.pax_full_fare.value >= 0))
			{
			errores += 'La cantidad de pasajeros adultos es invalida' + "\n";
			}
		if (!isInteger(form.pax_child.value) || !(form.pax_child.value >= 0))
			{
			errores += 'La cantidad de pasajeros child es invalida' + "\n";
			}

		// Pax child + pax full fare = total pax
		if ((parseInt(form.pax_full_fare.value) + parseInt(form.pax_child.value)) != parseInt(form.total_pax.value))
			{
			errores += 'La cantidad de pasajeros totales debe ser igual a los pasajeros adultos mas los pasajeros child' + "\n";
			}

		// Email valido
		if (!form.email_executive.value || !valida_email(form.email_executive.value))
			{
			errores += 'El email del agente no es valido' + "\n";
			}

		// Detalles obligatorios
		if (getRadioValue(form.flag_special_meal) == 1)
			{
			if (!form.detail_meal.value)
				{
				errores += 'Debe ingresar los detalles de la comida especial' + "\n";
				}
			}
		if (getRadioValue(form.flag_special_baggage) == 1)
			{
			if (!form.detail_baggage.value)
				{
				errores += 'Debe ingresar los detalles de equipaje especial' + "\n";
				}
			}

// agregado por JM Caracci para reemplazar por 1-9 todos los rut_executive que vengan vacios
                if (form.rut_executive.value=='')
                        form.rut_executive.value='1-9';
//fin de los cambios de JM Caracci


		if (errores)
			{
			alert(errores);
			}
		else
			{
			form.action.value = 'send_form';
			form.submit();
			}
		}
</script>
<h1>Solicitud de Charter</h1>

<form id="formulario" method="POST" action='/cgi-bin/asociados/formularios_grupos.cgi' onSubmit="check_and_submit(document.getElementById('formulario')); return false;">

<input type="hidden" name="action">
<input type="hidden" name="form_name" value="create_request_charter">

<input type="hidden" name="quotation_date" value="{FECHA_COTIZACION}">

<h4>Informaci&oacute;n Agencia</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>

<tr>
<td class="sub-titulo">Agencia</td>
<td>{+ASOCIADOS_INFO('nombre_empresa')} <input type='hidden' name='name_agency' value="{+ASOCIADOS_INFO('nombre_empresa')}"></td>
</tr>
<tr>
<td class="sub-titulo">C&oacute;digo IATA / RUT</td>
<td>{+ASOCIADOS_INFO('iata_rut')}
<input type='hidden' name='iata_cdg' value="{+ASOCIADOS_INFO('iata_cdg')}">
<input type='hidden' name='identifier' value="{+ASOCIADOS_INFO('rut_empresa')}">
</td>
</tr>
<tr>
<td class="sub-titulo">Pais</td>
<td>{+ASOCIADOS_INFO('country_iso')} <input type='hidden' name='country' value="{+ASOCIADOS_INFO('country_iso')}"></td>
</tr>
</table>

<br>
<br>

<h4>Agente</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="sub-titulo">Nombre Agente</td>
<td>{+ASOCIADOS_INFO('nombre_agente')} 
	<input type='hidden' name='name_executive' value="{+ASOCIADOS_INFO('nombre_agente')}">
	<input type='hidden' name='rut_executive' value="{+ASOCIADOS_INFO('rut_agente')}">
</td>
</tr>
<tr>
<td class="sub-titulo">Email</td>
<td><input name="email_executive" type="text" size="30" maxlength="250" value="{+ASOCIADOS_INFO('email')}"></td>	
</tr>
</table>

<br>
<br>

<h4>Informaci&oacute;n Solicitud</h4>

<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="sub-titulo">Segmento</td>
<td style="width: 70%;">
<select name="segment" id="segmento" class="input-text" onChange="update_reasons(this.form);">
</select>
</td>
</tr>
<tr>
<td class="sub-titulo">Motivaci&oacute;n de Viaje</td>
<td>
<select name="travel_reason" class="input-text" onChange="update_products(this.form);">
</select>
</td>
</tr>

<tr>
<td class="sub-titulo">Producto</td>
<td>
<select name="product" id="producto" class="input-text">
</select></td>
</tr>
</table>
<br>
<br>

<h4>Informaci&oacute;n del Grupo</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="sub-titulo">Cantidad de Pasajeros</td>
<td>
<select name="total_pax" class="input-text">
{CANTIDADES_PASAJEROS}
</select>
</td>
</tr>

<!--<tr>
<td class="sub-titulo">Cabina</td>
<td>
<select name="cabin" class="input-text">
<option value="aca van las opciones" selected>aca van las opciones</option>
</select>
</td>
</tr>-->

<tr>
<td class="sub-titulo">Pasajeros Adulto</td>
<td>
<select name="pax_full_fare" class="input-text">
	{CANTIDADES_PASAJEROS}
</select>
</td>
</tr>

<tr>
<td class="sub-titulo">Pasajeros Child</td>
<td>
<select name="pax_child" class="input-text">
	{CANTIDADES_PASAJEROS}
</select>
</td>
</tr>
</table>

<br>
<br>

<h4>Segmentos de Vuelo</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="10%">
<col width="10%">
<col width="10%">

<tr>
<th>Origen</th>
<th>Destino</th>
<th>Fecha Salida</th>
</tr>
<td>        
<input name="origin0" class="origen" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
<input name="destination0" class="destino" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
	{+CALENDARIO(nc='1', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date0" class="fecha" type="hidden" size="15" maxlength="10">
</td>
</tr>
<tr>
<td>
<input name="origin1" class="origen" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
<input name="destination1" class="destino" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
	{+CALENDARIO(nc='2', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date1" class="fecha" type="hidden" size="15" maxlength="10">
</td>
</tr>

<tr>
<td>
<input name="origin2" class="origen" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
<input name="destination2" class="destino" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
	{+CALENDARIO(nc='3', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date2" class="fecha" type="hidden" size="15" maxlength="10">
</td>
</tr>
<tr>
<td>
<input name="origin3" class="origen" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
<input name="destination3" class="destino" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
	{+CALENDARIO(nc='4', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date3" class="fecha" type="hidden" size="15" maxlength="10">
</td>
</tr>

<tr>
<td>
<input name="origin4" class="origen" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
<input name="destination4" class="destino" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
	{+CALENDARIO(nc='5', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date4" class="fecha" type="hidden" size="15" maxlength="10">
</td>
</tr>
<tr>
<td>
<input name="origin5" class="origen" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
<input name="destination5" class="destino" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
	{+CALENDARIO(nc='6', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date5" class="fecha" type="hidden" size="15" maxlength="10">
</td>
</tr>
<tr>
<td>
<input name="origin6" class="origen" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
<input name="destination6" class="destino" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
	{+CALENDARIO(nc='7', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date6" class="fecha" type="hidden" size="15" maxlength="10">
</td>
</tr>
<tr>
<td>
<input name="origin7" class="origen" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
<input name="destination7" class="destino" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
	{+CALENDARIO(nc='8', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date7" class="fecha" type="hidden" size="15" maxlength="10">
</td>
</tr>
<tr>
<td>
<input name="origin8" class="origen" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
<input name="destination8" class="destino" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
	{+CALENDARIO(nc='9', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date8" class="fecha" type="hidden" size="15" maxlength="10">
</td>
</tr>
<tr>
<td>
<input name="origin9" class="origen" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
<input name="destination9" class="destino" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td>
	{+CALENDARIO(nc='10', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date9" class="fecha" type="hidden" size="15" maxlength="10">
</td>
</tr>
</table>

<br>
<br>

<h4>Otros</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="34%">
<col width="20%">
<col width="20%">
<col>

<tr>
<th>&nbsp;</th>
<th>Si</th>
<th>No</th>
<th>Detalles</th>
</tr>


<tr>
<td class="sub-titulo">Transporta equipaje especial?</td>

<td><input name="flag_special_baggage" type="radio" value="1"></td>
<td><input name="flag_special_baggage" type="radio" value="0" checked></td>  
<td><input name="detail_baggage" type="text" size="30" maxlength="250"></td>
</tr>


<tr>
<td class="sub-titulo">Requiere Comida  especial?</td>

<td><input name="flag_special_meal" type="radio" value="1"></td>
<td><input name="flag_special_meal" type="radio" value="0" checked></td>
<td><input name="detail_meal" type="text" size="30" maxlength="250"></td>
</tr>
</table>

<br>
<br>

<h4>Observaciones</h4>

<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<textarea name="observations" style="width: 575px;" cols="82" rows="5"></textarea>
</td>
</tr>
</table>

<p><input type="submit" name="Submit" value="Enviar" class="boton-destacado flotar_der"></p>
</form>

<script type="text/javascript">
	setup_products(document.getElementById('formulario'));
	setup_values(document.getElementById('formulario'));

	display_errores(document.getElementById('formulario'));
</script>
