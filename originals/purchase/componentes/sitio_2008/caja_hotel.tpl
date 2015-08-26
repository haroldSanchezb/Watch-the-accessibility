<script type="text/javascript">
	
	function refresh_fechas_ida()
		{
		var pattern = /([0-9]{2})\/([0-9]{2})\/([0-9]{4})/;
		var res = pattern.exec($('vuelos_fecha_salida_ddmmaaaa').value);
		$('vuelos_fecha_salida').value = res[1] + '/' + get_meses_cortos( res[2]) + '/' + res[3];
		return;
		}

	function refresh_fechas_regreso()
		{
		var pattern = /([0-9]{2})\/([0-9]{2})\/([0-9]{4})/;
		var res = pattern.exec($('vuelos_fecha_regreso_ddmmaaaa').value);
		$('vuelos_fecha_regreso').value = res[1] + '/' + get_meses_cortos( res[2]) + '/' + res[3];
		return;
		}

	function vuelos_set_fecha_from_text(id, text)
		{
		var pattern = /([0-9]{2})\/([0-9]{2})\/([0-9]{4})/;
		var res = pattern.exec(text);
		var fecha_regreso_aux  = '';

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
		if(id == 1)
			{
			$('vuelos_fecha_salida_ddmmaaaa').value = dia + '/' + mes + '/' + ano;
			refresh_fechas_ida();
			fecha_regreso_aux  = pattern.exec($('vuelos_fecha_regreso_ddmmaaaa').value);
			var aux_ida_aaaammdd = res[3] + "-" + res[2] + "-" + res[1];
			var aux_regreso_aaaammmddd = fecha_regreso_aux[3] + "-" + fecha_regreso_aux[2] + "-" + fecha_regreso_aux[1];
			if( aux_ida_aaaammdd  >=  aux_regreso_aaaammmddd )
				{
				var f = $('vuelos_fecha_salida_ddmmaaaa').value;
				f=f.split('/');
				f=f[1]+'/'+f[0]+'/'+f[2];
				var fida = new Date(f);		
				fida.setTime(fida.getTime()+ 24*60*60*1000);	
				var day = fida.getDate();
				if (day < 10)
					{
					day = '0' + day;
					}
				var month = fida.getMonth();
		
				month += 1;
		
				if (month < 10)
					{
					month = '0' + month;
					}
				
				var year = fida.getFullYear();
						
				$('vuelos_fecha_regreso_ddmmaaaa').value = day + '/' + month + '/' + year;
				refresh_fechas_regreso();						
				vuelos_set_fecha_from_calendar(2, year, month, day);
				}
			vuelos_set_fecha_from_calendar(id, ano, mes, dia);
			}
		else if(id == 2)
			{
			$('vuelos_fecha_regreso_ddmmaaaa').value = dia + '/' + mes + '/' + ano;
			refresh_fechas_regreso();
			vuelos_set_fecha_from_calendar(id, ano, mes, dia);
			}

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
		
		var milisecs = Date.parse(today);
		milisecs += 86400000 * 1; // Este 2o numero es la cantidad de dias en el futuro que queremos la fecha preseleccionada.
		
		var plus = new Date(milisecs);
		var day = plus.getDate();
		if (day < 10)
			{
			day = '0' + day;
			}
		var month = plus.getMonth();

		month += 1;

		//Funcion que obtiene el mes en letras
		var month_txt = get_meses_cortos(month);

		if (month < 10)
			{
			month = '0' + month;
			}
			
		var year = plus.getFullYear();
		var anomes = year + '-' + month;

		if (!$('vuelos_fecha1_dia').value || !$('vuelos_fecha1_anomes').value)
			{
			$('vuelos_fecha1_dia').value = day;
			$('vuelos_fecha1_anomes').value = anomes;
			$('vuelos_fecha_salida_ddmmaaaa').value = day + '/' + month + '/' + year;
			refresh_fechas_ida();
			}
		}
	
	function get_meses_cortos(month)
		{
		if(month == 01)
			{
			month = "{_MESCORTO01_JS}";
			}
		else if(month == 02)
			{
			month = "{_MESCORTO02_JS}";
			}
		else if(month == 03)
			{
			month = "{_MESCORTO03_JS}";
			}
		else if(month == 04)
			{
			month = "{_MESCORTO04_JS}";
			}
		else if(month == 05)
			{
			month = "{_MESCORTO05_JS}";
			}
		else if(month == 06)
			{
			month = "{_MESCORTO06_JS}";
			}
		else if(month == 07)
			{
			month = "{_MESCORTO07_JS}";
			}
		else if(month == 08)
			{
			month = "{_MESCORTO08_JS}";
			}
		else if(month == 09)
			{
			month = "{_MESCORTO09_JS}";
			}
		else if(month == 10)
			{
			month = "{_MESCORTO10_JS}";
			}
		else if(month == 11)
			{
			month = "{_MESCORTO11_JS}";
			}
		else if(month == 12)
			{
			month = "{_MESCORTO12_JS}";
			}
		return month;
		}
	
	function vuelos_init_date_vuelta()
		{
		var today = new Date();
		
		var milisecs = Date.parse(today);
		milisecs += 86400000 * 2; // Este 2o numero es la cantidad de dias en el futuro que queremos la fecha preseleccionada.
		
		var plus = new Date(milisecs);
		var day = plus.getDate();
		if (day < 10)
			{
			day = '0' + day;
			}
		var month = plus.getMonth();
		month += 1;
		var month_txt = get_meses_cortos(month);
		
		if (month < 10)
			{
			month = '0'+month;
			}
		var year = plus.getFullYear();
		var anomes = year + '-' + month;
		
	 	if (!$('vuelos_fecha2_dia').value || !$('vuelos_fecha2_anomes').value)
			{
			$('vuelos_fecha2_dia').value = day;
			$('vuelos_fecha2_anomes').value = anomes;
			$('vuelos_fecha_regreso_ddmmaaaa').value = day + '/' + month + '/' + year;
			refresh_fechas_regreso();
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

		if (nadults + ninfants + nchildren > 9)
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
</script>

<form name="paso1" action="/no_js.html" method="GET">
	<!--<div class="separador_largo"> -->
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
	
	<div id="bloque_horizontal_1">
	<p>Hotel</p>
	</div>
	<div id="bloque_horizontal_3">
	<div id="bloque_vertical_1">
	<div class="bloque1_2">
			<label for="vuelos_origen">{_LABEL_DESDE}</label>
				<select name="from_city1" id="vuelos_origen" onChange="vuelos_on_change_origen(this);">
					<option value="">{_LABEL_SELECCIONE}</option>
					{+TEMPLATE("compra/paso1/lista_origenes_preferentes.tpl")}
					{LISTA_ORIGENES}
				</select>
			<div class="clear_fix tab_inf"></div>
			</div>
	<div class="bloque1_2">
			<label for="vuelos_destino">{_LABEL_HACIA}</label>
				<select name="to_city1" id="vuelos_destino" onChange="vuelos_on_change_destino(this);">
					<option value="">{_LABEL_SELECCIONE}</option>
					{+TEMPLATE("compra/paso1/lista_destinos_preferentes.tpl")}
					{LISTA_DESTINOS}
				</select>
			<div class="clear_fix tab_inf"></div>
			
		</div>
		</div>
	
	<div id="bloque_vertical_2">
	<div class="bloque1_3 ancho">
			<label for="vuelos_fecha_salida">{_LABEL_FECHA_IDA}</label>
			<input type="text" class="text fecha" name="vuelos_fecha_salida" id="vuelos_fecha_salida" value="" onChange="vuelos_set_fecha_from_text(1, this.value);">
			<input type="hidden" class="text fecha" name="vuelos_fecha_salida_ddmmaaaa" id="vuelos_fecha_salida_ddmmaaaa" onChange="vuelos_set_fecha_from_text(1, this.value);">
			<img src="/images/common/calendario.jpg" id="cal1" class="calendario" alt="" width="25" height="20">
			<script type="text/javascript">
				Calendar.setup({
					inputField  : "vuelos_fecha_salida_ddmmaaaa",
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
			<input type="hidden" class="text fecha" name="vuelos_fecha_regreso_ddmmaaaa" id="vuelos_fecha_regreso_ddmmaaaa" value="" onChange="vuelos_set_fecha_from_text(2, this.value);" >
			<img src="/images/common/calendario.jpg" class="calendario" id="cal2" alt="" width="25" height="20">
			<script type="text/javascript">
				Calendar.setup({
					inputField  : "vuelos_fecha_regreso_ddmmaaaa",
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
	  </div>
	<div id="bloque_vertical_3">
	  <div class="bloque_pasajeros">	
	<div class="bloque_adultos">
			<label for="vuelos_adultos">{_LABEL_ADULTOS}</label> 
			<p>
			<select name="nadults" id="vuelos_adultos">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
			</select>
			</p>
			<p><span class="no_negrita_caja">{_LABEL_ADULTOS_CAJA}</span></p>
		</div>
	<div class="bloque_ninos">
			<label for="vuelos_ninos">{_LABEL_NINOS}</label> 
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
					<option value="8">8</option>
				</select>
			</p>
			<span class="no_negrita_caja">{_LABEL_NINOS_CAJA}</span>
		</div>
	  </div>
	</div>
	
	</div>	
	<div id="bloque_horizontal_4">
	<div class="boton_rojo">
			<img src="/images/common/borde_der_boton_rojo.jpg" alt="" width="6" height="20">
			<a href="javascript:vuelos_check_and_submit(document.paso1);" class="btn_rojo">{_PASO1_COL_BUSCA_VLO}</a>
			<img src="/images/common/borde_izq_boton_rojo.jpg" alt="" width="6" height="20">
		</div>
	</div>
	
	
		

		
								
		<div class="clear_fix"></div>
	<!--</div> -->
	<div class="separador_corto no_bg">
	  <div class="clear_fix"></div>
		
	</div>
</form>

<script type="text/javascript">
	completa_top_list('vuelos_origen', 'vuelos_destino');
</script>
