<script type="text/javascript" src="/js/cabinas_caja_compra_ezrez_data.js"></script>
<script type="text/javascript" src="/js/flex_ezrez_data.js"></script>
<script type="text/javascript">
	<!-- NUEVO -->
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
		
	function vuelos_on_change_origen_vacaciones(select_origen)
		{
		{_FUNCION_RUTAS_FLEX}('vuelos_origen_vacaciones', 'vuelos_destino_vacaciones', select_origen.form.elements['flex'], 'pregunta_flex_vacaciones');
		
		cabinas_set_cabinas('vuelos_origen_vacaciones', 'vuelos_destino_vacaciones', 'vuelos_cabina_ezrez', 'ezrez');
		vr_activa_desactiva_destinos('vuelos_origen_vacaciones', 'vuelos_destino_vacaciones');
		vr_activa_seleccione('vuelos_origen_vacaciones', 'vuelos_destino_vacaciones');
			
		var select_destino = $('vuelos_destino_vacaciones');
		if (select_destino.options[select_destino.selectedIndex].disabled)
			{
			select_destino.selectedIndex = 0;
			}
		}

	function vuelos_on_change_destino_vacaciones(select_destino)
		{
		if (vr_emulate_disabled_options_onChange('vuelos_destino_vacaciones'))
			{
			//acciones_combo_origen_destino(select_destino.form, select_destino, 1, "destino");
			//vuelos_check_select_for_otros_destinos(select_destino, 1, "destino");
			{_FUNCION_RUTAS_FLEX}('vuelos_origen_vacaciones', 'vuelos_destino_vacaciones', select_destino.form.elements["flex"], "pregunta_flex_vacaciones");
			cabinas_set_cabinas('vuelos_origen_vacaciones', 'vuelos_destino_vacaciones', 'vuelos_cabina_ezrez', 'ezrez');
			}
		}

	<!-- FIN NUEVO -->
	function refresh_fechas_ida_ezrez()
		{
		var pattern = /([0-9]{2})\/([0-9]{2})\/([0-9]{4})/;
		var res = pattern.exec($('vuelos_fecha_salida_ddmmaaaa_ezrez').value);
		$('vuelos_fecha_salida_ezrez').value = res[1] + '/' + get_meses_cortos( res[2]) + '/' + res[3];
		return;
		}

	function refresh_fechas_regreso_ezrez()
		{
		var pattern = /([0-9]{2})\/([0-9]{2})\/([0-9]{4})/;
		var res = pattern.exec($('vuelos_fecha_regreso_ddmmaaaa_ezrez').value);
		$('vuelos_fecha_regreso_ezrez').value = res[1] + '/' + get_meses_cortos( res[2]) + '/' + res[3];
		return;
		}

	function vuelos_set_fecha_from_text_ezrez(id, text)
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
			if( aux_ida_aaaammdd  >=  aux_regreso_aaaammmddd )
				{
				var f = $('vuelos_fecha_salida_ddmmaaaa_ezrez').value;
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
						
				$('vuelos_fecha_regreso_ddmmaaaa_ezrez').value = day + '/' + month + '/' + year;
				refresh_fechas_regreso_ezrez();						
				vuelos_set_fecha_from_calendar_ezrez(2, year, month, day);
				}
			vuelos_set_fecha_from_calendar_ezrez(id, ano, mes, dia);
			}
		else if(id == 2)
			{
			$('vuelos_fecha_regreso_ddmmaaaa_ezrez').value = dia + '/' + mes + '/' + ano;
			refresh_fechas_regreso_ezrez();
			vuelos_set_fecha_from_calendar_ezrez(id, ano, mes, dia);
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

	function vuelos_init_date_ida_ezrez()
		{
		var today = new Date();
		
		var milisecs = Date.parse(today);
		milisecs += 86400000 * {MIN_DIAS_ANTICIPO}; // Este 2o numero es la cantidad de dias en el futuro que queremos la fecha preseleccionada.
		
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

		if (!$('vuelos_fecha1_dia_ezrez').value || !$('vuelos_fecha1_anomes_ezrez').value)
			{
			$('vuelos_fecha1_dia_ezrez').value = day;
			$('vuelos_fecha1_anomes_ezrez').value = anomes;
			$('vuelos_fecha_salida_ddmmaaaa_ezrez').value = day + '/' + month + '/' + year;
			refresh_fechas_ida_ezrez();
			}
		}
	
	function vuelos_init_date_vuelta_ezrez()
		{
		var today = new Date();
		
		var milisecs = Date.parse(today);
		milisecs += 86400000 * ({MIN_DIAS_ANTICIPO} + 1); // Este 2o numero es la cantidad de dias en el futuro que queremos la fecha preseleccionada.
		
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
		
	 	if (!$('vuelos_fecha2_dia_ezrez').value || !$('vuelos_fecha2_anomes_ezrez').value)
			{
			$('vuelos_fecha2_dia_ezrez').value = day;
			$('vuelos_fecha2_anomes_ezrez').value = anomes;
			$('vuelos_fecha_regreso_ddmmaaaa_ezrez').value = day + '/' + month + '/' + year;
			refresh_fechas_regreso_ezrez();
			}
		}

	function check_and_submit_compra_ezrez(f)
		{
		var errores, i, elem, elem2, fecha_segmento1, fecha_segmento2, from, to, nadults, ninfants, nchildren;
		errores = '';
		from = to = '';
		// Chequeo de pasajeros
		// para forzar el ida y vuelta	
		var x = f.elements['to_city1'];
		f.elements['from_city2'].value = x.options[x.selectedIndex].value;
		x = f.elements['from_city1'];
		f.elements['to_city2'].value = x.options[x.selectedIndex].value;
		f.elements['num_segmentos_interfaz'].value = '2';
		
		var tipo_compra = get_tipo_compra(f);

		
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

		elem = f.elements['nmenores'];
		nmenores = 0;
		if (elem)
			{
			nmenores = parseInt(elem.options[elem.selectedIndex].value, 10);
			}

		elem = f.elements['ninfants'];
		ninfants = 0;
		if (elem)
			{
			ninfants = parseInt(elem.options[elem.selectedIndex].value, 10);
			}

		if (tipo_compra == 'vuelo_auto_hotel' || 
			tipo_compra == 'vuelo_hotel' ||
			tipo_compra == 'vuelo_auto')
			{
			if (nadults < ninfants)
				{
				errores += "{_ERROR_MAS_INFANTES_QUE_ADULTOS_JS}\n";
				}

			if (nadults + ninfants + nchildren > 9)
				{
				errores += "{_ERROR_DEMASIADOS_PASAJEROS_JS}\n";
				}

			// Chequeo de origen - destino
			//SOLO PARA VUELO
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
			}
		else
			{
			elem = eval("f.elements['to_city1']");
			if (elem && elem.options[elem.selectedIndex].value == '' || elem.options[elem.selectedIndex].value == 'otros_destinos')
				{
				errores += "{_ERROR_CIUDAD_DE_DESTINO_FALTANTE_JS}\n";
				}

			f.elements['nchildren'].value = f.elements['nmenores'].value;
			$('child_age1').value = $('menor_age1').value;
			$('child_age2').value = $('menor_age2').value;
			$('child_age3').value = $('menor_age3').value;
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
	
		if (tipo_compra != 'solo_auto')
			{
			elem = f.elements['num_habitaciones'];
			if (!elem.value || elem.value == 0)
				{
				errores += "{_ERROR_SIN_NUMERO_HABITACIONES_JS}\n";
				}
				
			if (nchildren > 0)
				{
				for (var i=1; i<=nchildren; i++)
					{
					var id = 'child_age' + i;

					if (f.elements[id].value == "")
						{
						errores += "{_ERROR_SIN_EDAD_MENORES_JS}\n";
						break;
						}

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
			if (tipo_compra == 'vuelo_auto_hotel' || 
				tipo_compra == 'vuelo_hotel' ||
				tipo_compra == 'vuelo_auto')
				{
				f.action = '/cgi-bin/ezrez/ezrez_aereo_terrestre/paso2.cgi';
				}
			else
				{
				f.action = '/cgi-bin/compra/compra_ezrez.cgi';
				}
			//if (f.elements['redirect_calendario'] && f.elements['redirect_calendario'].checked)
			//	{
			//	vuelos_completa_campos_redirect_calendario(f);
			//	}

			//processing_layer('cuerpo');
			//update_top_list('vuelos_origen', 'vuelos_destino');

			f.elements['rand_check'].value = Math.random() * 10000;
			f.submit();
			}
		}
	
	function muestra_edades_ninos()
		{
		var num_menores = $('nchildren_hotelauto').value;
		$('bloque_edad_ninos').style.display = (num_menores > 0) ? 'block' : 'none';
		$('div_edad_nino1').style.display = (num_menores > 0) ? 'block' : 'none';
		$('div_edad_nino2').style.display = (num_menores > 1) ? 'block' : 'none';
		$('div_edad_nino3').style.display = (num_menores > 2) ? 'block' : 'none';
		
		}			
	function muestra_edades_menores()
		{
		var num_menores = $('nmenores_hotelauto').value;
		$('bloque_edad_menores').style.display = (num_menores > 0) ? 'block' : 'none';
		$('div_edad_menor1').style.display = (num_menores > 0) ? 'block' : 'none';
		$('div_edad_menor2').style.display = (num_menores > 1) ? 'block' : 'none';
		$('div_edad_menor3').style.display = (num_menores > 2) ? 'block' : 'none';
		
		}

	function habilita_lista_destino(no_habilitar_todo)
		{
		var origenes = $('vuelos_origen_vacaciones');
		var destinos = $('vuelos_destino_vacaciones');
		destinos.disabled = false;

		if (no_habilitar_todo)
			{
			vr_activa_desactiva_destinos(origenes, destinos);
			if (destinos.options[destinos.selectedIndex].disabled)
				{
				destinos.selectedIndex = 0;
				}
			}
		else
			{
			for (var index = 0; index < destinos.options.length; index++)
				{
				var option = destinos.options[index];
				option.disabled = false;
				option.style.color = '#6C7C89';
				}
			}
		}	
	
	function deshabilita_lista_destino()
		{
		var destinos = $('vuelos_destino_vacaciones');
		destinos.disabled = true;

		var origenes = $('vuelos_origen_vacaciones');
		if (origenes.options[origenes.selectedIndex].value != "")
			{
			habilita_lista_destino(1);
			}
		else
			{
			//setSelectValue($('vuelos_destino_vacaciones'), "");
			destinos.selectedIndex = 0;
			}
		}
		
	function muestra_campos(f)
		{
		var tipo_compra = get_tipo_compra(f);
		
		$('bloque_habitacion').style.display = 'block';
		$('bloque_vertical_3').style.display = 'block';
		$('bloque_edad_ninos').style.display = 'block';
		$('bloque_edad_menores').style.display = 'block';
		$('bloque_pasajeros_hotelauto').style.display = 'block';
		$('bloque_hora_retiro').style.display = 'block';
		$('bloque_hora_devolucion').style.display = 'block';
		$('bloque_ciudad_origen_vacaciones').style.display = 'block';
		$('bloque_cabina_vacaciones').style.display = 'block';
		$('bloque_fecha_busqueda_vacaciones').style.display = 'block';
		$('bloque_ninos').style.display = 'block';
		$('bloque_infantes').style.display = 'block';
		$('bloque_menores').style.display = 'none';

		if (tipo_compra == 'solo_auto')
			{
			$('label_vuelos_destino').innerHTML = '{_LABEL_CIUDAD_RETIRO}';
			$('label_vuelos_fecha_salida_ezrez').innerHTML = '{_LABEL_FECHA_RETIRO_AUTO}';
			$('label_vuelos_fecha_regreso_ezrez').innerHTML = '{_LABEL_FECHA_DEVOLUCION_AUTO}';
			$('label_hora_retiro_auto').innerHTML = '{_LABEL_HORA}';
			$('label_hora_devolucion_auto').innerHTML = '{_LABEL_HORA}';
			$('bloque_habitacion').style.display = 'none';
			$('bloque_vertical_3').style.display = 'none';
			$('bloque_edad_menores').style.display = 'none';
			$('bloque_cabina_vacaciones').style.display = 'none';
			$('bloque_pasajeros_hotelauto').style.display = 'none';
			$('bloque_ciudad_origen_vacaciones').style.display = 'none';
			$('bloque_fecha_busqueda_vacaciones').style.display = 'none';
			$('bloque_menores').style.display = 'none';
			$('bloque_infantes').style.display = 'none';
			$('bloque_ninos').style.display = 'none';
			$('edades_adultos').style.display = 'none';
			}
		else if (tipo_compra == 'solo_hotel')
			{
			$('label_vuelos_destino').innerHTML = '{_LABEL_HACIA}';
			$('label_vuelos_fecha_salida_ezrez').innerHTML = '{_LABEL_FECHA_LLEGADA}';
			$('label_vuelos_fecha_regreso_ezrez').innerHTML = '{_LABEL_FECHA_REGRESO}';
			$('bloque_hora_retiro').style.display = 'none';
			$('bloque_hora_devolucion').style.display = 'none';
			$('bloque_edad_menores').style.display = 'none';
			$('bloque_ciudad_origen_vacaciones').style.display = 'none';
			$('bloque_cabina_vacaciones').style.display = 'none';
			$('bloque_fecha_busqueda_vacaciones').style.display = 'none';
			$('bloque_menores').style.display = 'block';
			$('bloque_infantes').style.display = 'none';
			$('bloque_ninos').style.display = 'none';
			$('edades_adultos').style.display = 'none';
			}
		else if (tipo_compra == 'hotel_auto')
			{
			$('label_vuelos_fecha_salida_ezrez').innerHTML = '{_LABEL_FECHA_LLEGADA}';
			$('label_vuelos_fecha_regreso_ezrez').innerHTML = '{_LABEL_FECHA_REGRESO}';
			$('bloque_cabina_vacaciones').style.display = 'none';
			$('bloque_ciudad_origen_vacaciones').style.display = 'none';
			$('bloque_fecha_busqueda_vacaciones').style.display = 'none';
			$('bloque_ninos').style.display = 'none';
			$('bloque_infantes').style.display = 'none';
			$('bloque_menores').style.display = 'block';
			$('edades_adultos').style.display = 'none';
			habilita_lista_destino();
			}
		else if (tipo_compra == 'vuelo_auto')
			{
			$('label_vuelos_destino').innerHTML = '{_LABEL_HACIA}';
			$('label_vuelos_fecha_salida_ezrez').innerHTML = '{_LABEL_FECHA_IDA}';
			$('label_vuelos_fecha_regreso_ezrez').innerHTML = '{_LABEL_FECHA_REGRESO}';
			$('bloque_habitacion').style.display = 'none';
			$('bloque_hora_retiro').style.display = 'none';
			$('bloque_hora_devolucion').style.display = 'none';
			$('bloque_ninos').style.display = 'block';
			$('bloque_infantes').style.display = 'block';
			$('bloque_menores').style.display = 'none';
			$('msg_explicativo_edad_ninos').style.display = 'none';
			$('edades_adultos').style.display = 'block';
			}
		else if (tipo_compra == 'vuelo_hotel')
			{
			$('label_vuelos_destino').innerHTML = '{_LABEL_HACIA}';
			$('label_vuelos_fecha_salida_ezrez').innerHTML = '{_LABEL_FECHA_IDA}';
			$('bloque_hora_retiro').style.display = 'none';
			$('bloque_hora_devolucion').style.display = 'none';
			$('msg_explicativo_edad_ninos').style.display = 'none';
			$('edades_adultos').style.display = 'block';
			}
		else if (tipo_compra == 'vuelo_auto_hotel')
			{
			$('label_vuelos_destino').innerHTML = '{_LABEL_HACIA}';
			$('label_vuelos_fecha_salida_ezrez').innerHTML = '{_LABEL_FECHA_IDA}';
			$('label_vuelos_fecha_regreso_ezrez').innerHTML = '{_LABEL_FECHA_REGRESO}';
			$('bloque_hora_retiro').style.display = 'none';
			$('bloque_hora_devolucion').style.display = 'none';
			$('msg_explicativo_edad_ninos').style.display = 'none';
			$('edades_adultos').style.display = 'block';
			}
	
		$('nadults_hotelauto').value = "2";
		$('nchildren_hotelauto').value = "0";
		$('nmenores_hotelauto').value = "0";
		$('child_age1').value = "";
		$('child_age2').value = "";
		$('child_age3').value = "";
		$('menor_age1').value = "";
		$('menor_age2').value = "";
		$('menor_age3').value = "";
		$('num_habitaciones').value = "1";
		$('vuelos_destino_vacaciones').value = "";
		
		muestra_edades_menores();
		muestra_edades_ninos();
		
		}

	function get_tipo_compra(f)
		{
		for (var i=0; i <f.tipo_compra_ezrez.length; i++)
			{
			if (f.tipo_compra_ezrez[i].checked)
				{
				return f.tipo_compra_ezrez[i].value;
				}
			}
		}

</script>

<form name="paso1_ezrez" action="/no_js.html" method="GET">
  <div>
  <input type="hidden" name="fecha1_dia" id="vuelos_fecha1_dia_ezrez" value="">
  <input type="hidden" name="fecha1_anomes" id="vuelos_fecha1_anomes_ezrez" value="">
  <input type="hidden" name="fecha2_dia" id="vuelos_fecha2_dia_ezrez" value="">
  <input type="hidden" name="fecha2_anomes" id="vuelos_fecha2_anomes_ezrez" value="">
  <input type="hidden" name="otras_ciudades" value="">
  <input type="hidden" name="num_segmentos_interfaz" value="1">
  <input type="hidden" id="tipo_paso1" name="tipo_paso1" value="caja_ezrez">
  <input type="hidden" name="from_city2" value="">
  <input type="hidden" name="to_city2" value="">
  <input type="hidden" name="rand_check" value="">
  <input type="hidden" name="ida_vuelta" value="ida_vuelta">
  </div>
  
  <div id="contenedor_programas">
  
    <div id="bloque_horizontal_1_hotel_auto">
      <div id="bloque_texto_titulo_hotel">
        <p>{_FRASE_RESERVE_SU_HOTEL}</p>
      </div>
      <div id="bloque_texto_titulo_auto">
        <p>{_FRASE_ARRIENDE_SU_AUTO}</p>
      </div>
      <div id="bloque_texto_titulo_vacaciones">
        <p>{_FRASE_ELEGIR_COMBINACION}</p>
      </div>
      <div class="bloque_ayuda"><a href="javascript:showLightbox('hotel');"><img src="/images/common/help_icon2.gif" width="15" height="15" alt='{_AYUDA}'></a></div>
    </div>
   
    <div id="bloque_horizontal_2_hotel_auto">
      <div class="bloque_ida_vuelta" id="bloque_vuelo_hotel">
        <input type="radio" name="tipo_compra_ezrez"  value="vuelo_hotel" onClick="muestra_campos(this.form);">
        <span class="label_radio">{_LABEL_VUELO_HOTEL}</span>
      </div>
      <div class="bloque_ida_vuelta" id="bloque_vuelo_auto">
        <input type="radio" name="tipo_compra_ezrez"  value="vuelo_auto" onClick="muestra_campos(this.form);">
        <span class="label_radio">{_LABEL_VUELO_AUTO}</span><br>
      </div>
      <div class="bloque_ida_vuelta" id="bloque_solo_hotel">
        <input type="radio" name="tipo_compra_ezrez"  value="solo_hotel" checked onClick="muestra_campos(this.form);">
        <span class="label_radio">{_LABEL_SOLO_HOTEL}</span>
      </div>
      <div class="bloque_ida_vuelta" id="bloque_solo_auto">
        <input type="radio" name="tipo_compra_ezrez"  value="solo_auto" onClick="muestra_campos(this.form);">
        <span class="label_radio">{_LABEL_SOLO_AUTO}</span>
      </div>
      <div class="bloque_ida_vuelta" id="bloque_hotel_auto">
        <input type="radio" name="tipo_compra_ezrez"  value="hotel_auto" onClick="muestra_campos(this.form);">
        <span class="label_radio">{_LABEL_HOTEL_AUTO}</span>
        </div>
      <div class="bloque_vuelo_auto_hotel" id="bloque_vuelo_auto_hotel">
        <input type="radio" name="tipo_compra_ezrez"  value="vuelo_auto_hotel" onClick="muestra_campos(this.form);">
        <span class="label_radio">{_LABEL_VUELO_AUTO_HOTEL}</span>
      </div>
    </div>
     
    <div id="bloque_horizontal_3_hotel_auto">
      <div id="bloque_vertical_1">
        <div id='bloque_ciudad_origen_vacaciones'>
          <label for="vuelos_origen">{_LABEL_DESDE}</label>
          <select name="from_city1" id="vuelos_origen_vacaciones" onChange="vuelos_on_change_origen_vacaciones(this);">
            <option value="">{_LABEL_SELECCIONE}</option>
            
					{+TEMPLATE("ezrez/paso1/lista_origenes_preferentes.tpl")}
					{LISTA_ORIGENES}
				
          </select>
        </div>
        <div id="bloque_ciudad_destino_vacaciones">
          <label for="vuelos_destino" id="label_vuelos_destino" >{_LABEL_HACIA}</label>
          <select name="to_city1" id="vuelos_destino_vacaciones" disabled onChange="vuelos_on_change_destino_vacaciones(this);">
            <option value="">{_LABEL_SELECCIONE}</option>
            
					{+TEMPLATE("ezrez/paso1/lista_destinos_preferentes.tpl")}
					{LISTA_DESTINOS}
					
          </select>
        </div>
      </div>
      <div id="bloque_vertical_2">
        <div id="bloque_fecha_ida">
          <label for="vuelos_fecha_salida_ezrez" id="label_vuelos_fecha_salida_ezrez">{_LABEL_FECHA_LLEGADA}</label>
          <input type="text" class="text fecha" name="vuelos_fecha_salida" id="vuelos_fecha_salida_ezrez" value="" onChange="vuelos_set_fecha_from_text_ezrez(1, this.value);">
          <input type="hidden" class="text fecha" name="vuelos_fecha_salida_ddmmaaaa" id="vuelos_fecha_salida_ddmmaaaa_ezrez" onChange="vuelos_set_fecha_from_text_ezrez(1, this.value);">
          <img src="/images/common/calendario.jpg" id="cal5" class="calendario" alt="" width="25" height="20">
          <script type="text/javascript">
				Calendar.setup({
					inputField  : "vuelos_fecha_salida_ddmmaaaa_ezrez",
					ifFormat    : "%d/%m/%Y",
					button      : "cal5",
					minDate		: "{FECHA_MIN}",
					maxDate		: "{FECHA_MAX}",
					yearButtons	: false,
					id			: 5
					});

				$('vuelos_fecha_salida_ezrez').onclick = $('cal5').onclick;
				vuelos_init_date_ida_ezrez();
			</script>
        </div>
        <div id="bloque_hora_retiro">
          <label for="hora_retiro" id="label_hora_retiro_auto">{_LABEL_HORA}</label>
          <select name="time1">
            <option value="1">01:00</option>
            <option value="2">02:00</option>
            <option value="3">03:00</option>
            <option value="4">04:00</option>
            <option value="5">05:00</option>
            <option value="6">06:00</option>
            <option value="7">07:00</option>
            <option value="8">08:00</option>
            <option value="9">09:00</option>
            <option value="10" selected="selected">10:00</option>
            <option value="11">11:00</option>
            <option value="12">12:00</option>
            <option value="13">13:00</option>
            <option value="14">14:00</option>
            <option value="15">15:00</option>
            <option value="16">16:00</option>
            <option value="17">17:00</option>
            <option value="18">18:00</option>
            <option value="19">19:00</option>
            <option value="20">20:00</option>
            <option value="21">21:00</option>
            <option value="22">22:00</option>
            <option value="23">23:00</option>
            <option value="24">24:00</option>
          </select>
        </div>
        <div id="bloque_fecha_regreso">
          <div id="vuelos_panel_fecha_regreso_ezrez">
            <label for="vuelos_fecha_regreso_ezrez" id="label_vuelos_fecha_regreso_ezrez">{_LABEL_FECHA_REGRESO}</label>
            <input type="text" class="text fecha" name="vuelos_fecha_regreso" id="vuelos_fecha_regreso_ezrez" value="" onChange="vuelos_set_fecha_from_text_ezrez(2, this.value);">
            <input type="hidden" class="text fecha" name="vuelos_fecha_regreso_ddmmaaaa" id="vuelos_fecha_regreso_ddmmaaaa_ezrez" value="" onChange="vuelos_set_fecha_from_text_ezrez(2, this.value);" >
            <img src="/images/common/calendario.jpg" class="calendario" id="cal6" alt="" width="25" height="20">
            <script type="text/javascript">
					Calendar.setup({
						inputField  : "vuelos_fecha_regreso_ddmmaaaa_ezrez",
						ifFormat    : "%d/%m/%Y",
						button      : "cal6",
						minDate		: "{FECHA_MIN}",
						maxDate		: "{FECHA_MAX}",
						yearButtons	: false,
						id			: 6
						});
					$('vuelos_fecha_regreso_ezrez').onclick = $('cal6').onclick;
					vuelos_init_date_vuelta_ezrez();
				</script>
          </div>
        </div>
        <div id="bloque_hora_devolucion">
          <label for="hora_devolucion" id="label_hora_devolucion_auto">{_LABEL_HORA}</label>
          <select name="time2">
            <option value="1">01:00</option>
            <option value="2">02:00</option>
            <option value="3">03:00</option>
            <option value="4">04:00</option>
            <option value="5">05:00</option>
            <option value="6">06:00</option>
            <option value="7">07:00</option>
            <option value="8">08:00</option>
            <option value="9">09:00</option>
            <option value="10" selected="selected">10:00</option>
            <option value="11">11:00</option>
            <option value="12">12:00</option>
            <option value="13">13:00</option>
            <option value="14">14:00</option>
            <option value="15">15:00</option>
            <option value="16">16:00</option>
            <option value="17">17:00</option>
            <option value="18">18:00</option>
            <option value="19">19:00</option>
            <option value="20">20:00</option>
            <option value="21">21:00</option>
            <option value="22">22:00</option>
            <option value="23">23:00</option>
            <option value="24">24:00</option>
          </select>
        </div>
        <div id="bloque_fecha_busqueda_vacaciones">
          <div id="pregunta_flex_vacaciones_on" class="bloque_fecha_alternativa">
            <input class="flotar_izq" type="radio" name="flex" id="r_flex_var_1" value="1">
            <span class="label_radio" onClick="$('r_flex_var_1').checked = 1;">{_LABEL_FECHA_PRECIO}</span> </div>
          <div id="pregunta_flex_vacaciones_off" class="bloque_fecha_exacta">
            <input class="flotar_izq" type="radio" name="flex" id="r_flex_var_0" value="0" checked>
            <span class="label_radio" onClick="$('r_flex_var_0').checked = 1;">{_LABEL_FECHA_EXACTA}</span> </div>
        </div>
      </div>
      <div id="bloque_vertical_3">
        <div id="bloque_cabina_vacaciones">
          <label for="vuelos_cabina">{_LABEL_CABINA}</label>
          <select name="cabina" id="vuelos_cabina_ezrez">
            <option value="Y" selected>{_LABEL_CABINA_TURISTA}</option>
            <option value="W">{_LABEL_CABINA_PREMIUM_ECONOMY}</option>
            <option value="J">{_LABEL_CABINA_EJECUTIVA}</option>
          </select>
        </div>
        <div id="bloque_habitacion">
          <label for="num_habitaciones">{_LABEL_NUM_HABITACIONES}</label>
          <select name="num_habitaciones" id="num_habitaciones">
            <option value="1" selected="selected">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
          </select>
        </div>
        <div id="bloque_pasajeros_hotelauto">
          <div class="bloque_adultos">
            <label for="vuelos_adultos">{_PALABRA_NUMERO_ABREVIADO} {_LABEL_ADULTOS}</label>
            <p>
              <select name="nadults" id="nadults_hotelauto">
                <option value="1">1</option>
                <option value="2" selected="selected">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
              </select>
            </p>
            <div id="edades_adultos" class="texto_edad">{_LABEL_ADULTOS_CAJA}</div>
          </div>
          <div class="bloque_ninos" id="bloque_ninos">
            <label for="nchildren">{_PALABRA_NUMERO_ABREVIADO} {_LABEL_NINOS}</label>
            <p>
              <select name="nchildren" id="nchildren_hotelauto" onchange="muestra_edades_ninos();">
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
              </select>
            </p>
            <div class="texto_edad">{_LABEL_NINOS_CAJA}</div>
          </div>
          <div class="bloque_infantes" id="bloque_infantes">
            <label for="ninfants">{_PALABRA_NUMERO_ABREVIADO} {_LABEL_INFANTES}</label>
            <p>
              <select name="ninfants" id="ninfant_hotelauto">
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
              </select>
            </p>
            <div class="texto_edad">{_ANO}</div>
          </div>
          <div class="bloque_menores" id="bloque_menores">
            <label for="nmenores">{_PALABRA_NUMERO_ABREVIADO} {_LABEL_MENORES}</label>
            <p>
              <select name="nmenores" id="nmenores_hotelauto" onchange="muestra_edades_menores()">
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
              </select>
            </p>
          </div>
        </div>
        <div id="bloque_edad_ninos">
          <label>{_LABEL_EDAD_MENORES}</label>
          <div id="msg_explicativo_edad_ninos" class="mensaje_edad_menores">{_MSG_EXPLICATIVO_EDAD_NINOS}</div>
          <div class="bloque_edad_ninos" id="div_edad_nino1">
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
          <div class="bloque_edad_ninos" id="div_edad_nino2">
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
          <div class="bloque_edad_ninos_3" id="div_edad_nino3">
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
        <div id="bloque_edad_menores">
          <label>{_LABEL_EDAD_MENORES}</label>
          <div class="bloque_edad_ninos" id="div_edad_menor1">
            <label>{_LABEL_NINO_1}</label>
            <select name="menor_age1" id="menor_age1">
              <option value="">{_LABEL_EDAD}</option>
              <option value="2">0</option>
              <option value="2">1</option>
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
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>
              <option value="16">16</option>
              <option value="17">17</option>
            </select>
          </div>
          <div class="bloque_edad_ninos" id="div_edad_menor2">
            <label>{_LABEL_NINO_2}</label>
            <select name="menor_age2" id="menor_age2">
              <option value="">{_LABEL_EDAD}</option>
              <option value="2">0</option>
              <option value="2">1</option>
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
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>
              <option value="16">16</option>
              <option value="17">17</option>
            </select>
          </div>
          <div class="bloque_edad_ninos_3" id="div_edad_menor3">
            <label>{_LABEL_NINO_3}</label>
            <select name="menor_age3" id="menor_age3">
              <option value="">{_LABEL_EDAD}</option>
              <option value="2">0</option>
              <option value="2">1</option>
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
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>
              <option value="16">16</option>
              <option value="17">17</option>
            </select>
          </div>
        </div>
      </div>
    </div>
    <div id="bloque_horizontal_4_hotel_auto"><a class="button-page blue" href="javascript:check_and_submit_compra_ezrez(document.paso1_ezrez);">{_LABEL_BUSCAR}</a></div>
  </div>
  <!--</div> -->
</form>
<script type="text/javascript">
	muestra_campos(document.paso1_ezrez);
	muestra_edades_menores();
	muestra_edades_ninos();
</script>
