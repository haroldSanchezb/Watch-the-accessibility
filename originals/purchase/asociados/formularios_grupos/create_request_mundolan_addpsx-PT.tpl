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

		// Pax sea >= 1
		if (!isInteger(form.total_pax.value) || !(form.total_pax.value >= 1))
			{
			errores += 'La cantidad de pasajeros debe ser mayor o igual a 1' + "\n";
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

		// PNR debe contener solo numeros o letras
		if (!isAlphaDigit(form.pnr_host.value))
			{
			errores += 'El PNR no es valido' + "\n";
			}

		// Email valido
		if (!form.email_executive.value || !valida_email(form.email_executive.value))
			{
			errores += 'El email del agente no es valido' + "\n";
			}

		// Detalles Obligatorios
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

<h1>Solicita&ccedil;&atilde;o de Grupo (ADD-PAX)</h1>

<form id="formulario" method="POST" action='/cgi-bin/asociados/formularios_grupos.cgi' onSubmit="check_and_submit(document.getElementById('formulario')); return false;">

<input type="hidden" name="action">
<input type="hidden" name="form_name" value="create_request_mundolan_addpsx">
<input type="hidden" name="id_request" value="">

<h4>Informa&ccedil;&atilde;o da Agencia</h4>

<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>

<tr>
<td class="sub-titulo">Nome da Agencia</td>
<td>{+ASOCIADOS_INFO('nombre_empresa')} 
<input type='hidden' name='name_agency' value="{+ASOCIADOS_INFO('nombre_empresa')}">
<input type='hidden' name='country' value="{+ASOCIADOS_INFO('country_iso')}">
</td>
</tr>

<tr>
<td class="sub-titulo">IATA Agencia </td>
<td>{+ASOCIADOS_INFO('iata_rut')}
<input type='hidden' name='iata_cdg' value="{+ASOCIADOS_INFO('iata_cdg')}">
<input type='hidden' name='identifier' value="{+ASOCIADOS_INFO('rut_empresa')}">
</td>
</tr>
</table>
<br>
<br>

<h4>Agente de Viagem</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>

<tr>
<td class="sub-titulo">Agente</td>
<td>{+ASOCIADOS_INFO('nombre_agente')} 
<input type='hidden' name='name_executive' value="{+ASOCIADOS_INFO('nombre_agente')}">
<input type='hidden' name='rut_executive' value="{+ASOCIADOS_INFO('rut_agente')}">
</td>
</tr>
<tr>
<td class="sub-titulo">E-mail</td>
<td><input name="email_executive" type="text" size="30" maxlength="250" value="{+ASOCIADOS_INFO('email')}"></td>
</tr>
</table>
<br>
<br>

<h4>Tipo de Solicita&ccedil;&atilde;o</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>

<tr>
  <td class="sub-titulo">Segmento</td>
<td>
<select name="segment" class="input-text" onChange="update_reasons(this.form);">
</select></td>
</tr>
<tr>
  <td class="sub-titulo">Motiva&ccedil;&atilde;o da Viagem </td>
<td>
<select name="travel_reason" class="input-text" onChange="update_products(this.form);">
</select></td>
</tr>
<tr>
  <td class="sub-titulo">Produto</td>
<td>
<select name="product" class="input-text">
</select></td>
</tr>
<tr>
  <td class="sub-titulo">Empresa</td>
<td><input name="company" type="text" size="30" maxlength="250"></td>
</tr>
</table>
<br>
<br>

<h4>Informa&ccedil;&atilde;o do Grupo</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>

<tr>
<td class="sub-titulo">Nome do Grupo</td>
<td><input name="group_name" type="text" size="30" maxlength="50">
  (Somente letras e sem espa&ccedil;os. Por exemplo, ColegioViajeMiami)</td>
</tr>


<tr>
<td class="sub-titulo">Tipo</td>
<td>
<select name="type_pax" class="input-text">
<option value="" selected></option>
{TYPE_PAX_OPTIONS}
</select></td>
</tr>

<tr>
<td class="sub-titulo">Cabina</td>
<td>
<select name="compartment" onChange="update_booking_classes(this.form);">
</select></td>
</tr>

<tr>
<td class="sub-titulo"><span id="result_box"><span title="PNR Amadeus Original">Original PNR</span></span></td>
<td>
	<input name="pnr_host" type="text" size="6" maxlength="6" onChange="this.value = this.value.toUpperCase();" readonly>
</tr>
<tr>
<td class="sub-titulo"><span id="result_box2"><span title="Fecha Creaci&oacute;n PNR">PNR Data da Cria&ccedil;&atilde;o</span></span></td>
<td><input name="creation_date_pnr" type="text" size="10" maxlength="10" readonly></td>
</tr>

<tr>
<td class="sub-titulo">Paxs ADT</td>
<td><input name="pax_full_fare" type="text" size="5" maxlength="3" value="0"></td>
</tr>
<tr>
  <td class="sub-titulo">Paxs CHD</td>
<td><input name="pax_child" type="text" size="5" maxlength="3" value="0"></td>
</tr>
<tr>
  <td class="sub-titulo">Quantidade de Passageiros</td>
<td><input name="total_pax" type="text" size="5" maxlength="3" value="0"> 
(Adultos e Childs)</td>
</tr>

<tr>
  <td class="sub-titulo">Tarifa Solicitada</td>
<td><input name="fare_neta" type="text" size="30" maxlength="250" readonly="read-only"></td>
</tr>
<!--<tr>
<td class="sub-titulo">Fare Basis</td>
<td><input name="fare_basis" type="text" size="10" maxlength="10">
</td>
</tr>-->
</table>

<br>
<br>

<h4>Itiner&aacute;rio</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="14%">
<col width="14%">
<col width="30%">
<col width="14%">
<col width="14%">
<col width="14%">
<tr>
  <th>Cia A&eacute;rea</th>
  <th>Voo</th>
  <th>Data de Sa&iacute;da </th>
  <th>Origem</th>
  <th>Destino</th>
  <th>Classe de Servi&ccedil;o</th>
</tr>

<tr>
<td>
<input name="carrier0" class="carrier" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="flight_number0" class="vuelo" type="text" size="10" maxlength="4"></td>
<td>
	{+CALENDARIO(nc='1', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date0" class="fecha" type="hidden" size="15" maxlength="10"></td>
<td>
<input name="origin0" class="origen" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="destination0" class="destino" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td><select name="booking_class0" class="clase">
</select></td>
</tr>

<tr>
<td>
<input name="carrier1" class="carrier" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="flight_number1" class="vuelo" type="text" size="10" maxlength="4"></td>
<td>
	{+CALENDARIO(nc='2', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date1" class="fecha" type="hidden" size="15" maxlength="10"></td>
<td>
<input name="origin1" class="origen" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="destination1" class="destino" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td><select name="booking_class1" class="clase">
</select></td>
</tr>

<tr>
<td>
<input name="carrier2" class="carrier" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="flight_number2" class="vuelo" type="text" size="10" maxlength="4"></td>
<td>
	{+CALENDARIO(nc='3', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date2" class="fecha" type="hidden" size="15" maxlength="10"></td>
<td>
<input name="origin2" class="origen" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="destination2" class="destino" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<select name="booking_class2" class="clase">
</select></td>
</tr>

<tr>
<td>
<input name="carrier3" class="carrier" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="flight_number3" class="vuelo" type="text" size="10" maxlength="4"></td>
<td>
	{+CALENDARIO(nc='4', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date3" class="fecha" type="hidden" size="15" maxlength="10"></td>
<td>
<input name="origin3" class="origen" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="destination3" class="destino" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<select name="booking_class3" class="clase">
</select></td>
</tr>

<tr>
<td>
<input name="carrier4" class="carrier" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="flight_number4" class="vuelo" type="text" size="10" maxlength="4"></td>
<td>
	{+CALENDARIO(nc='5', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date4" class="fecha" type="hidden" size="15" maxlength="10"></td>
<td>
<input name="origin4" class="origen" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="destination4" class="destino" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<select name="booking_class4" class="clase">
</select></td>
</tr>

<tr>
<td>
<input name="carrier5" class="carrier" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="flight_number5" class="vuelo" type="text" size="10" maxlength="4"></td>
<td>
	{+CALENDARIO(nc='6', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date5" class="fecha" type="hidden" size="15" maxlength="10"></td>
<td>
<input name="origin5" class="origen" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="destination5" class="destino" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<select name="booking_class5" class="clase">
</select></td>
</tr>

<tr>
<td>
<input name="carrier6" class="carrier" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="flight_number6" class="vuelo" type="text" size="10" maxlength="4"></td>
<td>
	{+CALENDARIO(nc='7', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date6" class="fecha" type="hidden" size="15" maxlength="10"></td>
<td>
<input name="origin6" class="origen" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="destination6" class="destino" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<select name="booking_class6" class="clase">
</select></td>
</tr>

<tr>
<td>
<input name="carrier7" class="carrier" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="flight_number7" class="vuelo" type="text" size="10" maxlength="4"></td>
<td>
	{+CALENDARIO(nc='8', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date7" class="fecha" type="hidden" size="15" maxlength="10"></td>
<td>
<input name="origin7" class="origen" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="destination7" class="destino" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<select name="booking_class7" class="clase">
</select></td>
</tr>

<tr>
<td>
<input name="carrier8" class="carrier" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="flight_number8" class="vuelo" type="text" size="10" maxlength="4"></td>
<td>
	{+CALENDARIO(nc='9', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date8" class="fecha" type="hidden" size="15" maxlength="10"></td>
<td>
<input name="origin8" class="origen" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="destination8" class="destino" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<select name="booking_class8" class="clase">
</select></td>
</tr>

<tr>
<td>
<input name="carrier9" class="carrier" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="flight_number9" class="vuelo" type="text" size="10" maxlength="4"></td>
<td>
	{+CALENDARIO(nc='10', fecha_iso_desde='{FECHA_DESDE}', fecha_iso_hasta='{FECHA_HASTA}', fecha_iso_inicio='{FECHA_DESDE}')}
	<input name="departure_date9" class="fecha" type="hidden" size="15" maxlength="10"></td>
<td>
<input name="origin9" class="origen" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<input name="destination9" class="destino" type="text" size="3" maxlength="3" onChange="this.value = this.value.toUpperCase();"></td>
<td>
<select name="booking_class9" class="clase">
</select></td>
</tr>
</table>

<br>
<br>

<h4>Informa&ccedil;&otilde;es Adicionais</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col>
<col width="20%">
<col width="20%">


<tr>
<th>&nbsp;</th>
<th>Sim</th>
<th>N&atilde;o</th>
</tr>

<tr>
  <td class="sub-titulo">&Eacute; poss&iacute;vel dividir o grupo?</td>
<td><input name="flag_divide_group" type="radio" value="1" checked></td>
<td><input name="flag_divide_group" type="radio" value="0"></td>
</tr>

<tr>
  <td class="sub-titulo">Aceita Alternativas?</td>
<td><input name="flag_accept_alternative" type="radio" value="1" checked></td>
<td><input name="flag_accept_alternative" type="radio" value="0"></td>
</tr>

<tr>
  <td>&nbsp;</td>
</tr>

<tr>
  <td class="sub-titulo">O Grupo transporta bagagem/equipamento especial? </td>
<td><input name="flag_special_baggage" type="radio" value="1"></td>
<td><input name="flag_special_baggage" type="radio" value="0" checked></td>
</tr>
<tr>
  <td class="sub-titulo">Qual?</td>
<td><input name="detail_baggage" type="text" size="30" maxlength="250"></td>
</tr>
</table>

<p><input type="submit" name="Submit" value="Enviar" class="boton-destacado flotar_der"></p>

</form>

<script type="text/javascript">
	setup_compartments(document.getElementById('formulario'));
	setup_products(document.getElementById('formulario'));
	setup_values(document.getElementById('formulario'));

	display_errores(document.getElementById('formulario'));
</script>
