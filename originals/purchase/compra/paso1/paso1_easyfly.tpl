<link rel="stylesheet" type="text/css" media="all" href="/css/calendar_lan.css" title="calendar_lan" />

<script src="/js/jscalendar/calendar_new.js" type="text/javascript"></script>
<script src="/js/jscalendar/calendar_setup_new.js" type="text/javascript"></script>
<script src="/js/jscalendar/lang/calendar_lang.js" type="text/javascript"></script>

<script type='text/javascript'>
function get_fecha(id_calendario)
	{
	var dia, ano_mes;

	if (id_calendario == 1)
		{
		dia = document.paso1_easyfly.fecha1_dia.value;
		ano_mes = document.paso1_easyfly.fecha1_anomes.value;
		}
	else
		{
		dia = document.paso1_easyfly.fecha2_dia.value;
		ano_mes = document.paso1_easyfly.fecha2_anomes.value;
		}

	// Campos sin seleccionar
	if (!dia || !ano_mes)
		{
		return (Date.parseDate("{FECHA_MIN}", "%Y-%m-%d"));
		}

	// Fechas invalidas
	var fecha = ano_mes + '-' + dia;
	if (fecha_es_menor(fecha, "{FECHA_MIN}"))
		{
		fecha = "{FECHA_MIN}";
		}
	if (fecha_es_mayor(fecha, "{FECHA_MAX}"))
		{
		fecha = "{FECHA_MAX}";
		}

	return (Date.parseDate(fecha, "%Y-%m-%d"));
	}

function get_date_from_select_1()
	{
	return get_fecha(1);
	}
function get_date_from_select_2()
	{
	return get_fecha(2);
	}

function set_fecha_from_calendar_1(cal)
	{
	var ano = cal.date.print("%Y");
	var mes = cal.date.print("%m");
	var dia = cal.date.print("%d");

	set_fecha_from_calendar(1, ano, mes, dia);
	}

function set_fecha_from_calendar_2(cal)
	{
	var ano = cal.date.print("%Y");
	var mes = cal.date.print("%m");
	var dia = cal.date.print("%d");

	set_fecha_from_calendar(2, ano, mes, dia);
	set_solo_ida(dia);
	}

function set_fecha_from_calendar(num, ano, mes, dia)
	{
	pre_select_by_value(document.paso1_easyfly, 'fecha'+num+'_anomes', ano+'-'+mes);
	pre_select_by_value(document.paso1_easyfly, 'fecha'+num+'_dia', dia);
	}


function precheck_and_submit(f)
	{
	// Eat the return value
	check_and_submit(f);
	}

function check_datos_vuelo(f)
	{
	var errores = '';

	
	from = to = '';
	change_bg_for_id('id_from_city1', 'ok');
	elem = eval("f.elements['from_city1']");
	if (elem && elem.options[elem.selectedIndex].value == '' || elem.options[elem.selectedIndex].value == 'otros_destinos')
		{
		change_bg_for_id('id_from_city1', 'dato-erroneo');
		errores += "{_ERROR_CIUDAD_DE_ORIGEN_FALTANTE_JS}\n";
		}
	else
		{
		from = elem.options[elem.selectedIndex].value;
		}
	change_bg_for_id('id_to_city1', 'ok');
	elem = eval("f.elements['to_city1']");
	if (elem && elem.options[elem.selectedIndex].value == '' || elem.options[elem.selectedIndex].value == 'otros_destinos')
		{
		change_bg_for_id('id_to_city1', 'dato-erroneo');
		errores += "{_ERROR_CIUDAD_DE_DESTINO_FALTANTE_JS}\n";
		}
	else
		{
		to = elem.options[elem.selectedIndex].value;
		}

	if (from != '' && to != '' && from == to)
		{
		change_bg_for_id('id_to_city1', 'dato-erroneo');
		errores += "{_ERROR_CIUDAD_DE_DESTINO_IGUAL_A_ORIGEN_JS}\n";
		}
	change_bg_for_id('id_fecha1', 'ok');
	elem = eval("f.elements['fecha1_dia']");
	elem2 = eval("f.elements['fecha1_anomes']");
	fecha_segmento1 = elem2.options[elem2.selectedIndex].value + "-" + elem.options[elem.selectedIndex].value;
	if ((elem && elem.selectedIndex < 1) || (elem2 && elem2.selectedIndex < 1))
		{
		change_bg_for_id('id_fecha1', 'dato-erroneo');
		errores += "{_ERROR_FECHA_IDA_FALTANTE_JS}\n";
		}
	else if (!fecha_valida_iso(fecha_segmento1))
		{
		change_bg_for_id('id_fecha1','dato-erroneo');
		errores += "{_ERROR_FECHA_IDA_INVALIDA_JS}\n";
		}
	else
		{
		if (fecha_segmento1 < '{FECHA_MIN}')
			{
			change_bg_for_id('id_fecha1','dato-erroneo');
			errores += "{_ERROR_FECHA_IDA_PASADO_JS}\n";
			}
		if (fecha_segmento1 > '{FECHA_MAX}')
			{
			change_bg_for_id('id_fecha1','dato-erroneo');
			errores += "{_ERROR_FECHA_IDA_FUTURO_JS}\n";
			}
		}

	change_bg_for_id('id_fecha2', 'ok');
	elem = eval("f.elements['fecha2_dia']");
	elem2 = eval("f.elements['fecha2_anomes']");
	if (elem.selectedIndex > 0 && elem2.selectedIndex > 0)
		{
		fecha_segmento2 = elem2.options[elem2.selectedIndex].value + "-" + elem.options[elem.selectedIndex].value;

		if (fecha_segmento1 > fecha_segmento2)
			{
			change_bg_for_id('id_fecha2', 'dato-erroneo');
			errores += "{_ERROR_FECHA_REGRESO_ANTERIOR_IDA_JS}\n";
			}
		if (fecha_segmento2 < '{FECHA_MIN}')
			{
			change_bg_for_id('id_fecha2','dato-erroneo');
			errores += "{_ERROR_FECHA_REGRESO_PASADO_JS}\n";
			}
		if (fecha_segmento2 > '{FECHA_MAX}')
			{
			change_bg_for_id('id_fecha2','dato-erroneo');
			errores += "{_ERROR_FECHA_REGRESO_FUTURO_JS}\n";
			}
		if (!fecha_valida_iso(fecha_segmento2))
			{
			change_bg_for_id('id_fecha2','dato-erroneo');
			errores += "{_ERROR_FECHA_REGRESO_INVALIDA_JS}\n";
			}
		}
	if (((elem && elem.selectedIndex >= 1) || (elem2 && elem2.selectedIndex >= 1))
		&& ((elem && elem.selectedIndex < 1) || (elem2 && elem2.selectedIndex < 1)))
		{
		change_bg_for_id('id_fecha2', 'dato-erroneo');
		errores += "{_ERROR_FECHA_REGRESO_FALTANTE_JS}\n";
		}

	return errores;
	}
	



var checkbox_ida = new Array();
var checkbox_regreso = new Array();

function check_and_submit(f)
	{
	var errores = '';
	var contador_ida = 0;
	var contador_regreso = 0;
	var titular_invalido = 0;
	var titulares_ida = new Array();
	var titulares_regreso = new Array();
	var titular;
	
	
	for (var i in checkbox_ida)
		{
		if (typeof(checkbox_ida[i]) != 'undefined')
			{
			if (typeof(checkbox_ida[i].id_cupon) != 'undefined')
				{
				contador_ida++;
				titular = get_titular(checkbox_ida[i].id_cupon);
				if (!titular)
					{
					titular_invalido = 1;
					}
				else if (typeof(titulares_ida[titular]) != 'undefined')
					{
					errores+= "{_ERROR_TITULAR_REPETIDO_IDA_JS}\n";
					}
				else
					{
					titulares_ida[titular] = 1;
					}
				}
			}

		}
	if ('{SOLO_IDA}' == '0')
		{
		for (var i in checkbox_regreso)
			{
			if (typeof(checkbox_regreso[i]) != 'undefined')
				{
				if (typeof(checkbox_regreso[i].id_cupon) != 'undefined')
					{	

					titular = get_titular(checkbox_regreso[i].id_cupon);
					if (!titular)
						{
						titular_invalido = 1;
						}
					else if (typeof(titulares_ida[titular]) == 'undefined' )
						{
						errores+= "{_ERROR_TITULAR_REGRESO_NO_COINCIDE}\n";
						}
					else if (typeof(titulares_regreso[titular]) != 'undefined')
						{
						errores+= "{_ERROR_TITULAR_REPETIDO_REGRESO_JS}\n";
						}
					else
						{
						titulares_regreso[titular] = 1;
						}
					contador_regreso++;
					}
				}

			}
		if  (contador_ida != contador_regreso)
			{
			errores += "{_ERROR_NO_COINCIDE_NUMERO_CUPONES_IDA_REGRESO_JS}\n";
			}

		}

	if (contador_ida == 0)
		{
		errores += "{_ERROR_CUPON_IDA_NO_SELECCIONADO_JS}\n";
		}
	else if (titular_invalido == 1)
		{
		errores += "{_ERROR_TITULAR_NO_SELECCIONADO_JS}\n";
		}

	elem = f.elements['nadults'];
	elem.value = contador_ida;
	if (contador_ida > 9)
		{
		errores += '{_ERROR_DEMASIADOS_PASAJEROS_JS}' + "\n";
		}

	if (errores.length > 0)
		{
		alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
		return false;
		}


	f.action = '/cgi-bin/compra/paso2.cgi';
	processing_layer('externo');
	f.submit();

	return;	
	}

function get_titular(id_cupon)
	{
	var titular = document.getElementById('titular_' + id_cupon);
	if (titular.value == '')
		{
		return false;
		}
	return titular.value.split('_FOID_')[1];
	}


function checkbox_marcados(id_checkbox, ida_o_regreso, id_cupon)
	{
	var key_array = "'" + id_checkbox  + "'";
	var checkbox = document.getElementById(id_checkbox);
	if (ida_o_regreso == 'ida')
		{
		if (checkbox.checked)
			{
			checkbox_ida[key_array] = new Object();
			checkbox_ida[key_array].id_cupon = id_cupon;
			}
		else
			{	
			delete(checkbox_ida[key_array]);
			}
		}
	else
		{
		if (checkbox.checked)
			{
			checkbox_regreso[key_array] = new Object();
			checkbox_regreso[key_array].id_cupon = id_cupon;
			}
		else
			{	
			delete(checkbox_regreso[key_array]);
			}
		}
	}

function completa_campos_hidden(f)
	{
	var x;
	if (f.elements['fecha2_dia'].selectedIndex > 0 && f.elements['fecha2_anomes'].selectedIndex > 0)
		{
		x = f.elements['to_city1'];
		f.elements['from_city2'].value = x.options[x.selectedIndex].value;
		x = f.elements['from_city1'];
		f.elements['to_city2'].value = x.options[x.selectedIndex].value;
		f.elements['num_segmentos_interfaz'].value = '2';
		}
	else
		{
		f.elements['from_city2'].value = '';
		f.elements['to_city2'].value = '';
		f.elements['num_segmentos_interfaz'].value = '1';
		}
	}

function fecha_es_mayor(fecha1, fecha2)
	{
	var newfecha1 = fecha1.replace(/-/g, "");
	var newfecha2 = fecha2.replace(/-/g, "");
	if (newfecha1 > newfecha2)
		{
		return(true);
		}
	return(false);
	}

function fecha_es_menor(fecha1, fecha2)
	{
	var newfecha1 = fecha1.replace(/-/g, "");
	var newfecha2 = fecha2.replace(/-/g, "");
	if (newfecha1 < newfecha2)
		{
		return(true);
		}
	return(false);
	}

function set_dates()
	{
	// 	calendario ida
	today = new Date();
	milisecs = Date.parse(today);
	milisecs += 86400000 * {_ANTICIPACION_RECOMENDADA_IDA}; // Este 2o numero es la cantidad de dias en el futuro que queremos la fecha preseleccionada.
	plus = new Date(milisecs);
	day = plus.getDate();
	if (day < 10)
		{
		day = '0'+day;
		}
	month = plus.getMonth();
	month += 1;
	if (month < 10)
		{
		month = '0'+month;
		}
	year = plus.getFullYear();
	anomes = year + '-' + month;
	if ('{FECHA1_DIA}' == '')
		{
		document.paso1_easyfly.fecha1_dia.value = day;
		}
	else
		{
		document.paso1_easyfly.fecha1_dia.value = '{FECHA1_DIA}';
		}
	if ('{FECHA1_ANOMES}' == '')
		{
		document.paso1_easyfly.fecha1_anomes.value = anomes;
		}
	else
		{
		document.paso1_easyfly.fecha1_anomes.value = '{FECHA1_ANOMES}';
		}
	// calendario vuelta
	document.paso1_easyfly.fecha2_dia.value = '{FECHA2_DIA}';
	document.paso1_easyfly.fecha2_anomes.value = '{FECHA2_ANOMES}';
	
	}


function set_solo_ida(value)
	{
	if (value == '00')
		{
		document.paso1_easyfly.fecha2_anomes.value = '';
		document.paso1_easyfly.ida_vuelta.value = 'solo_ida';
		}
	else if(value == '')
		{
		document.paso1_easyfly.fecha2_dia.value = '00';
		document.paso1_easyfly.ida_vuelta.value = 'solo_ida';
		}
	else
		{
		document.paso1_easyfly.ida_vuelta.value = 'ida_vuelta';
		}
		
	}

function buscar(f)
	{
	var errores = check_datos_vuelo(f);
	
	if (errores.length > 0)
		{
		alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
		return false;
		}
	completa_campos_hidden(f);
	
	f.action = '/cgi-bin/compra/paso1_easyfly.cgi';
	f.submit();

	}
	
</script>
<h1>{_TITULO_USO_CUPONES}</h1>
{_MSG_CANJE_EASYFLY_CC}<br>
<p>{_MSG_CANJE_CUPONES}</p>

<p class=error>{ERROR}</p>
<form action='#' method='GET' name='paso1_easyfly'>
	<input type='hidden' name='session_id' value='{SESSION_ID}'>
	<input type='hidden' name='rand_check' value='{RAND_CHECK}'>
	<input type='hidden' name='tipo_paso1' value='{TIPO_PASO1}'>
	<input type='hidden' name='otras_ciudades' value=''>
	<input type='hidden' name='num_segmentos_interfaz' value='{NUM_SEGMENTOS_INTERFAZ}'>
	<input type='hidden' name='from_city2' value='{FROM_CITY2}'>
	<input type='hidden' name='to_city2' value='{TO_CITY2}'>
	<input type='hidden' name='ida_vuelta' value='{IDA_VUELTA}'>
	<input type="hidden" name="accion" value="buscar">
	
	<input type="hidden" name="nadults" id="nadults" value="1">
	<input type="hidden" name="nchildren" value="0">
	<input type="hidden" name="ninfants" value="0">

	<h4>{_PASO1_TITULO_SELECCIONA_ORIGEN_DESTINO}</h4>
	<table class=table cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<th>{_LABEL_DESDE}</th>
			<th>{_LABEL_HACIA}</th>
			<th>{_LABEL_FECHA_IDA}</th>
			<th>{_LABEL_FECHA_REGRESO}</th>
		</tr>
		<tr>
			<td id='id_from_city1'>
				<select name='from_city1' class=combo-box>
					<option value=''>{_LABEL_SELECCIONE}</option>
					{LISTA_ORIGENES}
				</select>
			</td>
			
			<td id='id_to_city1'>
				<select name='to_city1' onChange='acciones_combo_origen_destino(this.form,this,1,"destino")' class=combo-box>
					<option value=''>{_LABEL_SELECCIONE}</option>
					{LISTA_DESTINOS}
				</select>
			</td>
			<td id='id_fecha1'>
				<select name='fecha1_dia' class=combo-box>
					<option value='00'>&nbsp;</option>
					{DIAS}
				</select>
				<select name='fecha1_anomes' class=combo-box>
					<option value=''>&nbsp;</option>
					{MESES_ANO}
				</select>
				<img width='25' height='20' name='calendario1' src='/images/html/ico_calendario.gif' alt='{_PALABRA_CALENDARIO}' id='img_calendario1' style='cursor: pointer; vertical-align:bottom;'>
			</td>
			<td id='id_fecha2'>
				<select name='fecha2_dia' class=combo-box onchange="set_solo_ida(this.value);">
					<option value='00' >{_PALABRA_NO}</option>
					{DIAS}
				</select>
				<select name='fecha2_anomes' class=combo-box onchange="set_solo_ida(this.value);">
					<option value=''>{_LABEL_SOLO_IDA}</option>
					{MESES_ANO}
				</select>
				<img width='25' height='20' name='calendario2' src='/images/html/ico_calendario.gif' alt='{_PALABRA_CALENDARIO}' id='img_calendario2' style='cursor: pointer; vertical-align:bottom;'>
			</td>
		</tr>
<!--		<tr>
		<td colspan="2" class="right" style="width: 50%;">&nbsp;</td>
		<td colspan="3" class="right" style="width: 50%;">{_LABEL_FLEXIBLE}
			<input name="flex" type="checkbox" id="flex" value="1" /></td>
		</tr>
-->
		<tr>
			<td colspan=4 align='right'><input type='button' class=boton-destacado id='boton_buscar' value='{_LABEL_BUSCAR}' onclick="javascript:buscar(this.form)"></td>
		</tr>
	</table>
{MENSAJE_ADVERTENCIA}

{CUPONERAS_ORIGEN}

{CUPONERAS_DESTINO}


{*BOTON_CONTINUAR}
	<table cellspacing="0" cellpadding="0" id=barra-continuar>
		<tr>
			<td class=first>{_PASO1_PASO_SIGUIENTE}</td>
			<td class=last>&nbsp;&nbsp;</td>
			<td><input type='button' class=boton-destacado id='submitButton' value='{_LABEL_CONTINUAR}' name="submitButton" onclick="javascript:check_and_submit(this.form)" ></td>
		</tr>
	</table>
{/BOTON_CONTINUAR}

</form>
<script type='text/javascript'>

function advierte_errores_validacion_posteriores(f)
	{
	var errores;

	errores = '';

	{INSTRUCCIONES_ERROR}

	if (errores.length > 0)
		{
		alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
		return false;
		}
	}

	// Setup
	document.paso1_easyfly.action = 'javascript:precheck_and_submit(document.paso1_easyfly);';
	advierte_errores_validacion_posteriores(document.paso1_easyfly);
	set_dates();

	// Inicializo los calendarios
    Calendar.setup({
		button: "img_calendario1",
		minDate: "{FECHA_MIN}",
		maxDate: "{FECHA_MAX}",
		onUpdate: set_fecha_from_calendar_1,
		dateFunc: get_date_from_select_1,
		yearButtons: false,
		id: 1
	});

	Calendar.setup({
		button: "img_calendario2",
		minDate: "{FECHA_MIN}",
		maxDate: "{FECHA_MAX}",
		onUpdate: set_fecha_from_calendar_2,
		dateFunc: get_date_from_select_2,
		yearButtons: false,
		id: 2
	});
</script>
