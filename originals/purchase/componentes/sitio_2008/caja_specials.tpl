<script type="text/javascript" src="/js/cabinas_caja_compra_ezrez_data.js"></script>
<script type="text/javascript" src="/js/caja_compra.js"></script>
<script type="text/javascript" src="/js/jscalendar/calendar_new.js"></script>
<script type="text/javascript" src="/js/jscalendar/lang/calendar_lang.js"></script>
<script type="text/javascript" src="/js/jscalendar/calendar_setup_specials.js"></script>
<script type="text/javascript">
//Event.observe(window, 'load', function() { muestra_edades_menores() });
	function vuelos_on_change_origen(select_origen)
		{
		var aplicacion = 'ezrez';
		var vuelos_origen = 'vuelos_origen_vacaciones';
		var vuelos_destino = 'vuelos_destino_vacaciones';
		var vuelos_cabina = 'vuelos_cabina_ezrez'
		cabinas_set_cabinas(vuelos_origen, vuelos_destino, vuelos_cabina, aplicacion);
		}

	function refresh_fechas_ida_ezrez()
		{
		var pattern = /([0-9]{1,2})\/([0-9]{2})\/([0-9]{4})/;
		var res = pattern.exec($('vuelos_fecha_salida_ddmmaaaa_ezrez').value);
		var aux = res[1] + '/' + get_meses_cortos( res[2]) + '/' + res[3];
		$('vuelos_fecha_salida_ezrez').value = aux;
		return;
		}

	function refresh_fechas_regreso_ezrez()
		{
		var pattern = /([0-9]{1,2})\/([0-9]{2})\/([0-9]{4})/;
		var res = pattern.exec($('vuelos_fecha_regreso_ddmmaaaa_ezrez').value);
		$('vuelos_fecha_regreso_ezrez').value = res[1] + '/' + get_meses_cortos( res[2]) + '/' + res[3];
		return;
		}

	function vuelos_set_fecha_from_text_ezrez(id, text)
		{
		var pattern = /([0-9]{1,2})\/([0-9]{2})\/([0-9]{4})/;
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

			vuelos_set_fecha_from_calendar_ezrez(id, '', '', '');
			return ;
			}
		if(id == 1)
			{
			$('vuelos_fecha_salida_ddmmaaaa_ezrez').value = dia + '/' + mes + '/' + ano;
			refresh_fechas_ida_ezrez();
			fecha_regreso_aux  = pattern.exec($('vuelos_fecha_regreso_ddmmaaaa_ezrez').value);
			var aux_ida_aaaammdd = res[3] + "-" + res[2] + "-" + res[1];
			var aux_regreso_aaaammmddd = fecha_regreso_aux[3] + "-" + fecha_regreso_aux[2] + "-" + fecha_regreso_aux[1];
			var f = $('vuelos_fecha_salida_ddmmaaaa_ezrez').value;
			f=f.split('/');
			f=f[1]+'/'+f[0]+'/'+f[2];
			var fida = new Date(f);
			var total_dias = {TOTAL_NOCHES};
			var aux = total_dias + fida.getDate();
			fida.setDate(aux);
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
			$('vuelos_fecha_regreso_ddmmaaaa_ezrez').value = day + '/' + month + '/' + year;
			refresh_fechas_regreso_ezrez();						
			vuelos_set_fecha_from_calendar_ezrez(2, year, month, day);
			vuelos_set_fecha_from_calendar_ezrez(id, ano, mes, dia);
			}
		else if(id == 2)
			{
			$('vuelos_fecha_regreso_ddmmaaaa_ezrez').value = dia + '/' + mes + '/' + ano;
			refresh_fechas_regreso_ezrez();
			vuelos_set_fecha_from_calendar_ezrez(id, ano, mes, dia);
			}

		}

	function vuelos_set_fecha_from_select_ezrez(id, text)
		{
		var fecha_ida = $("vuelos_fecha_fija_salida_ezrez");
		var fecha_vuelta = $("vuelos_fecha_fija_regreso_ezrez");
		if (id == 1)
			{
			fecha_vuelta.selectedIndex = fecha_ida.selectedIndex;
			}
		else
			{
			fecha_ida.selectedIndex = fecha_vuelta.selectedIndex;
			}
		$("vuelos_fecha_salida_ddmmaaaa_ezrez").value = fecha_ida.value;
		$("vuelos_fecha_regreso_ddmmaaaa_ezrez").value = fecha_vuelta.value;

		if (fecha_ida.selectedIndex != 0)
			{
			vuelos_set_fecha_from_text_ezrez(1, fecha_ida.value);
			vuelos_set_fecha_from_text_ezrez(2, fecha_vuelta.value);
			}
		}

	function vuelos_set_fecha_from_calendar_ezrez(id, ano, mes, dia)
		{
		var id_anomes = 'vuelos_fecha' + id + '_anomes_ezrez';
		var id_dia = 'vuelos_fecha' + id + '_dia_ezrez';

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

	function vuelos_init_date_ida_ezrez(fecha)
		{
		var aux = fecha.split('-');
		var day = aux[2];
		var	month = aux[1];
		var year = aux[0];
		//Funcion que obtiene el mes en letras
		var month_txt = get_meses_cortos(month);

		if (month.length < 2)
			{
			month = '0' + month;
			}
			
		var anomes = year + '-' + month;

		if (!$('vuelos_fecha1_dia_ezrez').value || !$('vuelos_fecha1_anomes_ezrez').value)
			{
			$('vuelos_fecha1_dia_ezrez').value = day;
			$('vuelos_fecha1_anomes_ezrez').value = anomes;
			$('vuelos_fecha_salida_ddmmaaaa_ezrez').value = day + '/' + month + '/' + year;
			refresh_fechas_ida_ezrez();
			}
		}
	
	function vuelos_init_date_vuelta_ezrez(fecha)
		{
		var total_dias = {TOTAL_NOCHES};
		var aux = fecha.split('-');
		var day_ida = aux[2];
		var month_ida = aux[1];
		var year_ida = aux[0];
		var fecha_ida = new Date(year_ida, month_ida - 1, day_ida);
		var fecha_vuelta = fecha_ida;
		fecha_vuelta.setDate(fecha_vuelta.getDate() + total_dias);
		var day = fecha_vuelta.getDate();
		var month = fecha_vuelta.getMonth() + 1;
		var year = fecha_vuelta.getFullYear();

		if (day < 10)
			{
			day = '0'+day;
			}

		if (month < 10)
			{
			month = '0'+month;
			}
		if (day < 10)
			{
			day = '0' + day;
			}
		var anomes = year + '-' + month;
		var month_txt = get_meses_cortos(month);
	 	
		if (!$('vuelos_fecha2_dia_ezrez').value || !$('vuelos_fecha2_anomes_ezrez').value)
			{
			$('vuelos_fecha2_dia_ezrez').value = day;
			$('vuelos_fecha2_anomes_ezrez').value = anomes;
			$('vuelos_fecha_regreso_ddmmaaaa_ezrez').value = day + '/' + month + '/' + year;
			refresh_fechas_regreso_ezrez();
			}
		}

	function get_meses_cortos(month)
		{
		if(month == '01')
			{
			month = "{_MESCORTO01_JS}";
			}
		else if(month == '02')
			{
			month = "{_MESCORTO02_JS}";
			}
		else if(month == '03')
			{
			month = "{_MESCORTO03_JS}";
			}
		else if(month == '04')
			{
			month = "{_MESCORTO04_JS}";
			}
		else if(month == '05')
			{
			month = "{_MESCORTO05_JS}";
			}
		else if(month == '06')
			{
			month = "{_MESCORTO06_JS}";
			}
		else if(month == '07')
			{
			month = "{_MESCORTO07_JS}";
			}
		else if(month == '08')
			{
			month = "{_MESCORTO08_JS}";
			}
		else if(month == '09')
			{
			month = "{_MESCORTO09_JS}";
			}
		else if(month == '10')
			{
			month = "{_MESCORTO10_JS}";
			}
		else if(month == '11')
			{
			month = "{_MESCORTO11_JS}";
			}
		else if(month == '12')
			{
			month = "{_MESCORTO12_JS}";
			}
		return month;
		}

	function muestra_edades_menores()
		{
		var num_menores = $('nchildren').value;
		
		$('bloque_edad_menores_special').style.display = (num_menores > 0) ? 'block' : 'none';
		$('div_edad_menor1').style.display = (num_menores > 0) ? 'block' : 'none';
		$('div_edad_menor2').style.display = (num_menores > 1) ? 'block' : 'none';
		$('div_edad_menor3').style.display = (num_menores > 2) ? 'block' : 'none';
		
		}
	
	function check_and_submit_compra_specials(f)
		{
		var errores, i, elem, elem2, fecha_segmento1, fecha_segmento2, from,nadults, ninfants, nchildren;
		errores = '';
		from = '';
		// Chequeo de pasajeros
		// para forzar el ida y vuelta	
		var x = f.elements['to_city1'];
		f.elements['from_city2'].value = x.value;
		x = f.elements['from_city1'];
		f.elements['to_city2'].value = x.value;
		f.elements['num_segmentos_interfaz'].value = '2';
		
		elem = eval("f.elements['from_city1']");
		if (x.type == 'hidden')
			{
			from = x.value;
			}
		else
			{
			if (elem && elem.options[elem.selectedIndex].value == '')
				{
				errores += "{_ERROR_CIUDAD_DE_ORIGEN_FALTANTE_JS}\n";
				}
			else
				{
				from = elem.options[elem.selectedIndex].value;
				}
			}
		nadults = parseInt($('nadults').value, 10);
		nchildren = parseInt($('nchildren').value, 10);
		ninfants = parseInt($('ninfants').value, 10);
		
		// Validaciones de numero de pasajeros
		// heredadas de la caja de compras de dynamic full
		if (nadults < ninfants)
			{
			errores += "{_ERROR_MAS_INFANTES_QUE_ADULTOS_JS}\n";
			}
		if (nadults + ninfants + nchildren > 9)
			{
			errores += "{_ERROR_DEMASIADOS_PASAJEROS_JS}\n";
			}
		if (nchildren > 0)
			{
			for (var i=1; i<=nchildren; i++)
				{
				var id = 'child_age' + i;

				if ($(id).value == "")
					{
					errores += "{_ERROR_SIN_EDAD_MENORES_JS}\n";
					break;
					}

				}

			}


		// Chequeo de fechas
		if( $("fechas_fijas").value == "1")
			{
			if ($("vuelos_fecha_fija_salida_ezrez").selectedIndex != $("vuelos_fecha_fija_regreso_ezrez").selectedIndex )
				{
				errores += "{_ERROR_FECHA_REGRESO_INVALIDA_JS}"
				}
			}

	
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
		var fecha_ida = set_fecha($('vuelos_fecha_salida_ddmmaaaa_ezrez').value);
		var fecha_ida_aux = set_fecha($('vuelos_fecha_salida_ddmmaaaa_ezrez').value);
		var fecha_vuelta = set_fecha($('vuelos_fecha_regreso_ddmmaaaa_ezrez').value);
		var total_dias = {TOTAL_NOCHES};
		var aux = new Date(fecha_ida_aux.setDate(fecha_ida_aux.getDate() + total_dias));
		// Validacion de duracion del special
		if (aux - fecha_vuelta != 0)
			{
			errores += "{_ERROR_DURACION_SPECIAL_JS}\n";
			}

		if ($("fechas_fijas").value == '0')
			{

			// Validacion de dias de la semana para la ida y el regreso
			
			var valid_departure_days = "{VALID_DEPARTURE_DAYS}";
			var valid_return_days = "{VALID_RETURN_DAYS}";
			
			if (valid_departure_days != "-1" && !es_numero_dia_valido(fecha_ida, valid_departure_days))
				{
				errores += "{_ERROR_DIA_IDA_INVALIDO_JS}\n";
				}

			if (valid_return_days != "-1" && !es_numero_dia_valido(fecha_vuelta, valid_return_days))
				{
				errores += "{_ERROR_DIA_REGRESO_INVALIDO_JS}\n";
				}
		
			// Validacion para los blackouts en fechas de salida
			if (!es_fecha_valida_por_blackouts(fecha_ida))
				{
				errores += "{_ERROR_FECHA_SALIDA_BLACKOUT_JS}\n";
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
			var tiene_cupo = {TIENE_CUPO};
			if (tiene_cupo)
				{
				processing_layer('cuerpo');
				f.action = '/cgi-bin/ezrez/ezrez_aereo_terrestre/paso2_special_con_cupo.cgi'
				}
			else
				{
				f.action = '/cgi-bin/ezrez/ezrez_aereo_terrestre/paso2_special.cgi';
				}
			f.elements['rand_check'].value = Math.random() * 10000;
			f.submit();
			}
		}


	function set_fecha(fecha)
		{
		var f=fecha.split('/');
		f=f[1]+'/'+f[0]+'/'+f[2];
		return new Date(f);
		}


	function es_numero_dia_valido(fecha, dias_validos)
		{
		var numero_dia = fecha.getDay(); // getDay devuelve entre 0 (domingo) y 6 (sabado)
		return (dias_validos.match(numero_dia));
		}

	function es_fecha_valida_por_blackouts(fecha_ida)
		{
		var string_blackouts = "{BLACKOUTS}";
		if (string_blackouts == '')
			{
			return 1;
			}
		var blackouts = string_blackouts.split(';'); 
		for (var n = 0; n < blackouts.length; n++)
			{
			var inicio_blackout = set_fecha(blackouts[n].split('-')[0]);
			var fin_blackout = set_fecha(blackouts[n].split('-')[1]);

			if (fecha_ida >= inicio_blackout && fecha_ida <= fin_blackout)
				{
				return 0;
				}
			}
		return 1;
		}

</script>



<form name="paso1_ezrez" action="/no_js.html" method="GET">
<div id="calendario">
	<input type="hidden" name="fecha1_dia" id="vuelos_fecha1_dia_ezrez" value="">
	<input type="hidden" name="fecha1_anomes" id="vuelos_fecha1_anomes_ezrez" value="">
	<input type="hidden" name="fecha2_dia" id="vuelos_fecha2_dia_ezrez" value="">
	<input type="hidden" name="fecha2_anomes" id="vuelos_fecha2_anomes_ezrez" value="">
	
	<input type="hidden" name="num_segmentos_interfaz" value="1">
	<input type="hidden" id="tipo_paso1" name="tipo_paso1" value="caja_ezrez">

	<input type="hidden" name="from_city2" value="{CODIGO_CIUDAD_DESTINO}">
	<input type="hidden" name="to_city2" value="">

	<input type="hidden" name="rand_check" value="">
	<input type="hidden" name="ida_vuelta" value="ida_vuelta">
	<input type="hidden" name="flex" value="1">
	<input type="hidden" name="num_habitaciones" value="1">
	<input type="hidden" name="otras_ciudades" value="">
	
	<input type="hidden" name="to_city1" id="vuelos_destino_vacaciones" value="{CODIGO_CIUDAD_DESTINO}">
	<input type="hidden" name="id_special" id="id_special" value="{ID_SPECIAL}">

	<div class="fila_1">

		<div class='bloque_origen' id='bloque_ciudad_origen_vacaciones'>
			<label for="vuelos_origen">{_LABEL_ORIGEN}</label>
			<div style="color: #333333; float: left; font-size: 11px; margin: 0;
    padding: 0; width: 160px;">{BLOQUE_ORIGEN}</div>
			{*BLOQUE_ORIGEN_FIJO}
				{ORIGEN}
				<input type='hidden' name='from_city1' id='vuelos_origen_vacaciones' value='{CODIGO_CIUDAD_ORIGEN}'>
			{/BLOQUE_ORIGEN_FIJO}
			{*BLOQUE_ORIGEN_VARIABLE}
			<select name="from_city1" id="vuelos_origen_vacaciones" {*BLOQUE_ACTUALIZA_CABINAS} onChange="vuelos_on_change_origen(this);"{/BLOQUE_ACTUALIZA_CABINAS}>
				<option value="">{_LABEL_SELECCIONE}</option>
				{LISTA_ORIGENES}
			</select>
			{/BLOQUE_ORIGEN_VARIABLE}
		</div>
	
		<div class="bloque_destino" id="bloque_ciudad_destino_vacaciones">
			<label for="vuelos_destino" id="label_vuelos_destino" >{_LABEL_DESTINO}</label>
			<div class="ciudad_destino">{CIUDAD_DESTINO}</div>		
		</div>

	</div>
	<br />
	<div class="fila_2">

		<div id="bloque_fecha_ida">
			<label for="vuelos_fecha_salida_ezrez" id="label_vuelos_fecha_salida_ezrez">{_LABEL_IDA}</label>
			{BLOQUE_IDA}
			{*BLOQUE_IDA_FECHA_VARIABLE}
			<input type="text" class="text fecha" name="vuelos_fecha_salida" width="80px" id="vuelos_fecha_salida_ezrez" value="" onChange="vuelos_set_fecha_from_text_ezrez(1, this.value);">
			<input type="hidden" class="text fecha" name="vuelos_fecha_salida_ddmmaaaa" id="vuelos_fecha_salida_ddmmaaaa_ezrez" onChange="vuelos_set_fecha_from_text_ezrez(1, this.value);">
			<img src="/images/common/calendario.jpg" id="cal1" class="calendario" alt="" width="25" height="20">
			<script type="text/javascript">
				Calendar.setup({
					inputField  : "vuelos_fecha_salida_ddmmaaaa_ezrez",
					ifFormat    : "%d/%m/%Y",
					button      : "cal1",
					minDate		: "{FECHA_MIN_CALENDARIO}",
					maxDate		: "{FECHA_MAX_CALENDARIO}",
					yearButtons	: false,
					id			: 1,
					validWeekDays : "{VALID_DEPARTURE_DAYS_CALENDARIO}",
					blackouts	:	"{BLACKOUTS}"
					});
				$('vuelos_fecha_salida_ezrez').onclick = $('cal1').onclick;
				vuelos_init_date_ida_ezrez("{FECHA_DESPLIEGUE_INICIAL_CALENDARIO}");
			</script>
			<input type="hidden" id="fechas_fijas" value="0" />
			{/BLOQUE_IDA_FECHA_VARIABLE}
			{*BLOQUE_IDA_FECHA_FIJA}
			<select name="vuelos_fecha_salida" id="vuelos_fecha_fija_salida_ezrez" onChange="vuelos_set_fecha_from_select_ezrez(1,this.value);">
				<option value="">{_LABEL_SELECCIONE}</option>
				{LISTA_FECHAS_FIJAS_IDA}
			</select>
			<input type="hidden" id="fechas_fijas" value="1" />
			<input type="hidden" id="vuelos_fecha_salida_ddmmaaaa_ezrez" />
			<input type="hidden" id="vuelos_fecha_salida_ezrez" />
			{/BLOQUE_IDA_FECHA_FIJA}
			
		</div>

		<div id="bloque_fecha_regreso">
			<label for="vuelos_fecha_regreso_ezrez" id="label_vuelos_fecha_regreso_ezrez">{_LABEL_REGRESO}</label>
			{BLOQUE_VUELTA}

			{*BLOQUE_VUELTA_FECHA_VARIABLE}
			<input type="hidden" class="text fecha" name="vuelos_fecha_regreso" width="80px" id="vuelos_fecha_regreso_ezrez" value="" disabled="disabled">
			<td><strong>{NOCHES} {_LABEL_DIAS_MAS}<strong></td>
			<input type="hidden" class="text fecha" name="vuelos_fecha_regreso_ddmmaaaa" id="vuelos_fecha_regreso_ddmmaaaa_ezrez">
			<script type="text/javascript">
				vuelos_init_date_vuelta_ezrez("{FECHA_DESPLIEGUE_INICIAL_CALENDARIO}");
			</script>
			{/BLOQUE_VUELTA_FECHA_VARIABLE}
			
			{*BLOQUE_VUELTA_FECHA_FIJA}
			<select name="vuelos_fecha_regreso" id="vuelos_fecha_fija_regreso_ezrez" onChange="vuelos_set_fecha_from_select_ezrez(2, this.value);">
				<option value="">{_LABEL_SELECCIONE}</option>
				{LISTA_FECHAS_FIJAS_VUELTA}
			</select>
			<input type="hidden" id="vuelos_fecha_regreso_ddmmaaaa_ezrez" />
			<input type="hidden" id="vuelos_fecha_regreso_ezrez" />
			{/BLOQUE_VUELTA_FECHA_FIJA}

		</div>

		

	</div>

	<div class="fila_3">
	<div id="bloque_cabina">
		  <label for="vuelos_cabina">{_LABEL_CABINA}</label>
			<select name="cabina" id="vuelos_cabina_ezrez">
				{*BLOQUE_CABINAS}
				<option value="Y" selected>{_LABEL_CABINA_TURISTA}</option>
				<option value="W">{_LABEL_CABINA_PREMIUM_ECONOMY}</option>
				<option value="J">{_LABEL_CABINA_EJECUTIVA}</option>
				{/BLOQUE_CABINAS}
			</select>
		</div>
		<div id="bloque_pasajeros">
		<div class="bloque_pasajeros_adultos"  >
			<label for="nadults" style="width:80px">{_PALABRA_NUMERO_ABREVIADO} {_LABEL_ADULTOS}</label> 
			
			{BLOQUE_ADULTOS}
			{*NUMERO_ADULTOS_FIJO}
				<input type="hidden" name="nadults" id="nadults" value="{NUMERO_ADULTOS}" />
				{NUMERO_ADULTOS}
				
			{/NUMERO_ADULTOS_FIJO}
			{*NUMERO_ADULTOS_VARIABLE}
				<select name="nadults" id="nadults">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
				</select>
			
			{/NUMERO_ADULTOS_VARIABLE}
		</div>

		<div class="bloque_pasajeros_ninos" style="margin-left:30px">
			<label for="nchildren">{_PALABRA_NUMERO_ABREVIADO} {_LABEL_NINOS}</label> 
			
			{BLOQUE_NINOS}
			{*NUMERO_NINOS_FIJO}
				<input type="hidden" name="nchildren" id="nchildren" value="{NUMERO_NINOS}" />
				{NUMERO_NINOS}
				
			{/NUMERO_NINOS_FIJO}
			{*NUMERO_NINOS_VARIABLE}
				<select name="nchildren" id="nchildren" onchange="muestra_edades_menores();">
					<option value="0">0</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>
			
			{/NUMERO_NINOS_VARIABLE}
		</div>
		
		
		<div class="bloque_pasajeros_infantes">
		{*BLOQUE_INFANTES}
			{*NUMERO_INFANTES_VARIABLE}
			<label for="ninfants">{_PALABRA_NUMERO_ABREVIADO} {_LABEL_INFANTES}</label> 
				<select name="ninfants" id="ninfants">
					<option value="0">0</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>
			
			{/NUMERO_INFANTES_VARIABLE}
			{*NUMERO_INFANTES_FIJO}
			<input type="hidden" name="ninfants" id="ninfants" value="0" />
			{/NUMERO_INFANTES_FIJO}
		</div>
		{/BLOQUE_INFANTES}
		</div>
	</div>
<div class="fila_4">
	{*MSG_NUMERO_ADULTOS_FIJO}
	{_MSG_CANTIDAD_FIJA_ADULTOS}
	{/MSG_NUMERO_ADULTOS_FIJO}
	
	{*MSG_NUMERO_NINOS_FIJO}
	{/MSG_NUMERO_NINOS_FIJO}
	</div>
	<div class='fila_5'>
		<div id="bloque_edad_menores_special">
		<label>{_LABEL_EDAD_MENORES}</label>
		<div class="mensaje_edad_menores">{_MSG_EXPLICATIVO_EDAD_NINOS}</div>
			<div class="bloque_edad_ninos" id="div_edad_menor1">
			<label>{_LABEL_NINO_1}</label>
				<select name="child_age1" id="child_age1">
					<option value="">{_LABEL_EDAD}</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
				
					
				</select>
				
			</div>
			<div class="bloque_edad_ninos" id="div_edad_menor2">
			<label>{_LABEL_NINO_2}</label>
				<select name="child_age2" id="child_age2">
					<option value="">{_LABEL_EDAD}</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
				</select>
			</div>
			<div class="bloque_edad_ninos_3" id="div_edad_menor3">
			<label>{_LABEL_NINO_3}</label>
				<select name="child_age3" id="child_age3">
					<option value="">{_LABEL_EDAD}</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
			</select>
			</div>
		</div>

	</div>

	{*BOTON_COMPRAR}
	<br />
	<div class="fila_6">
		<div class="button"><input class="button-process-small blue" style="width:137px" value="{_LABEL_COMPRAR_PROGRAMA}" title="Comprar programa" type="button" onClick="javascript:check_and_submit_compra_specials(document.paso1_ezrez)"></div>
	</div>
	{/BOTON_COMPRAR}

</div>	
</form>


<script type="text/javascript">

muestra_edades_menores();
</script>
