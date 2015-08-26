<!--
AUTH: ASOCIADOS
-->

<script type="text/javascript">
	var previous_data_json = '{PREVIOUS_DATA}';
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

	function check_and_submit_1(form)
		{
		var errores = '';
		
		if (!isInteger(form.id_quotation.value))
			{
			errores += 'Id cotizacion invalido' + "\n";
			}

		if (errores)
			{
			alert(errores);
			}
		else
			{
			form.action.value = 'send_form';
			form.form_name.value = 'find_quotation_by_id';
			form.submit();
			}
		}
	function check_and_submit_2(form)
		{
		var errores = '';

		if (form.origin.value.length < 3)
			{
			errores += 'Origen invalido' + "\n";
			}
		if (form.destination.value.length < 3)
			{
			errores += 'Destino invalido' + "\n";
			}

		form.departure_date.value = form.fecha1_dia.value + '-' + form.fecha1_anomes.value.substring(5, 7) + '-' + form.fecha1_anomes.value.substring(0,4);

		if (errores)
			{
			alert(errores);
			}
		else
			{
			form.action.value = 'send_form';
			form.form_name.value = 'find_quotation_by_od_date';
			form.submit();
			}
		}
</script>

<h1>Buscar Cotizaci&oacute;n de Grupo</h1>

<form id="formulario1" method="POST" action='/cgi-bin/asociados/formularios_grupos.cgi' onSubmit="return false;">

<input type="hidden" name="action">
<input type="hidden" name="form_name" value="find_quotation_by_id">
<input type='hidden' name='iata_cdg' value="{+ASOCIADOS_INFO('iata_cdg')}">
<input type='hidden' name='identifier' value="{+ASOCIADOS_INFO('rut_empresa')}">

<h4>Numero Cotizaci&oacute;n</h4>

<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
	<col width="90%">
	<col width="10%">
	<tr>
		<th>N&uacute;mero Cotizaci&oacute;n</th>
		<th></th>
	</tr>

	<tr>
  		<td><input type='text' name='id_quotation' value=""></td>
		<td><input type="submit" name="Submit" value="Buscar" class="boton-destacado" onClick="check_and_submit_1(document.getElementById('formulario1'));"></td>
	</tr>
</table>
</form>

<br>
<br>

<form id="formulario2" method="POST" action='/cgi-bin/asociados/formularios_grupos.cgi' onSubmit="return false;">

<input type="hidden" name="action">
<input type="hidden" name="form_name" value="find_quotation_by_od_date">
<input type='hidden' name='iata_cdg' value="{+ASOCIADOS_INFO('iata_cdg')}">
<input type='hidden' name='identifier' value="{+ASOCIADOS_INFO('rut_empresa')}">

<h4>Origen Destino</h4> 

<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
	<col width="30%">
	<col width="30%">
	<col width="30%">
		
	<tr>
		<th>Origen</th>
		<th>Destino</th>
		<th>Fecha Salida</th>
		<th></th>
	</tr>
	<tr>
		<td>        
			<input name="origin" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
		</td>
        <td>
        	<input name="destination" type="text" size="10" maxlength="3" onChange="this.value = this.value.toUpperCase();">
        </td>
        <td>
			{+CALENDARIO(nc='1', fecha_iso_inicio='{FECHA_DESDE}')}
            <input name="departure_date" type="hidden">
        </td>
		<td><input type="submit" name="Submit" value="Buscar" class="boton-destacado" onClick="check_and_submit_2(document.getElementById('formulario2'));"></td>
	</tr>

</table>
</form>

<br>
<br>

<script type="text/javascript">
	setup_values(document.getElementById('formulario1'));
	setup_values(document.getElementById('formulario2'));

	display_errores(document.getElementById('formulario1'));
	display_errores(document.getElementById('formulario2'));
</script>
