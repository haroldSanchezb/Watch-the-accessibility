<link rel="stylesheet" type="text/css" media="all" href="/css/calendar_lan.css" title="calendar_lan">

<!-- Google Website Optimizer Tracking Script -->
<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['gwo._setAccount', 'UA-30615634-1']);  _gaq.push(['gwo._trackPageview', '/2295176508/goal']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script>
<!-- End of Google Website Optimizer Tracking Script -->

<script src="/js/jscalendar/calendar_new.js" type="text/javascript"></script>
<script src="/js/jscalendar/calendar_setup_new.js" type="text/javascript"></script>
<script src="/js/jscalendar/lang/calendar_lang.js" type="text/javascript"></script>





<script type='text/javascript'>
function get_fecha(id_calendario)
	{
	var dia, ano_mes;

	if (id_calendario == 1)
		{
		dia = document.paso1.fecha1_dia.value;
		ano_mes = document.paso1.fecha1_anomes.value;
		}
	else
		{
		dia = document.paso1.fecha2_dia.value;
		ano_mes = document.paso1.fecha2_anomes.value;
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
	}

function set_fecha_from_calendar(num, ano, mes, dia)
	{
	pre_select_by_value(document.paso1, 'fecha'+num+'_anomes', ano+'-'+mes);
	pre_select_by_value(document.paso1, 'fecha'+num+'_dia', dia);
	}

function check_select_for_otros_destinos(campo, num, tipo)
	{
	var w;
	if (campo.options[campo.selectedIndex].value == 'otros_destinos')
		{
		w = window.open("otros_destinos.cgi?idioma={IDIOMA};num_segmentos={NUM_SEGMENTOS_INTERFAZ};tipo=" + tipo + ";num=" + num, "otros_destinos","width=300,height=200,scrollbars=yes,resizable=yes");
		w.focus();
		return true;
		}
	return false;
	}

function precheck_and_submit(f)
	{
	// Eat the return value
	check_and_submit(f);
	}

function check_and_submit(f)
	{
	var errores, i, elem, elem2, fecha_segmento1, fecha_segmento2, from, to, nadults, ninfants, nchildren;

	errores = '';
	from = to = '';
	change_bg_for_id('id_nadults','ok');
	change_bg_for_id('id_nchildren','ok');
	change_bg_for_id('id_ninfants','ok');

	elem = f.elements['nadults'];
	nadults = 0;
	if (elem)
		{
		nadults = parseInt(elem.options[elem.selectedIndex].value, 10);
		}
	elem = f.elements['nchildren'];
	nchildren = 0;
	if (elem)
		{
		nchildren = parseInt(elem.options[elem.selectedIndex].value, 10);
		}
	elem = f.elements['ninfants'];
	ninfants = 0;
	if (elem)
		{
		ninfants = parseInt(elem.options[elem.selectedIndex].value, 10);
		}

	if (nadults < ninfants)
		{
		change_bg_for_id('id_nadults','dato-erroneo');
		change_bg_for_id('id_ninfants','dato-erroneo');
		errores += '{_ERROR_MAS_INFANTES_QUE_ADULTOS_JS}' + "\n";
		}

	if (nadults + ninfants + nchildren > 7)
		{
		change_bg_for_id('id_nadults', 'dato-erroneo')
		change_bg_for_id('id_nchildren', 'dato-erroneo')
		change_bg_for_id('id_ninfants', 'dato-erroneo')
		errores += '{_ERROR_DEMASIADOS_PASAJEROS_JS}' + "\n";
		}

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
	{+TEMPLATE('/sitio_personas/componentes/transacciones/alert_caja_compra_od_invalido.tpl')}
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

	if (errores.length > 0)
		{
		if (typeof ClickTaleRegisterFormSubmit == 'function') {
			ClickTaleRegisterFormSubmit(f); 
			ClickTaleTag("form_submit_fail");
		}
		alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
		return false;
		}
	completa_campos_hidden(f);

//	f.action = '/cgi-bin/compra/paso2.cgi';
	processing_layer('externo');
	if (typeof ClickTaleRegisterFormSubmit == 'function') {
		ClickTaleRegisterFormSubmit(f); 
		ClickTaleTag("form_submit_success");
	}
	f.submit();
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
	if (!document.paso1.fecha1_dia.value)
		{
		document.paso1.fecha1_dia.value = day;
		}
	if (!document.paso1.fecha1_anomes.value)
		{
		document.paso1.fecha1_anomes.value = anomes;
		}
	
	// calendario vuelta
	milisecs = Date.parse(today);
	milisecs += 86400000 * {_ANTICIPACION_RECOMENDADA_VUELTA}; // Este 2o numero es la cantidad de dias en el futuro que queremos la fecha preseleccionada.
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
	if (!document.paso1.fecha2_dia.value || (document.paso1.fecha2_dia.value == '00' && 'SELECTED' != '{SOLO_IDA}'))
		{
		document.paso1.fecha2_dia.value = day;
		}
	if (!document.paso1.fecha2_anomes.value && 'SELECTED' != '{SOLO_IDA}')
		{
		document.paso1.fecha2_anomes.value = anomes;
		}
	}

function set_city()
	{
	if (!document.paso1.from_city1.value)
		{
		//		document.paso1.from_city1.value = 'SCL';
		}
	}
	
function set_solo_ida(value)
	{
	if (value == '00')
		{
		document.paso1.fecha2_anomes.value = '';
		}
	if (value == '')
		{
		document.paso1.fecha2_dia.value = '00';
		}
	}

</script>
<p class=error>{ERROR}</p>
<h1>{_TITULO_PASO_1}</h1>
<p>{_BAJADA_PASO_1}</p>
<div id="content_tb_process">
    <form action='/cgi-bin/compra/paso2.cgi' method='GET' name='paso1'>
        <input type='hidden' name='session_id' value='{SESSION_ID}'>
        <input type='hidden' name='rand_check' value='{RAND_CHECK}'>
        <input type='hidden' name='otras_ciudades' value='{OTRAS_CIUDADES}'>
        <input type='hidden' name='num_segmentos_interfaz' value='2'>
        <input type='hidden' name='from_city2' value='{FROM_CITY2}'>
        <input type='hidden' name='to_city2' value='{TO_CITY2}'>
        <input type='hidden' name='tipo_paso1' value='normal'>
        <h2>{_MSG_DETALLES_PASO_1}</h2>
        <div id="box_content_process">
            <div id="box_int_border_process">
                <div class="interior_caja_proceso">
                    <table cellpadding="0" cellspacing="0" width="100%" class="table">
                        <col width="25%">
                        <col width="25%">
                        <col width="25%">
                        <col width="25%">
                        <tr>
                            <th>{_LABEL_DESDE}</th>
                            <th>{_LABEL_FECHA_IDA}</th>
                            <th>{_LABEL_HACIA}</th>
                            <th>{_LABEL_FECHA_REGRESO}</th>
                        </tr>
                        <tr>
                            <td id='id_from_city1' style="vertical-align: top;">
                                <select name='from_city1' class=combo-box>
                                    <option value=''>{_LABEL_SELECCIONE}</option>
                                    {LISTA_ORIGENES}
                                </select>
                            </td>
                            <td id='id_fecha1' style="vertical-align: top;">
                                <select name='fecha1_dia' class=combo-box>
                                    <option value=''>&nbsp;</option>
                                    {DIAS1}
                                </select>
                                <select name='fecha1_anomes' class=combo-box>
                                    <option value=''>&nbsp;</option>
                                    {MESES_ANO1}
                                </select>
                                <img width='25' height='20' name='calendario1' src='/images/sitio_personas/layout/ic_calendario.gif' alt='{_PALABRA_CALENDARIO}' id='img_calendario1' style='cursor: pointer; vertical-align:bottom;'>
                            </td>
                            <td id='id_to_city1' style="vertical-align: top;">
                                <select name='to_city1' onChange='acciones_combo_origen_destino(this.form,this,1,"destino")' class=combo-box>
                                    <option value=''>{_LABEL_SELECCIONE}</option>
                                    {LISTA_DESTINOS}
                                    {OTROS_DESTINOS}
                                </select>
                                <br>
                                <a href='/cgi-bin/compra/paso1.cgi?estilo=multiples_destinos&amp;rand=1234543'>{_TEXTO_LINK_MULTIPLES_DESTINOS}</a>
                            </td>
                            <td id='id_fecha2' style="vertical-align: top;">
                                <select name='fecha2_dia' class=combo-box onchange="set_solo_ida(this.value);">
                                    <option value='00' {SOLO_IDA}>{_PALABRA_NO}</option>
                                    {DIAS}
                                </select>
                                <select name='fecha2_anomes' class=combo-box onchange="set_solo_ida(this.value);">
                                    <option value='' {SOLO_IDA}>{_LABEL_SOLO_IDA}</option>
                                    {MESES_ANO}
                                </select>
                                <img width='25' height='20' name='calendario2' src='/images/sitio_personas/layout/ic_calendario.gif' alt='{_PALABRA_CALENDARIO}' id='img_calendario2' style='cursor: pointer; vertical-align:bottom;'>
                            </td>
                        </tr>
                        <tr>
                          <td colspan="4">
                           <input name="flex" type="hidden" id="flex" value="1" checked> <!--{_LABEL_FLEXIBLE}--> <!-- type y checked + comentario para forzar matriz / abravo -->
                          </td>
                        </tr>
                    	<tr>
                            <th>{_LABEL_CABINA}</th>
                            <th>{_LABEL_NUM_ADULTS} {_LABEL_DESC_ADULTS}</th>
                            <th>{_LABEL_NUM_CHILDREN}</th>
                            <th>{_LABEL_NUM_INFANTS}</th>
                        </tr>
                        <tr>
                            <td id='id_cabina'>
                                <select name='cabina' class=combo-box>
                                    <option value='Y' {CABINA_Y_SELECTED}>{_LABEL_CABINA_TURISTA}</option>	
                                    <option value='W' {CABINA_W_SELECTED}>{_LABEL_CABINA_PREMIUM_ECONOMY}</option>
                                    <option value='J' {CABINA_J_SELECTED}>{_LABEL_CABINA_EJECUTIVA}</option>
                                </select>
                            </td>
                            <td id='id_nadults'>
                                <select name='nadults' class='combo-box'>
                                    <option value='1' {NADULTS_1_SELECTED}>1&nbsp;</option>
                                    <option value='2' {NADULTS_2_SELECTED}>2</option>
                                    <option value='3' {NADULTS_3_SELECTED}>3</option>
                                    <option value='4' {NADULTS_4_SELECTED}>4</option>
                                    <option value='5' {NADULTS_5_SELECTED}>5</option>
                                    <option value='6' {NADULTS_6_SELECTED}>6</option>
                                    <option value='7' {NADULTS_7_SELECTED}>7</option>
                                </select>
                            </td>
                            <td id='id_nchildren'>
                                <select name='nchildren' class='combo-box'>
                                    <option value='0' {NCHILDREN_0_SELECTED}>0&nbsp;</option>
                                    <option value='1' {NCHILDREN_1_SELECTED}>1</option>
                                    <option value='2' {NCHILDREN_2_SELECTED}>2</option>
                                    <option value='3' {NCHILDREN_3_SELECTED}>3</option>
                                    <option value='4' {NCHILDREN_4_SELECTED}>4</option>
                                    <option value='5' {NCHILDREN_5_SELECTED}>5</option>
                                    <option value='6' {NCHILDREN_6_SELECTED}>6</option>
                                    <option value='7' {NCHILDREN_7_SELECTED}>7</option>
                                </select>
                            </td>
                            <td id='id_ninfants'>
                                <select name='ninfants' class='combo-box'>
                                    <option value='0' {NINFANTS_0_SELECTED}>0&nbsp;</option>
                                    <option value='1' {NINFANTS_1_SELECTED}>1</option>
                                    <option value='2' {NINFANTS_2_SELECTED}>2</option>
                                    <option value='3' {NINFANTS_3_SELECTED}>3</option>
                                    <option value='4' {NINFANTS_4_SELECTED}>4</option>
                                    <option value='5' {NINFANTS_5_SELECTED}>5</option>
                                    <option value='6' {NINFANTS_6_SELECTED}>6</option>
                                    <option value='7' {NINFANTS_7_SELECTED}>7</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>    
        <table cellspacing="0" cellpadding="0" id=barra-continuar>
            <tr>
                <td><input type='button' class="button-process" id='submitButton' value='{_LABEL_CONTINUAR}' name="submitButton" onClick='precheck_and_submit(document.paso1)'></td>
            </tr>
        </table>
    </form>
{_MSG_COMUNICACION_MDP} 
</div>

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
//	document.paso1.action = 'javascript:precheck_and_submit(document.paso1);';
	advierte_errores_validacion_posteriores(document.paso1);
	set_dates();
	set_city();

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
