<script type="text/javascript" src="/js/caja_compra.js"></script>

<script type="text/javascript">
	function vuelos_set_fecha_from_text(id, text)
		{
		var pattern = /([0-9]{2})\/([0-9]{2})\/([0-9]{4})/;
		var res = pattern.exec(text);

		var errores = 0;
		
		if (!res)
			{
			errores++;
			}
		else
			{
			var dia = res[1];
			var mes = res[2];
			var ano = res[3];

			if (dia < 1 || dia > 31)
				{
				errores++;
				}
			if (mes < 1 || mes > 12)
				{
				errores++;
				}
			if (ano < 2007 || ano > 3000)
				{
				errores++;
				}
			}

		// En caso de error dejo las fechas internas en vacio
		if (errores)
			{
			if (id == 1)
				{
				alert ("{_ERROR_FECHA_IDA_INVALIDA_JS}");
				}
			else
				{
				alert ("{_ERROR_FECHA_REGRESO_INVALIDA_JS}");
				}

			vuelos_set_fecha_from_calendar(id, '', '', '');
			return ;
			}
		
		vuelos_set_fecha_from_calendar(id, ano, mes, dia);
		}

	function vuelos_set_fecha_from_calendar(id, ano, mes, dia)
		{
		var id_anomes = 'vuelos_fecha' + id + '_anomes';
		var id_dia = 'vuelos_fecha' + id + '_dia';

		if (ano && mes && dia)
			{
			$(id_anomes).value = ano + '-' + mes;
			$(id_dia).value = dia;
			}
		else
			{
			$(id_anomes).value = '';
			$(id_dia).value = '';
			}
		}

	function vuelos_init_date_ida()
		{
		var today = new Date();
	 	var ca = Cookie.get('caja_compra');	
		var milisecs = Date.parse(today);
		milisecs += 86400000 * 21; // Este 2o numero es la cantidad de dias en el futuro que queremos la fecha preseleccionada.
		
		var plus = new Date(milisecs);
		var day = plus.getDate();
		if (day < 10)
			{
			day = '0' + day;
			}
		var month = plus.getMonth();
		month += 1;
		if (month < 10)
			{
			month = '0' + month;
			}
		var year = plus.getFullYear();
		var anomes = year + '-' + month;

		if (!$('vuelos_fecha1_dia').value || !$('vuelos_fecha1_anomes').value)
			{
                        if (ca == null)
                        	{
                                $('vuelos_fecha_salida').value = day + '/' + month + '/' + year;
                                $('vuelos_fecha1_dia').value = day;
                                $('vuelos_fecha1_anomes').value = anomes;
                        	}
                        else
                        	{
                                ca = ca.split(":");
                                $('vuelos_fecha_salida').value = ca[0];
                                ca2 = ca[0].split("/");
                                $('vuelos_fecha1_dia').value = ca2[0] ;
                                $('vuelos_fecha1_anomes').value = ca2[2] + '-' + get_numero_mes(ca2[1]);
                       	 	}
			}
		}
	
	function vuelos_init_date_vuelta()
		{
		var today = new Date();
		var ca = Cookie.get('caja_compra');		
		var milisecs = Date.parse(today);
		milisecs += 86400000 * 28; // Este 2o numero es la cantidad de dias en el futuro que queremos la fecha preseleccionada.
		
		var plus = new Date(milisecs);
		var day = plus.getDate();
		if (day < 10)
			{
			day = '0' + day;
			}
		var month = plus.getMonth();
		month += 1;
		if (month < 10)
			{
			month = '0'+month;
			}
		var year = plus.getFullYear();
		var anomes = year + '-' + month;
		
	 	if (!$('vuelos_fecha2_dia').value || !$('vuelos_fecha2_anomes').value)
			{
                        if(ca == null)
                                {
                                $('vuelos_fecha_regreso').value = day + '/' + month + '/' + year;
                                $('vuelos_fecha2_dia').value = day;
                                $('vuelos_fecha2_anomes').value = anomes;
                                }
                        else
                                {
                                ca = ca.split(":");
                                $('vuelos_fecha_regreso').value = ca[1];
                                ca2 = ca[1].split("/");
                                $('vuelos_fecha2_dia').value = ca2[0] ;
                                $('vuelos_fecha2_anomes').value = ca2[2] + '-' + get_numero_mes(ca2[1]);
                                }
			}
		}

	function vuelos_check_and_submit(f)
		{
		var errores, i, elem, elem2, fecha_segmento1, fecha_segmento2, from, to, nadults, ninfants, nchildren;

		errores = '';
		from = to = '';

		// Chequeo de pasajeros
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

		if (nadults + ninfants + nchildren > 7)
			{
			errores += "{_ERROR_DEMASIADOS_PASAJEROS_JS}\n";
			}

		// Chequeo de origen - destino
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

		// Chequeo de fechas
		elem = f.elements['fecha1_dia'];
		elem2 = f.elements['fecha1_anomes'];

		if (!elem.value || !elem2.value)
			{
			errores += "{_ERROR_FECHA_IDA_INVALIDA_JS}\n";
			}
		else
			{
			fecha_segmento1 = elem2.value + "-" + elem.value;

			if (fecha_segmento1 < '{FECHA_MIN}')
				{
				errores += "{_ERROR_FECHA_IDA_PASADO_JS}\n";
				}
			if (fecha_segmento1 > '{FECHA_MAX}')
				{
				errores += "{_ERROR_FECHA_IDA_FUTURO_JS}\n";
				}
			}

		elem = f.elements['fecha2_dia'];
		elem2 = f.elements['fecha2_anomes'];
		if (getRadioValue(f.elements['ida_vuelta']) == 'ida_vuelta')
			{
			if (!elem.value || !elem2.value)
				{
				errores += "{_ERROR_FECHA_REGRESO_INVALIDA_JS}\n";
				}
			else
				{
				fecha_segmento2 = elem2.value + "-" + elem.value;
	
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
				}
			}

		// Despliego errores o avanzo al siguiente paso
		if (errores.length > 0)
			{
			alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
			return;
			}
		else
			{
			vuelos_completa_campos_hidden(f);
	
			f.action = '/cgi-bin/compra/paso2{VERSION_CGI}.cgi';
			//if (f.elements['redirect_calendario'] && f.elements['redirect_calendario'].checked)
			//	{
			//	vuelos_completa_campos_redirect_calendario(f);
			//	}

			processing_layer('cuerpo');
			update_top_list('vuelos_origen', 'vuelos_destino');

			f.elements['rand_check'].value = Math.random() * 10000;
			set_cookie_caja_compra_mundolan(f);
			f.submit();
			}
		}
	function vuelos_completa_campos_hidden(f)
		{
		var x;
		
		if (getRadioValue(f.elements['ida_vuelta']) == 'ida_vuelta')
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
	function vuelos_set_ida_y_vuelta(value)
		{
		if (value == 'solo_ida')
			{
			$('vuelos_panel_fecha_regreso').style.visibility = 'hidden';
			}
		else
			{
			$('vuelos_panel_fecha_regreso').style.visibility = 'visible';
			}
		}
	function vuelos_on_change_origen(select_origen)
		{
		{_FUNCION_RUTAS_FLEX}('vuelos_origen', 'vuelos_destino', select_origen.form.elements['flex'], 'pregunta_flex');
		cabinas_set_cabinas('vuelos_origen', 'vuelos_destino', 'vuelos_cabina');
		vr_activa_desactiva_destinos('vuelos_origen', 'vuelos_destino');
		vr_activa_seleccione('vuelos_origen', 'vuelos_destino');
			
		var select_destino = $('vuelos_destino');
		if (select_destino.options[select_destino.selectedIndex].disabled)
			{
			select_destino.selectedIndex = 0;
			}
		}

	function vuelos_on_change_destino(select_destino)
		{
		if (vr_emulate_disabled_options_onChange('vuelos_destino'))
			{
			//acciones_combo_origen_destino(select_destino.form, select_destino, 1, "destino");
			vuelos_check_select_for_otros_destinos(select_destino, 1, "destino");
			{_FUNCION_RUTAS_FLEX}('vuelos_origen', 'vuelos_destino', select_destino.form.elements["flex"], "pregunta_flex");
			cabinas_set_cabinas('vuelos_origen', 'vuelos_destino', 'vuelos_cabina');
			}
		}
	function vuelos_check_select_for_otros_destinos(campo, num, tipo)
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

</script>


<form name="paso1" action="/no_js.html" method="GET">
	<div class="separador_largo">
		<input type="hidden" name="fecha1_dia" id="vuelos_fecha1_dia" value="">
		<input type="hidden" name="fecha1_anomes" id="vuelos_fecha1_anomes" value="">
		<input type="hidden" name="fecha2_dia" id="vuelos_fecha2_dia" value="">
		<input type="hidden" name="fecha2_anomes" id="vuelos_fecha2_anomes" value="">
	
		<input type="hidden" name="otras_ciudades" value="">
		<input type="hidden" name="num_segmentos_interfaz" value="1">
		<input type="hidden" name="tipo_paso1" value="caja">

		<input type="hidden" name="from_city2" value="">
		<input type="hidden" name="to_city2" value="">

		<input type="hidden" name="rand_check" value="">

		<div class="bloque1_2">
			<label for="vuelos_origen">{_LABEL_DESDE}</label>
				<select name="from_city1" id="vuelos_origen" onChange="vuelos_on_change_origen(this);">
					<option value="">{_LABEL_SELECCIONE}</option>
					{LISTA_ORIGENES}
				</select>
			<div class="clear_fix tab_inf"></div>
			<p class="radios">
				<input type="radio" name="ida_vuelta" class="radio" value="ida_vuelta" id="ida_vuelta"  onClick="vuelos_set_ida_y_vuelta(this.value);" checked><span class="label_radio">{_LABEL_IDA_Y_VUELTA}</span>
				<input type="radio" name="ida_vuelta" class="radio" value="solo_ida" id="solo_ida" onClick="vuelos_set_ida_y_vuelta(this.value);"><span class="label_radio">{_LABEL_SOLO_IDA}</span>
			</p>
		</div>

		<div class="bloque1_2">
			<label for="vuelos_destino">{_LABEL_HACIA}</label>
				<select name="to_city1" id="vuelos_destino" onChange="vuelos_on_change_destino(this);">
					<option value="">{_LABEL_SELECCIONE}</option>
					{LISTA_DESTINOS}
				</select>
			<div class="clear_fix tab_inf"></div>
			<p class="multiples_destinos">
				<a href="/cgi-bin/compra/paso1.cgi?estilo=multiples_destinos" class="home">{_TEXTO_LINK_MULTIPLES_CIUDADES}</a>
				<a href="#" onclick="return(false)" title="{_AYUDA_CAJA_COMPRA}"><img src="/images/common/ayuda.jpg" width="22" height="20" alt='{_AYUDA}'></a>
			</p>
		</div>
								
		<div class="clear_fix"></div>
	</div>
							
	<div class="separador_corto">
							
		<div class="bloque1_3 ancho">
			<label for="vuelos_fecha_salida">{_LABEL_FECHA_IDA}</label>
			<input type="text" class="text fecha" name="vuelos_fecha_salida" id="vuelos_fecha_salida" value="" onChange="vuelos_set_fecha_from_text(1, this.value);">
			<img src="/images/common/calendario.jpg" id="cal1" class="calendario" alt="" width="25" height="20">
			<script type="text/javascript">
				Calendar.setup({
					inputField  : "vuelos_fecha_salida",
					ifFormat    : "%d/%m/%Y",
					button      : "cal1",
					minDate		: "{FECHA_MIN}",
					maxDate		: "{FECHA_MAX}",
					yearButtons	: false,
					id			: 1
					});

				$('vuelos_fecha_salida').onclick = $('cal1').onclick;
				vuelos_init_date_ida();
			</script>
		</div>
								
		<div class="bloque1_3 ancho">
		<div id="vuelos_panel_fecha_regreso">
			<label for="vuelos_fecha_regreso">{_LABEL_FECHA_REGRESO}</label>
			<input type="text" class="text fecha" name="vuelos_fecha_regreso" id="vuelos_fecha_regreso" value="" onChange="vuelos_set_fecha_from_text(2, this.value);">
			<img src="/images/common/calendario.jpg" class="calendario" id="cal2" alt="" width="25" height="20">
			<script type="text/javascript">
				Calendar.setup({
					inputField  : "vuelos_fecha_regreso",
					ifFormat    : "%d/%m/%Y",
					button      : "cal2",
					minDate		: "{FECHA_MIN}",
					maxDate		: "{FECHA_MAX}",
					yearButtons	: false,
					id			: 2
					});

				$('vuelos_fecha_regreso').onclick = $('cal2').onclick;
				vuelos_init_date_vuelta();
			</script>
		</div>
		</div>
								
		<div class="bloque1_3 delgado">
			<label for="vuelos_cabina">{_LABEL_CABINA}</label>
			<select name="cabina" id="vuelos_cabina">
				<option value="Y" selected>{_LABEL_CABINA_TURISTA}</option>
				<option value="J">{_LABEL_CABINA_EJECUTIVA}</option>
			</select>
		</div>
								
		<div class="clear_fix tab_inf"></div>
							
		<div class="flotar_izq" style="margin-left: -4px; width: 345px;">
			<div style="width: 48%;" class="flotar_izq">
				<div id="pregunta_flex">
					<input class="flotar_izq" type="radio" name="flex" id="r_flex_1" value="1" checked>
					<span class="label_radio" style="display: block; padding-left: 18px !important;" onClick="$('r_flex_1').checked = 1;">{_LABEL_FECHA_PRECIO}</span>

				</div>
			</div>
			<div style="width: 48%;" class="flotar_der">
				<input class="flotar_izq" type="radio" name="flex" id="r_flex_0" value="0">
				<span class="label_radio" style="display: block; padding-left: 18px !important;" onClick="$('r_flex_0').checked = 1;">{_LABEL_FECHA_EXACTA}</span>
			</div>
		</div>
	
		<div class="clear_fix"></div>
	</div>
							
	<div class="separador_corto no_bg">
		<div class="bloque1_3 ancho2">
			<label for="vuelos_adultos">{_LABEL_ADULTOS} <span class="no_negrita">(+12)</span></label>
			<p>
			<select name="nadults" id="vuelos_adultos">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
		
		
			</select>
			</p>
		</div>
								
		<div class="bloque1_3 ancho2">
<!--		
			<label for="vuelos_ninos">{_LABEL_NINOS}<span class="no_negrita">(2-11{_ANOS})</span></label>
-->			
            <label for="vuelos_ninos">{_LABEL_NINOS}<span class="no_negrita">(2-11)</span></label>
						
			<p>
				<select name="nchildren" id="vuelos_ninos">
					<option value="0">0</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
			
				</select>
			</p>
		</div>
								
		<div class="bloque1_3 ancho2">
<!--		
			<label for="vuelos_infantes">{_LABEL_INFANTES} <span class="no_negrita">(0-1{_ANO})</span></label>
-->			
            <label for="vuelos_infantes">{_LABEL_INFANTES} <span class="no_negrita">(0-1)</span></label>
						
			<p>
				<select name="ninfants" id="vuelos_infantes">
					<option value="0">0</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
	
			
				</select>
			</p>
		</div>
	

		<div class="bloque1_3 ancho2">
			<a href="javascript:vuelos_check_and_submit(document.paso1);" class="btn_rojo"><span>Continuar</span></a>
		</div>

		
	</div>
</form>



<script type="text/javascript">
	completa_top_list('vuelos_origen', 'vuelos_destino');
	if ('{_FUNCION_RUTAS_FLEX}' == 'muestra_flex')
		{
		var formulario = document.paso1;
		set_datos_caja_compra(formulario);
		Cookie.erase('caja_compra');	
		}
</script>
