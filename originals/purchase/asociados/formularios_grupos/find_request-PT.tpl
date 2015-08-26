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

	function check_and_submit(form)
		{
		var errores = '';
		
		if (!isInteger(form.id_request.value))
			{
			errores += 'Id solicitud invalido' + "\n";
			}

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
<div id="contenedor_paso1_asociados">
<h1>Pesquisa Solicita&ccedil;&atilde;o de Grupo</h1>

<div class="content_tb_process">
<h2 style="width:770px; margin-left:auto; margin-right:auto">Procurar por n&uacute;mero da aplica&ccedil;&atilde;o</h2>

<div class="box_content_process" style="width:766px; margin-left:auto; margin-right:auto">
<div class="box_int_border_process">
<div class="center_content">

<form id="formulario" method="POST" action='/cgi-bin/asociados/formularios_grupos.cgi' onSubmit="check_and_submit(document.getElementById('formulario')); return false;">

<input type="hidden" name="action">
<input type="hidden" name="form_name" value="find_request">
<input type='hidden' name='iata_cdg' value="{+ASOCIADOS_INFO('iata_cdg')}">
<input type='hidden' name='identifier' value="{+ASOCIADOS_INFO('rut_empresa')}">

<table class="tabla_form_procesoo" width="100%" cellspacing="0"><tbody>
		
		<tr> 
			<td class="dato_tabla_form_proceso" style="border-left:solid 1px #cccccc; border-bottom:solid 1px #cccccc; ">N&uacute;mero da aplica&ccedil;&atilde;o</td>
			<td class="campo_tabla_form_proceso" style="width: 200px; border-right:solid 1px #cccccc; border-bottom:solid 1px #cccccc;"><input type='text' name='id_request' value=""></td>
		</tr></tbody>
		
</table><br />
  		
		<input type="submit" name="Submit" value="Pesquisa" class="button-page float_right">

</form>

</div>
</div>
</div>
</div>
</div>

<script type="text/javascript">
	setup_values(document.forms[0]);

	display_errores(document.getElementById('formulario'));
</script>