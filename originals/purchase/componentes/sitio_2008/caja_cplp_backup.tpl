<script type="text/javascript">
	function canje_lanpass_set_fecha_from_text(id, text)
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

			canje_lanpass_set_fecha_from_calendar(id, '', '', '');
			return ;
			}
		
		canje_lanpass_set_fecha_from_calendar(id, ano, mes, dia);
		}

	function canje_lanpass_set_fecha_from_calendar(id, ano, mes, dia)
		{
		var id_anomes = 'canje_lanpass_fecha' + id + '_anomes';
		var id_dia = 'canje_lanpass_fecha' + id + '_dia';

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

	function canje_lanpass_init_date_ida()
		{
		var today = new Date();
		
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

		if (!$('canje_lanpass_fecha1_dia').value || !$('canje_lanpass_fecha1_anomes').value)
			{
			$('canje_lanpass_fecha1_dia').value = day;
			$('canje_lanpass_fecha1_anomes').value = anomes;

			$('canje_lanpass_fecha_salida').value = day + '/' + month + '/' + year;
			}
		}
	function canje_lanpass_init_date_vuelta()
		{
		var today = new Date();
		
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
		
	 	if (!$('canje_lanpass_fecha2_dia').value || !$('canje_lanpass_fecha2_anomes').value)
			{
			$('canje_lanpass_fecha2_dia').value = day;
			$('canje_lanpass_fecha2_anomes').value = anomes;

			$('canje_lanpass_fecha_regreso').value = day + '/' + month + '/' + year;
			}
		}

	function canje_lanpass_check_and_submit(f)
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
/* comentado por jcaracci ya que los infants ahora van en un campo hidden con valor=0

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
*/
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
		if (1)//getRadioValue(f.elements['ida_vuelta']) == 'ida_vuelta')
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
			canje_lanpass_completa_campos_hidden(f);
	
			f.action = '/cgi-bin/cplp/paso2{VERSION_CGI}.cgi';
			//if (f.elements['redirect_calendario'] && f.elements['redirect_calendario'].checked)
			//	{
			//	canje_lanpass_completa_campos_redirect_calendario(f);
			//	}

			processing_layer('cuerpo');

			f.elements['rand_check'].value = Math.random() * 10000;
			f.submit();
			}
		}
	function canje_lanpass_completa_campos_hidden(f)
		{
		var x;
		
		if (1)//getRadioValue(f.elements['ida_vuelta']) == 'ida_vuelta')
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
	function canje_lanpass_set_ida_y_vuelta(value)
		{
		if (value == 'solo_ida')
			{
			$('canje_lanpass_panel_fecha_regreso').style.visibility = 'hidden';
			}
		else
			{
			$('canje_lanpass_panel_fecha_regreso').style.visibility = 'visible';
			}
		}
	function canje_lanpass_on_change_origen(select_origen)
		{
		
		cabinas_set_cabinas('canje_lanpass_origen', 'canje_lanpass_destino', 'canje_lanpass_cabina');
		vr_activa_desactiva_destinos('canje_lanpass_origen', 'canje_lanpass_destino');
		vr_activa_seleccione('canje_lanpass_origen', 'canje_lanpass_destino');
			
		var select_destino = $('canje_lanpass_destino');
		if (select_destino.options[select_destino.selectedIndex].disabled)
			{
			select_destino.selectedIndex = 0;
			}
		}

	function canje_lanpass_on_change_destino(select_destino)
		{
		if (vr_emulate_disabled_options_onChange('canje_lanpass_destino'))
			{
			//acciones_combo_origen_destino(select_destino.form, select_destino, 1, "destino");


			cabinas_set_cabinas('canje_lanpass_origen', 'canje_lanpass_destino', 'canje_lanpass_cabina');
			}
		}
</script>

<br>
<!--<p class="negrita nota_cabecera">{_LABEL_KMS_FECHA}: <em>25.000 kms.</em></p>-->

<div class="links">
	{_FRASE_DEST_LP}
	<a href="/cgi-bin/compra_kilometros/paso1.cgi" class="especial">{_COMPRA_KMS}</a> |
	<a href="/lanpass/canjee_kms/tabla_premios.html" class="especial">{_LABEL_TABLA_PREMIOS}</a><!-- |
	<a href="/lanpass/index.html" class="especial">{_FRASE_OTROS_SERV}</a>-->
</div>

<form name="form_canje_lanpass" action="/no_js.html" method="GET">
	<div class="separador_largo">
	<input type="hidden" name="fecha1_dia" id="canje_lanpass_fecha1_dia" value="">
	<input type="hidden" name="fecha1_anomes" id="canje_lanpass_fecha1_anomes" value="">
	<input type="hidden" name="fecha2_dia" id="canje_lanpass_fecha2_dia" value="">
	<input type="hidden" name="fecha2_anomes" id="canje_lanpass_fecha2_anomes" value="">
	
	<input type="hidden" name="otras_ciudades" value="">
	<input type="hidden" name="num_segmentos_interfaz" value="1">
	<input type="hidden" name="tipo_paso1" value="caja">

	<input type="hidden" name="from_city2" value="">
	<input type="hidden" name="to_city2" value="">

	<input type="hidden" name="rand_check" value="">

		<div class="bloque1_2">
			<label for="canje_lanpass_origen">{_LABEL_DESDE}</label>
			<select name="from_city1" id="canje_lanpass_origen" onChange="canje_lanpass_on_change_origen(this);">
				<option value="">{_LABEL_SELECCIONE}</option>
				{LISTA_ORIGENES}
			</select>
		</div>

		<div class="bloque1_2">
			<label for="canje_lanpass_destino">{_LABEL_HACIA}</label>
			<select name="to_city1" id="canje_lanpass_destino" onChange="canje_lanpass_on_change_destino(this);">
				<option value="">{_LABEL_SELECCIONE}</option>
				{LISTA_DESTINOS}
			</select>
		</div>
								
		<div class="clear_fix"></div>
	</div>
							
	<div class="separador_corto">
							
		<div class="bloque1_3 ancho">
			<label for="canje_lanpass_fecha_salida">{_LABEL_FECHA_IDA}</label>
			<input type="text" class="text fecha" name="canje_lanpass_fecha_salida" id="canje_lanpass_fecha_salida" value="" onChange="canje_lanpass_set_fecha_from_text(1, this.value);">
			<img src="/images/common/calendario.jpg" id="cal3" class="calendario" alt="" width="25" height="20">
			<script type="text/javascript">
				Calendar.setup({
					inputField  : "canje_lanpass_fecha_salida",
					ifFormat    : "%d/%m/%Y",
					button      : "cal3",
					minDate		: "{FECHA_MIN}",
					maxDate		: "{FECHA_MAX}",
					yearButtons	: false,
					id			: 3
					});
					
				$('canje_lanpass_fecha_salida').onclick = $('cal3').onclick;
				canje_lanpass_init_date_ida();
			</script>
		</div>
								
		<div class="bloque1_3 ancho">
		<div id="canje_lanpass_panel_fecha_regreso">
			<label for="canje_lanpass_fecha_regreso">{_LABEL_FECHA_REGRESO}</label>
			<input type="text" class="text fecha" name="canje_lanpass_fecha_regreso" id="canje_lanpass_fecha_regreso" value="" onChange="canje_lanpass_set_fecha_from_text(2, this.value);">
			<img src="/images/common/calendario.jpg" class="calendario" id="cal4" alt="" width="25" height="20">
			<script type="text/javascript">
				Calendar.setup({
					inputField  : "canje_lanpass_fecha_regreso",
					ifFormat    : "%d/%m/%Y",
					button      : "cal4",
					minDate		: "{FECHA_MIN}",
					maxDate		: "{FECHA_MAX}",
					yearButtons	: false,
					id			: 4
					});

				$('canje_lanpass_fecha_regreso').onclick = $('cal4').onclick;
				canje_lanpass_init_date_vuelta();
			</script>
		</div>
		</div>
								
		<div class="bloque1_3 delgado">
			<label for="canje_lanpass_cabina">{_LABEL_CABINA}</label>
			<p>
			<select name="cabina" id="canje_lanpass_cabina">
				<option value="Y" selected>{_LABEL_CABINA_TURISTA}</option>
				<option value="J">{_LABEL_CABINA_EJECUTIVA}</option>
			</select>
			</p>
		</div>
								
		<div class="clear_fix"></div>
							
		<br>
	
		<div class="clear_fix"></div>
	</div>
							
	<div class="separador_corto no_bg">
		<div class="bloque1_3">
			<label for="canje_lanpass_adultos">{_LABEL_ADULTOS} <span class="no_negrita">(+12)</span></label>
			<p>
			<select name="nadults" id="canje_lanpass_adultos">
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
		</div>
								
		<div class="bloque1_3">
			<label for="canje_lanpass_ninos">{_LABEL_NINOS} <span class="no_negrita">(2-11)</span></label>
			<p>
				<select name="nchildren" id="canje_lanpass_ninos">
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
		</div>
		<div class="bloque1_3">
			<input type="hidden" name="ninfants" id="canje_lanpass_infantes" value="0">
	<!--							
			<label for="canje_lanpass_infantes">{_LABEL_INFANTES} <span class="no_negrita">(0-1)</span></label>
			<p>
				<select name="ninfants" id="canje_lanpass_infantes">
					<option value="0">0</option>
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
	-->
		</div>
		<div class="clear_fix"></div>
		<div class="boton_rojo">
			<img src="/images/common/borde_der_boton_rojo.jpg" alt="" width="6" height="20">
			<a href="javascript:canje_lanpass_check_and_submit(document.form_canje_lanpass);" class="btn_rojo">{_PASO1_COL_BUSCA_VLO}</a>
			<img src="/images/common/borde_izq_boton_rojo.jpg" alt="" width="6" height="20">
		</div>
					
	</div>
</form>
