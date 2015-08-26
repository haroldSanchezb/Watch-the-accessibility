<!--
AUTH: ASOCIADOS
-->

<script type="text/javascript">
	var product_setup_json = '{PRODUCT}';
	var class_setup_json = '{BOOKING_CLASS}';
	var previous_data_json = '{PREVIOUS_DATA}';

	if (product_setup_json)
		{
		window.product_setup = product_setup_json.parseJSON();
		}

	if (class_setup_json)
		{
		window.class_setup = class_setup_json.parseJSON();
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
			if (typeof(window.previous_data['compartment']) != 'undefined')
				{
				setSelectValue(form.elements['compartment'], window.previous_data['compartment']);
				update_booking_classes(form);
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


			if (typeof(window.previous_data['source']) != 'undefined' && window.previous_data['source'] == 'quotation')
				{	
				var objs = getElementsByClassName('blockable');

				for (var i = 0; i < objs.length; i++)
					{
					var item = objs[i];
					item.readOnly = true;
					item.style.background = '#dddddd';
					item.style.color = '#363636';
					item.style.border = 'solid #6c7d8d 1px';

					if (item.tagName == 'SELECT' && item.options.length > 0)
						{
						var curr_option = item.options[item.selectedIndex];
						item.options.length = 0;
						item.options[0] = curr_option;
						}
					}

				// Fijo los calendarios
				var fechas = getElementsByClassName('fecha');
				for (var i = 0; i < fechas.length; i++)
					{
					var item = fechas[i];
					var item_value = item.value || '31-12-3025';
						
					var r = /[0-9]+$/;
					var cal_id = parseInt(r.exec(item.name)) + 1;	

					var default_date = Date.parseDate(item_value, "%d-%m-%Y");
					anomes = default_date.print("%Y-%m");
					dia = default_date.print("%d");

					var select_anomes = document.getElementById('fecha' + cal_id + '_anomes');
					setSelectValue(select_anomes, anomes);

					var curr_option = select_anomes.options[select_anomes.selectedIndex];
					select_anomes.options.length = 0;
					select_anomes.options[0] = curr_option;


					// Actualizo el contenido del select de los dias
					actualiza_dias(anomes + '-' + dia, anomes + '-' + dia, anomes, cal_id, '');	
					document.getElementById('fecha' + cal_id + '_dia').value = dia;

					// Borro los iconos del calendario
					document.getElementById('img_calendario_' + cal_id).parentNode.innerHTML = '';

					}
				}
			else
				{
				setup_calendars();
				}
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

				setSelectValue(document.getElementById('fecha' + cal_id + '_anomes'), anomes);

				// Actualizo el contenido del select de los dias
				actualiza_dias('{FECHA_DESDE}', '{FECHA_HASTA}', anomes, cal_id, '');	
				document.getElementById('fecha' + cal_id + '_dia').value = dia;
				}
			}
		}

	function setup_compartments(form)
		{
		if (window.class_setup)
			{
			var n = 0;
			var cabinas = window.class_setup.compartment;

			for (var i in cabinas)
				{
				if (typeof(cabinas[i]) != 'function')
					{
					form.compartment.options[n] = new Option(i, i);

					// Dejo esta por defecto
					if (i == 'Y')
						{
						form.compartment.options[n].selected = true;
						}
				
					n++;
					}
				}

			update_booking_classes(form);
			}
		}

	function update_booking_classes(form)
		{
		if (window.class_setup)
			{
			var classes_for_compartment = Array();
		
			if (window.class_setup.compartment[form.compartment.value])
				{
				classes_for_compartment = window.class_setup.compartment[form.compartment.value]['class'];
				}
	
			var clases = getElementsByClassName('clase');
			for (var n = 0; n < clases.length; n++)
				{
				// Limpio el select
				clases[n].options.length = 0;

				// Agrego las opciones segun la cabina
				clases[n].options[0] = new Option('', '');

				if (classes_for_compartment)
					{
					for (var i = 0; i < classes_for_compartment.length; i++)
						{
						var clase = classes_for_compartment[i].cod;
						clases[n].options[i + 1] = new Option(clase, clase);
						}
					}
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

		form.Submit.disabled = true;

		// Prechecks via servicios primero
		if (typeof(window.service_checks) == 'undefined')
			{
			window.service_checks = 0;
			window.errores = '';
			}
	
		var origenes = getElementsByClassName('origen');
		var destinos = getElementsByClassName('destino');
		var fechas = getElementsByClassName('fecha');
		var clases = getElementsByClassName('clase');
		var vuelos = getElementsByClassName('vuelo');
		var carriers = getElementsByClassName('carrier');

		for (var n = 0; n < origenes.length; n++)
			{
			if (origenes[n].value && destinos[n].value && carriers[n].value && vuelos[n].value)
				{
				// Si clase vacia completar con X
				if (!clases[n].value)
					{
					setSelectValue(clases[n], 'X');
					}

				// Fill de fechas
				var fecha_dia = form.elements['fecha' + (n + 1) + '_dia'].value;
				var fecha_anomes = form.elements['fecha' + (n + 1) + '_anomes'].value;

				if (fecha_dia && fecha_anomes)
					{
					fechas[n].value = fecha_dia + '-' + fecha_anomes.substring(5, 7) + '-' + fecha_anomes.substring(0,4);
					}

				// Validacion de vuelos y clases
				var data = new Object();

				data.ACTION = 'validate_flight';
				data.ORIGEN = origenes[n].value;
				data.DESTINO = destinos[n].value;
				data.CARRIER = carriers[n].value;
				data.VUELO = vuelos[n].value;
				data.CLASE = clases[n].value;
				data.FECHA = fechas[n].value;
				data.SEGMENTO = n + 1;
				data.CABINA = form.compartment.value;
		
				JSON_Services.add_handled_request(
					'asociados/validaciones_formularios_grupos',
					data,
					function(status, detalles)
						{
						if (status > 0)
							{
							if (!detalles.STATUS || detalles.STATUS != 'OK')
								{
								//var segmento = detalles.FLIGHT_DATA.SEGMENTO;
								var origen = detalles.FLIGHT_DATA.ORIGEN;
								var destino = detalles.FLIGHT_DATA.DESTINO;

								window.errores += 'El segmento ' + origen + ' - ' + destino + ' no es valido' + "\n";
								}
							}
						else
							{
							window.errores += 'Problemas al consultar por vuelos' + "\n";
							}

						window.service_checks--;
						if (!window.service_checks)
							{
							post_check_and_submit(form);
							}
						}
					);

				window.service_checks++;
				}
			}

		if (!window.service_checks)
			{
			post_check_and_submit(form);
			}
		else
			{
			JSON_Services.fetch_data();
			}
		}

	function post_check_and_submit(form)
		{
		var errores = '';
		if (window.errores)
			{
			errores += window.errores;
			window.errores = '';
			}

		var origenes = getElementsByClassName('origen');
		var destinos = getElementsByClassName('destino');
		var fechas = getElementsByClassName('fecha');
		var clases = getElementsByClassName('clase');
		var vuelos = getElementsByClassName('vuelo');
		var carriers = getElementsByClassName('carrier');

		var fechas_iso = Array();

		for (var n = 0; n < origenes.length; n++)
			{
			var origen = origenes[n].value;
			var destino = destinos[n].value;
			var carrier = carriers[n].value;
			var clase = clases[n].value;
			var vuelo = vuelos[n].value;

			// Minimo un segmento
			if ((n < 1) && (!origen || !destino))
				{
				errores += 'Debe ingresar al menos un segmento' + "\n";
				}
	
			// Segmentos incompletos
			if (!(origen && destino && carrier && vuelo))
				{
				if (origen || destino || carrier || vuelo)
					{
					errores += 'Segmento ' + (n + 1) + ' invalido' + "\n";
					}
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

		// Pax sea >= 9
		if (!isInteger(form.total_pax.value) || !(form.total_pax.value >= 9))
			{
			errores += 'La cantidad de pasajeros debe ser mayor o igual a 9' + "\n";
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

		// Nombre grupo tenga entre 2 y 50 caracteres
		if (form.group_name.value.length < 2 || form.group_name.value.length > 50)
			{
			errores += 'El nombre del grupo debe tener entre 2 y 50 caracteres' + "\n";
			}

		// Email valido
		if (!form.email_executive.value || !valida_email(form.email_executive.value))
			{
			errores += 'El email del agente no es valido' + "\n";
			}

		// Detalles Obligatorios
		if (getRadioValue(form.info_adicional) == 1)
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
			form.Submit.disabled = false;
			alert(errores);
			}
		else
			{
			form.action.value = 'send_form';
			form.submit();
			}
		}
</script>
<div id="contenedor_paso1_asociados">
<h1>Solicitud de Grupo</h1>

<div style="padding-top:15px;" class="warning-info" id="msg-op">
  <p>En esta secci&oacute;n puede realizar &uacute;nicamente solicitudes  de grupos que al menos tenga un tramo LAN. En el caso de itinerarios Mixtos (LAN y TAM), en esta secci&oacute;n recibiremos solicitudes s&oacute;lo si dentro del itinerario, el segmento de LAN es anterior al de TAM.<br />
  Para solicitudes de grupos con segmentos &uacute;nicamente de TAM o con itinerarios mixtos  TAM y LAN en donde el primer transportador  sea TAM, debe realizar su solicitud aTAM Group Desk: 511  202 6900.</p>
</div>
<div class="content_tb_process">
<h2 style="width:770px; margin-left:auto; margin-right:auto">Solicitud de grupo</h2>
<div class="box_content_process" style="width:766px; margin-left:auto; margin-right:auto">
<div class="box_int_border_process">
<div class="center_content" style="width:600px">
<form id="formulario" method="POST" action='/cgi-bin/asociados/formularios_grupos.cgi' onSubmit="check_and_submit(document.getElementById('formulario')); return false;">

<input type="hidden" name="action">
<input type="hidden" name="form_name" value="create_request_mundolan">


<table class="tabla_form_proceso" width="600px" cellspacing="0" cellpadding="0">
<col width="30%">
<col>
<tr><td colspan="2" class="encabezado_tabla_form_proceso">Informaci&oacute;n Agencia</td></tr>
<tr>
<td class="dato_tabla_form_proceso">Nombre Agencia</td>
<td class="campo_tabla_form_proceso">{+ASOCIADOS_INFO('nombre_empresa')} 
<input type='hidden' name='name_agency' value="{+ASOCIADOS_INFO('nombre_empresa')}">
<input type='hidden' name='country' value="{+ASOCIADOS_INFO('country_iso')}">
</td>
</tr>

<tr>
<td class="dato_tabla_form_proceso">IATA Agencia / RUT</td>
<td class="campo_tabla_form_proceso">{+ASOCIADOS_INFO('iata_rut')}
<input type='hidden' name='iata_cdg' value="{+ASOCIADOS_INFO('iata_cdg')}">
<input type='hidden' name='identifier' value="{+ASOCIADOS_INFO('rut_empresa')}">
</td>
</tr>
</table>
<br>
<br>


<table class="tabla_form_proceso" width="600px" cellspacing="0" cellpadding="0">
<col width="30%">
<col>
<tr><td colspan="2" class="encabezado_tabla_form_proceso">Agente Viaje</td></tr>
<tr>
<td class="dato_tabla_form_proceso">Agente</td>
<td class="campo_tabla_form_proceso">{+ASOCIADOS_INFO('nombre_agente')} 
<input type='hidden' name='name_executive' value="{+ASOCIADOS_INFO('nombre_agente')}">
<input type='hidden' name='rut_executive' value="{+ASOCIADOS_INFO('rut_agente')}">
</td>
</tr>
<tr>
<td class="dato_tabla_form_proceso">email</td>
<td class="campo_tabla_form_proceso"><input name="email_executive" type="text" size="30" maxlength="250" value="{+ASOCIADOS_INFO('email')}"></td>
</tr>

<!--<tr><td class="dato_tabla_form_proceso">{_LABEL_TELEFONO_CONTACTO_ML}
  <table cellspacing="0" cellpadding="0">
    
  </table></td>
<td class="campo_tabla_form_proceso"><input name="phone_executive" type="text" size="15" maxlength="15"></td>
</tr>-->

</table>
<br>
<br>


<table class="tabla_form_proceso" width="600px" cellspacing="0" cellpadding="0">
<col width="30%">
<col>
<tr><td colspan="2" class="encabezado_tabla_form_proceso">Tipo Solicitud</td></tr>
<tr>
<td class="dato_tabla_form_proceso">Segmento</td>
<td class="campo_tabla_form_proceso">
<select name="segment" class="input-text" onChange="update_reasons(this.form);">
</select>
</td>
</tr>
<tr>
<td class="dato_tabla_form_proceso">Motivaci&oacute;n de Viaje</td>
<td class="campo_tabla_form_proceso">
<select name="travel_reason" class="input-text" onChange="update_products(this.form);">
</select>
</td>
</tr>
<tr>
<td class="dato_tabla_form_proceso">Producto</td>
<td class="campo_tabla_form_proceso">
<select name="product" class="input-text">
</select></td>
</tr>
<tr>
<td class="dato_tabla_form_proceso">Empresa</td>
<td class="campo_tabla_form_proceso"><input name="company" type="text" size="30" maxlength="250">
</td>
</tr>
</table>
<br>
<br>

<h4></h4>
<table class="tabla_form_proceso" width="600px" cellspacing="0" cellpadding="0">
<col width="30%">
<col>
<tr><td colspan="2" class="encabezado_tabla_form_proceso">Informaci&oacute;n del Grupo</td></tr>
<tr>
<td class="dato_tabla_form_proceso">Nombre del Grupo</td>
<td class="campo_tabla_form_proceso"><input name="group_name" type="text" size="30" maxlength="50" strto="UPPER">   (S&oacute;lo letras y sin espacios. Ej: ColegioViajeMiami)</td>
</tr>


<tr>
<td class="dato_tabla_form_proceso">Tipo</td>
<td class="campo_tabla_form_proceso">
<select name="type_pax" class="input-text">
<option value="" selected></option>
{TYPE_PAX_OPTIONS}
</select></td>
</tr>

<tr>
<td class="dato_tabla_form_proceso">Cabina</td>
<td class="campo_tabla_form_proceso">
<select class="blockable" name="compartment" onChange="update_booking_classes(this.form);">
</select></td>
</tr>

<tr>
<td class="dato_tabla_form_proceso">Pasajeros Adultos</td>
<td class="campo_tabla_form_proceso"><input name="pax_full_fare" type="text" size="5" maxlength="3" value="0"></td>
</tr>
<tr>
<td class="dato_tabla_form_proceso">Pasajeros Child</td>
<td class="campo_tabla_form_proceso"><input name="pax_child" type="text" size="5" maxlength="3" value="0"></td>
</tr>

<tr>
<td class="dato_tabla_form_proceso">Total de Pasajeros</td>
<td class="campo_tabla_form_proceso"><input class="blockable" name="total_pax" type="text" size="5" maxlength="2" value="0">  
(Suma de Adultos y Child, m&aacute;ximo 99)</td>
</tr>
<tr>
<td class="dato_tabla_form_proceso">Tarifa Solicitada</td>
<td class="campo_tabla_form_proceso"><input class="blockable" name="fare_neta" type="text" size="30" maxlength="250" readonly="read-only"></td>
</tr>

<!--<tr>
<td class="dato_tabla_form_proceso">Fare Basis</td>
<td class="campo_tabla_form_proceso"><input name="fare_basis" type="text" size="4" maxlength="10">
</td>
</tr>-->
</table>

<br>
<br>


<table class="tabla_form_proceso" width="600px" cellspacing="0" cellpadding="0">
<col width="14%">
<col width="14%">
<col width="30%">
<col width="14%">
<col width="14%">
<col width="14%">
<tr><td colspan="6" class="encabezado_tabla_form_proceso">Segmentos de Vuelo</td></tr>
<tr>

<td class="dato_tabla_form_proceso">Carrier</td>
<td class="dato_tabla_form_proceso">N&deg; Vuelo</td>
<td class="dato_tabla_form_proceso" style="width:34%">Fecha Salida</td>
<td class="dato_tabla_form_proceso">Origen</td>
<td class="dato_tabla_form_proceso">Destino</td>
<td class="dato_tabla_form_proceso">Clase</td>
</tr>

<tr>
<td class="campo_tabla_form_proceso" style="height:30px;">
<input class="carrier blockable" name="carrier0" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="vuelo blockable" name="flight_number0" type="text" size="4" maxlength="4">
</td>
<td class="campo_tabla_form_proceso">
	{+CALENDARIO(nc='1', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input class="fecha blockable" name="departure_date0" type="hidden" size="15" maxlength="10">
</td>
<td class="campo_tabla_form_proceso">
<input class="origen blockable" name="origin0" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="destino blockable" name="destination0" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<select class="clase blockable" name="booking_class0">
</select>
</td>
</tr>

<tr>
<td class="campo_tabla_form_proceso" style="height:30px;">
<input class="carrier blockable" name="carrier1" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="vuelo blockable" name="flight_number1" type="text" size="4" maxlength="4">
</td>
<td class="campo_tabla_form_proceso">
	{+CALENDARIO(nc='2', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input class="fecha blockable" name="departure_date1" type="hidden" size="15" maxlength="10">
</td>
<td class="campo_tabla_form_proceso">
<input class="origen blockable" name="origin1" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="destino blockable" name="destination1" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<select class="clase blockable" name="booking_class1">
</select>
</td>
</tr>

<tr>
<td class="campo_tabla_form_proceso" style="height:30px;">
<input class="carrier blockable" name="carrier2" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="vuelo blockable" name="flight_number2" type="text" size="4" maxlength="4">
</td>
<td class="campo_tabla_form_proceso">
	{+CALENDARIO(nc='3', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input class="fecha blockable" name="departure_date2" type="hidden" size="15" maxlength="10">
</td>
<td class="campo_tabla_form_proceso">
<input class="origen blockable" name="origin2" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="destino blockable" name="destination2" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<select class="clase blockable" name="booking_class2">
</select>
</td>
</tr>

<tr>
<td class="campo_tabla_form_proceso" style="height:30px;">
<input class="carrier blockable" name="carrier3" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="vuelo blockable" name="flight_number3" type="text" size="4" maxlength="4">
</td>
<td class="campo_tabla_form_proceso">
	{+CALENDARIO(nc='4', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input class="fecha blockable" name="departure_date3" type="hidden" size="15" maxlength="10">
</td>
<td class="campo_tabla_form_proceso">
<input class="origen blockable" name="origin3" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="destino blockable" name="destination3" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<select class="clase blockable" name="booking_class3">
</select>
</td>
</tr>

<tr>
<td class="campo_tabla_form_proceso" style="height:30px;">
<input class="carrier blockable" name="carrier4" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="vuelo blockable" name="flight_number4" type="text" size="4" maxlength="4">
</td>
<td class="campo_tabla_form_proceso">
	{+CALENDARIO(nc='5', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input class="fecha blockable" name="departure_date4" type="hidden" size="15" maxlength="10">
</td>
<td class="campo_tabla_form_proceso">
<input class="origen blockable" name="origin4"  type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="destino blockable" name="destination4" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<select class="clase blockable" name="booking_class4">
</select>
</td>
</tr>

<tr>
<td class="campo_tabla_form_proceso" style="height:30px;">
<input class="carrier blockable" name="carrier5" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="vuelo blockable" name="flight_number5" type="text" size="4" maxlength="4">
</td>
<td class="campo_tabla_form_proceso">
	{+CALENDARIO(nc='6', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input class="fecha blockable" name="departure_date5" type="hidden" size="15" maxlength="10">
</td>
<td class="campo_tabla_form_proceso">
<input class="origen blockable" name="origin5" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="destino blockable" name="destination5" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<select class="clase blockable" name="booking_class5">
</select>
</td>
</tr>

<tr>
<td class="campo_tabla_form_proceso" style="height:30px;">
<input class="carrier blockable" name="carrier6" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="vuelo blockable" name="flight_number6" type="text" size="4" maxlength="4">
</td>
<td class="campo_tabla_form_proceso">
	{+CALENDARIO(nc='7', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input class="fecha blockable" name="departure_date6" type="hidden" size="15" maxlength="10">
</td>
<td class="campo_tabla_form_proceso">
<input class="origen blockable" name="origin6" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="destino blockable" name="destination6" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<select class="clase blockable" name="booking_class6">
</select>
</td>
</tr>

<tr>
<td class="campo_tabla_form_proceso" style="height:30px;">
<input class="carrier blockable" name="carrier7" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="vuelo blockable" name="flight_number7" type="text" size="4" maxlength="4">
</td>
<td class="campo_tabla_form_proceso">
	{+CALENDARIO(nc='8', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input class="fecha blockable" name="departure_date7" type="hidden" size="15" maxlength="10">
</td>
<td class="campo_tabla_form_proceso">
<input class="origen blockable" name="origin7" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="destino blockable" name="destination7" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<select class="clase blockable" name="booking_class7">
</select>
</td>
</tr>

<tr>
<td class="campo_tabla_form_proceso" style="height:30px;">
<input class="carrier blockable" name="carrier8" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="vuelo blockable" name="flight_number8" type="text" size="4" maxlength="4">
</td>
<td class="campo_tabla_form_proceso">
	{+CALENDARIO(nc='9', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input class="fecha blockable" name="departure_date8" type="hidden" size="15" maxlength="10">
</td>
<td class="campo_tabla_form_proceso">
<input class="origen blockable" name="origin8" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="destino blockable" name="destination8" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<select class="clase blockable" name="booking_class8">
</select>
</td>
</tr>

<tr>
<td class="campo_tabla_form_proceso" style="height:30px;">
<input class="carrier blockable" name="carrier9" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="vuelo blockable" name="flight_number9" type="text" size="4" maxlength="4">
</td>
<td class="campo_tabla_form_proceso">
	{+CALENDARIO(nc='10', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input class="fecha blockable" name="departure_date9" type="hidden" size="15" maxlength="10">
</td>
<td class="campo_tabla_form_proceso">
<input class="origen blockable" name="origin9" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<input class="destino blockable" name="destination9" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();">
</td>
<td class="campo_tabla_form_proceso">
<select class="clase blockable" name="booking_class9">
</select>
</td>
</tr>

</table>

<br>
<br>


<table class="tabla_form_proceso" width="600px" cellspacing="0" cellpadding="0">
<col>
<col width="20%">
<col width="20%">

<tr><td colspan="3" class="encabezado_tabla_form_proceso">Informaci&oacute;n  Complementaria</td></tr>
<tr>
<td class="dato_tabla_form_proceso" width="30%">&nbsp;</td>
<td class="dato_tabla_form_proceso">Si</td>
<td class="dato_tabla_form_proceso">No</td>
</tr>

<tr>
<td class="dato_tabla_form_proceso">Es posible dividir el Grupo?</td>
<td class="campo_tabla_form_proceso"><input name="flag_divide_group" type="radio" value="1" checked></td>
<td class="campo_tabla_form_proceso"><input name="flag_divide_group" type="radio" value="0"></td>

</tr>

<tr>
<td class="dato_tabla_form_proceso">Acepta Alternativas?</td>
<td class="campo_tabla_form_proceso"><input name="flag_accept_alternative" type="radio" value="1" checked></td>
<td class="campo_tabla_form_proceso"><input name="flag_accept_alternative" type="radio" value="0"></td>

</tr>


<tr>
<td class="dato_tabla_form_proceso">Desea agregar alguna informaci&oacute;n adicional?</td>
<td class="campo_tabla_form_proceso"><input name="flag_special_baggage" type="radio" value="1"></td>
<td class="campo_tabla_form_proceso"><input name="flag_special_baggage" type="radio" value="0" checked></td>

</tr>
<tr>
<td class="dato_tabla_form_proceso">(Observaciones, Equipaje especial)</td>
<td colspan="2"><textarea name="detail_baggage"  style="width:90%; height:80px;" rows="5" cols="60"></textarea>
</td>
</tr>

</table>

<p><input type="submit" name="Submit" value="Enviar" class="button-page float_right"></p>

</form>

</div></div></div></div></div>
<script type="text/javascript">
	setup_compartments(document.getElementById('formulario'));
	setup_products(document.getElementById('formulario'));
	setup_values(document.getElementById('formulario'));

	display_errores(document.getElementById('formulario'));
</script>
