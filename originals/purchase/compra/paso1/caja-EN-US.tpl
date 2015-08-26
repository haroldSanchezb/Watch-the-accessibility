<link rel="stylesheet" type="text/css" media="all" href="/css/calendar_lan.css" title="calendar_lan" />

<script type="text/javascript" src="/js/jscalendar/calendar_new.js"></script>
<script type="text/javascript" src="/js/jscalendar/lang/calendar_lang.js"></script>
<script type="text/javascript" src="/js/jscalendar/calendar_setup_new.js"></script>

<script type="text/javascript" src="/js/caja_compra.js"></script>

<script type="text/javascript" src="/js/valid_routes_data.js"></script>
<script type="text/javascript" src="/js/flex_data.js"></script>
<script type="text/javascript" src="/js/cabinas_caja_compra_data.js"></script>


<script type="text/javascript">
function check_select_for_otros_destinos(campo, num, tipo)
	{
	var w;
	if (campo.options[campo.selectedIndex].value == 'otros_destinos')
		{
		w = window.open("/cgi-bin/compra/otros_destinos.cgi?idioma={IDIOMA}&num_segmentos={NUM_SEGMENTOS_INTERFAZ}&tipo=" + tipo + "&num=" + num, "otros_destinos","width=300,height=200,scrollbars=yes,resizable=yes");
		w.focus();
		return true;
		}
	return false;
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
	if (num <= 2)
		{
		pre_select_by_value(document.paso1, 'fecha' + num + '_anomes', ano + '-' + mes);
		pre_select_by_value(document.paso1, 'fecha' + num + '_dia', dia);
		}
	else if (num == 3)
		{
		document.formhoteles.ida.value = dia + '/' + mes + '/' + ano
		}
	else if (num == 4)
		{
		document.formautos.ida.value = dia + '/' + mes + '/' + ano
		}
	else if (num == 5)
		{
		document.formautos.vuelta.value = dia + '/' + mes + '/' + ano
		}
	}

function get_date_from_select_1()
	{
	return get_fecha(1);
	}
function get_date_from_select_2()
	{
	return get_fecha(2);
	}

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

	return (Date.parseDate(ano_mes + '-' + dia, "%Y-%m-%d"));
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
		errores += "{_ERROR_MAS_INFANTES_QUE_ADULTOS_JS}\n";
		}

	if (nadults + ninfants + nchildren > 9)
		{
		errores += "{_ERROR_DEMASIADOS_PASAJEROS_JS}\n";
		}

	elem = eval("f.elements['from_city1']");
	if (elem && elem.options[elem.selectedIndex].value == '' || elem.options[elem.selectedIndex].value == 'otros_destinos')
		{
		errores += "{_ERROR_CIUDAD_DE_ORIGEN_FALTANTE_JS}\n";
		}
	else
		{
		from = elem.options[elem.selectedIndex].value;
		}
	elem = eval("f.elements['to_city1']");
	if (elem && elem.options[elem.selectedIndex].value == '' || elem.options[elem.selectedIndex].value == 'otros_destinos')
		{
		errores += "{_ERROR_CIUDAD_DE_DESTINO_FALTANTE_JS}\n";
		}
	else
		{
		to = elem.options[elem.selectedIndex].value;
		}

	if (from != '' && to != '' && from == to)
		{
		errores += "{_ERROR_CIUDAD_DE_DESTINO_IGUAL_A_ORIGEN_JS}\n";
		}
	elem = eval("f.elements['fecha1_dia']");
	elem2 = eval("f.elements['fecha1_anomes']");
	fecha_segmento1 = elem2.options[elem2.selectedIndex].value + "-" + elem.options[elem.selectedIndex].value;
	if ((elem && elem.selectedIndex < 1) || (elem2 && elem2.selectedIndex < 1))
		{
		errores += "{_ERROR_FECHA_IDA_FALTANTE_JS}\n";
		}
	else if (!fecha_valida_iso(fecha_segmento1))
		{
		errores += "{_ERROR_FECHA_IDA_INVALIDA_JS}\n";
		}
	else
		{
		if (fecha_segmento1 < '{FECHA_MIN}')
			{
			errores += "{_ERROR_FECHA_IDA_PASADO_JS}\n";
			}
		if (fecha_segmento1 > '{FECHA_MAX}')
			{
			errores += "{_ERROR_FECHA_IDA_FUTURO_JS}\n";
			}
		}

	elem = eval("f.elements['fecha2_dia']");
	elem2 = eval("f.elements['fecha2_anomes']");
	if (elem.selectedIndex > 0 && elem2.selectedIndex > 0)
		{
		fecha_segmento2 = elem2.options[elem2.selectedIndex].value + "-" + elem.options[elem.selectedIndex].value;

		if (fecha_segmento1 > fecha_segmento2)
			{
			errores += "{_ERROR_FECHA_REGRESO_ANTERIOR_IDA_JS}\n";
			}
		if (fecha_segmento2 < '{FECHA_MIN}')
			{
			errores += "{_ERROR_FECHA_REGRESO_PASADO_JS}\n";
			}
		if (fecha_segmento2 > '{FECHA_MAX}')
			{
			errores += "{_ERROR_FECHA_REGRESO_FUTURO_JS}\n";
			}
		if (!fecha_valida_iso(fecha_segmento2))
			{
			errores += "{_ERROR_FECHA_REGRESO_INVALIDA_JS}\n";
			}
		}
	if (((elem && elem.selectedIndex >= 1) || (elem2 && elem2.selectedIndex >= 1))
		&& ((elem && elem.selectedIndex < 1) || (elem2 && elem2.selectedIndex < 1)))
		{
		errores += "{_ERROR_FECHA_REGRESO_FALTANTE_JS}\n";
		}

	if (errores.length > 0)
		{
		alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
		return false;
		}
	else
		{
		completa_campos_hidden(f);

		f.action = '/cgi-bin/compra/paso2{VERSION_CGI}.cgi';
		if (f.elements['redirect_calendario'] && f.elements['redirect_calendario'].checked)
			{
			completa_campos_redirect_calendario(f);
			}
		
		<!--toggle_waiting_button('next_step'); -->
		//if (isIncluded('waiting'))
		//	{
		//	processing_layer('externo');
		//	}
		
		update_top_list('id_origen', 'id_destino');
		//update_remember_date('id_dia_salida','id_mes_salida','id_dia_regreso','id_mes_regreso');
		set_cookie_caja_compra_empresa(f);
		f.submit();
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

function set_dates()
	{
	init_date_ida();
	init_date_vuelta();
	}

function init_date_ida()
	{
	today = new Date();
	var ca = Cookie.get('caja_compra');
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
		if(ca == null)
			{
			document.paso1.fecha1_dia.value = day;
			}
		else
			{
			ca = ca.split(":");
			var ca2 = ca[0].split("-");
			document.paso1.fecha1_dia.value = ca2[2];
			}
		}
	if (!document.paso1.fecha1_anomes.value)
		{
		if(ca == null)
			{
			document.paso1.fecha1_anomes.value = anomes;
			}
		else
			{
			var ca2 = ca[0].split("-");
			document.paso1.fecha1_anomes.value = ca2[0] + '-' + get_numero_mes(ca2[1]);
			}
		}
	}

function init_date_vuelta()
	{
	var ca = Cookie.get('caja_compra');
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
 	if (!document.paso1.fecha2_dia.value == "")
 		{
                if(ca == null)
                        {
                        document.paso1.fecha2_dia.value = day;
                        }
                else
                        {
                        ca = ca.split(":");
			var ca2 = ca[1].split("-");
                        document.paso1.fecha2_dia.value = ca2[2];
                        }
 		}
	if (!document.paso1.fecha2_anomes.value)
		{
                if(ca == null)
                        {
                        document.paso1.fecha2_anomes.value = anomes;
                        }
                else
                        {
                        var ca2 = ca[1].split("-");
                        document.paso1.fecha2_anomes.value = ca2[0] + '-' + get_numero_mes(ca2[1]);
                        }
		}
	}

       function get_numero_mes(month)
                {
                if(month == "{_MESCORTO01_JS}")
                        {
                        month = '01';
                        }
                else if(month == "{_MESCORTO02_JS}")
                        {
                        month = '02';
                        }
                else if(month == "{_MESCORTO03_JS}")
                        {
                        month = '03';
                        }
                else if(month == "{_MESCORTO04_JS}")
                        {
                        month = '04';
                        }
                else if(month == "{_MESCORTO05_JS}")
                        {
                        month = '05';
                        }
                else if(month == "{_MESCORTO06_JS}")
                        {
                        month = '06';
                        }
                else if(month == "{_MESCORTO07_JS}")
                        {
                        month = '07';
                        }
                else if(month == "{_MESCORTO08_JS}")
                        {
                        month = '08';
                        }
                else if(month == "{_MESCORTO09_JS}")
                        {
                        month = '09';
                        }
                else if(month == "{_MESCORTO10_JS}")
                        {
                        month = '10';
                        }
                else if(month == "{_MESCORTO11_JS}")
                        {
                        month = '11';
                        }
                else if(month == "{_MESCORTO12_JS}")
                        {
                        month = '12';
                        }
                return month;
                }

function set_city()
	{
	if (!document.paso1.from_city1.value)
		{
		// document.paso1.from_city1.value = 'SCL';
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

var id_timeout_ayuda_caja;

function show_ayuda_caja_compra()
	{
	if (id_timeout_ayuda_caja)
		{
		window.clearTimeout(id_timeout_ayuda_caja);
		}

	document.getElementById('cuadro_ayuda_caja_compra').style.display = 'block';
	}

function hide_ayuda_caja_compra()
	{
	if (id_timeout_ayuda_caja)
		{
		window.clearTimeout(id_timeout_ayuda_caja);
		}

 	id_timeout_ayuda_caja = window.setTimeout('document.getElementById("cuadro_ayuda_caja_compra").style.display = "none"', 2000);
	}

function toggle_ayuda_caja_compra()
	{
	if (document.getElementById('cuadro_ayuda_caja_compra').style.display != 'block')
		{
		show_ayuda_caja_compra();
		}
	else
		{
		window.clearTimeout(id_timeout_ayuda_caja);
		document.getElementById("cuadro_ayuda_caja_compra").style.display = "none";
		}
	}

function set_ida_y_vuelta()
	{
	if (document.getElementById('radio_solo_ida').checked)
		{
		document.getElementById('fecha_regreso').style.visibility = 'hidden';
		set_solo_ida('00');
		set_solo_ida('');
		}
	else
		{
		document.getElementById('fecha_regreso').style.visibility = 'visible';
		init_date_vuelta();
		}
	}

function on_change_origen(select_origen)
	{
	{_FUNCION_RUTAS_FLEX}('id_origen', 'id_destino', select_origen.form.elements['flex'], 'pregunta_flex');
	vr_activa_desactiva_destinos('id_origen', 'id_destino');
	
	
	
	var select_destino = $('id_destino');
	if (select_destino.options[select_destino.selectedIndex].disabled)
		{
		select_destino.selectedIndex = 0;
		}
	}

function on_change_destino(select_destino)
	{
	if (vr_emulate_disabled_options_onChange('id_destino'))
		{
		acciones_combo_origen_destino(select_destino.form, select_destino, 1, "destino");
		{_FUNCION_RUTAS_FLEX}('id_origen', 'id_destino', select_destino.form.elements["flex"], "pregunta_flex");
		}
	}

</script>

<!-- formulario de compra -->
<div class="formulario-compra">
	<form action="/noJS.html" method="GET" name="paso1">
		<div>
			<input type="hidden" name="otras_ciudades" value="">
			<input type="hidden" name="num_segmentos_interfaz" value="2">
			<input type="hidden" name="from_city2" value="{FROM_CITY2}">
			<input type="hidden" name="to_city2" value="{TO_CITY2}">
			<input type="hidden" name="tipo_paso1" value="caja">
			<input type="hidden" name="ft_tourcode" value="{FT_TOURCODE}">
		</div>

		<div class="opciones_caja">
			<table style="width: 100%">
				<tr>
					<td>

						<table class="no-table" style="width: auto; padding-left:4px;">
							<tr>
								<td style="white-space: nowrap;"><input type="radio" name="ida_y_vuelta" id="ida_y_vuelta" value="si" onclick="set_ida_y_vuelta()" checked></td>
								<td class="label_radio" style="white-space: nowrap;">{_LABEL_IDA_Y_VUELTA}&nbsp;&nbsp;</td>
								<td style="white-space: nowrap;"><input type="radio" name="ida_y_vuelta" value="no" id="radio_solo_ida" onclick="set_ida_y_vuelta()"></td>
								<td class="label_radio" style="white-space: nowrap;">{_LABEL_SOLO_IDA}</td>
								<td style="white-space: nowrap">&nbsp;&nbsp; <a href="/cgi-bin/compra/paso1.cgi?estilo=multiples_destinos">{_TEXTO_LINK_MULTIPLES_DESTINOS}</a></td>
							</tr>
						</table>

					</td>
					<td style="text-align: right">

						<table class="no-table" style="width: 100%; font-size: 1.3em;">
							<tr>
								<td style="white-space: nowrap;"></td>
								<td style="white-space: nowrap; text-align: right;">
									<div class="ayuda_caja_compra">
										<div style="display: none;" onmouseover="show_ayuda_caja_compra()" onmouseout="hide_ayuda_caja_compra()" id="cuadro_ayuda_caja_compra" class="cuadro_ayuda_caja_compra">

											{_MSG_AYUDA_CAJA_COMPRA}

										</div>
									</div>
										<img style="cursor: pointer;" onclick="toggle_ayuda_caja_compra()" onmouseout="hide_ayuda_caja_compra()" src="/images/common/ayuda.jpg" width="22" height="20" alt="Ayuda">&nbsp;

								</td>
							</tr>
						</table>

					</td>
				</tr>
			</table>
		</div>

		<div class="vuelos_pasajeros_caja">
		<div class="opciones_caja">
			<table class="no-table">
				<tr>
					<!-- combo origen -->
					<td>
					  <div id="contenedor_select">
							<label  id="id_from_city1" for="id_origen" onclick="from_city1.focus(); return false;">{_LABEL_DESDE}</label>
							<select style="width: 160px;" name="from_city1" id="id_origen" tabindex="1" onchange='on_change_origen(this);'>
								<option value="" style="width: 165px;">{_LABEL_SELECCIONE}</option>
								{LISTA_ORIGENES}
							</select>
						</div>
						
						<!-- fecha salida -->
						<div>
							<label id="id_fecha1" for="dia_salida" onclick="fecha1_dia.focus(); return false;">{_LABEL_FECHA_IDA}</label>
							<select name="fecha1_dia" id="dia_salida" tabindex="2">
								<option value="">&nbsp;</option>
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
							</select>

							<select name="fecha1_anomes" id="fecha1_anomes" tabindex="3">
								<option value="">&nbsp;</option>
								{MESES_ANO1}
							</select>
							&nbsp;
							<a href="#" title="Calendario"><img src="/images/common/calendario.jpg" alt="{_PALABRA_CALENDARIO}" name="calendario1" id="img_calendario1" width="25" height="20"></a>
						</div>
					</td>

					
					<td>
						<div id="contenedor_select">
							<label  id="id_to_city1" for="id_destino" onclick="to_city1.focus(); return false;">{_LABEL_HACIA}</label>
							<select style="width: 160px;" name="to_city1" id="id_destino" tabindex="4" onchange='on_change_destino(this);'>
								<option value="">{_LABEL_SELECCIONE}</option>
								{LISTA_DESTINOS}
							</select>
						</div>
						<div id="fecha_regreso">
							<!-- fecha regreso -->
							<label id="id_fecha2" for="dia_regreso" onclick="fecha2_dia.focus(); return false;">{_LABEL_FECHA_REGRESO}</label>
							<select name="fecha2_dia" id="dia_regreso" tabindex="5" onchange="set_solo_ida(this.value);">
								<option value="00">&nbsp;</option>
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
							</select>

							<select name="fecha2_anomes" id="fecha2_anomes" tabindex="6" onchange="set_solo_ida(this.value);">
								<option value="">&nbsp;</option>
								{MESES_ANO}
							</select>
							&nbsp;
							<a href="#" title="Calendario"><img src="/images/common/calendario.jpg" alt="{_PALABRA_CALENDARIO}" name="calendario2" id="img_calendario2" width="25" height="20"></a>
						</div>
					</td>
				</tr>
			</table></div>
<!--
			<h5>N&ordm; {_LABEL_PASAJEROS}</h5>
-->
			<!-- pasajeros -->
			<table class="pasajeros">
				<tr>
					<td>
						<label for="label" onclick="cabina.focus(); return false;">{_LABEL_CABINA}</label>
						<select id="cabina" name="cabina" tabindex="7">
							<option value="Y" selected="selected">{_LABEL_CABINA_TURISTA}</option>
							<option value="J">{_LABEL_CABINA_EJECUTIVA}</option>
						</select>					</td>
					<td>
            			{+EXTRA_SENADO}          			</td>
					<td><span id="pregunta_flex" style="display: none;"><input type="checkbox" name="flex" value="1">{_LABEL_FECHA_FLEXIBLE}</span>&nbsp;</td>
				</tr>
				<tr>
					<td><label id="id_pasajeros" for="adultos" onclick="nadults.focus(); return false;">{_LABEL_PASAJEROS}</label></td>
					<td><label class="input-description">{_LABEL_DESC_CHILDREN}</label></td>
					<td><label class="input-description">{_LABEL_DESC_INFANTS}</label></td>
				</tr>
				<tr>
					<td style="width: 40%;">
						<select name="nadults" id="adultos" tabindex="8">
							<option value="1">1 {_LABEL_ADULTO}</option>
							<option value="2">2 {_LABEL_ADULTOS}</option>
							<option value="3">3 {_LABEL_ADULTOS}</option>
							<option value="4">4 {_LABEL_ADULTOS}</option>
							<option value="5">5 {_LABEL_ADULTOS}</option>
							<option value="6">6 {_LABEL_ADULTOS}</option>
							<option value="7">7 {_LABEL_ADULTOS}</option>
							<option value="8">8 {_LABEL_ADULTOS}</option>
							<option value="9">9 {_LABEL_ADULTOS}</option>
						</select>					</td>
					<td style="width: 30%;">
						<select name="nchildren" id="ninos" tabindex="9">
							<option value="0">0 {_LABEL_NINOS}</option>
							<option value="1">1 {_LABEL_NINO}</option>
							<option value="2">2 {_LABEL_NINOS}</option>
							<option value="3">3 {_LABEL_NINOS}</option>
							<option value="4">4 {_LABEL_NINOS}</option>
							<option value="5">5 {_LABEL_NINOS}</option>
							<option value="6">6 {_LABEL_NINOS}</option>
							<option value="7">7 {_LABEL_NINOS}</option>
							<option value="8">8 {_LABEL_NINOS}</option>
						</select>						</td>
					<td>
						<select name="ninfants" id="bebes" tabindex="10">
							<option value="0">0 {_LABEL_INFANTES}</option>
							<option value="1">1 {_LABEL_INFANTE}</option>
							<option value="2">2 {_LABEL_INFANTES}</option>
							<option value="3">3 {_LABEL_INFANTES}</option>
							<option value="4">4 {_LABEL_INFANTES}</option>
							<option value="5">5 {_LABEL_INFANTES}</option>
							<option value="6">6 {_LABEL_INFANTES}</option>
							<option value="7">7 {_LABEL_INFANTES}</option>
							<option value="8">8 {_LABEL_INFANTES}</option>
							<option value="9">9 {_LABEL_INFANTES}</option>
						</select></td>
				</tr>
				<tr>
				   <td colspan="3" align="right" style="width: 30%;">
				   <div>
				   <input name="next_step" onClick="check_and_submit(this.form)" type="button" value="{_LABEL_CONTINUAR} &raquo;" tabindex="12" id="next_step" class="boton_caja_compra">
				   </div>
			  </tr>
			</table>
		</div>

	</form>
</div>
<!-- fin formulario de compra -->


<script type="text/javascript">
	document.paso1.action = 'javascript:precheck_and_submit(document.paso1);';

	// Setup
	set_dates();
	set_city();
	set_ida_y_vuelta();

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

	completa_top_list('id_origen','id_destino');
	//completa_remember_date('id_dia_salida','id_mes_salida','id_dia_regreso','id_mes_regreso');
		
                var formulario = document.paso1;
                set_datos_caja_compra_empresa(formulario);
                Cookie.erase('caja_compra');
</script>
