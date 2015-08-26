<script type="text/javascript">

	var regexp = /^\d*$/;

	function retros_set_fecha_from_text(text)
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
			if (ano < 2005 || ano > 3000)
				{
				errores++;
				}
			}

		// En caso de error dejo las fecha internas en vacio
		if (errores)
			{
			alert ("{_ERROR_FECHA_IDA_INVALIDA_JS}");
			
			retros_set_fecha_from_calendar(1, '', '', '');
			return;
			}
			
		retros_set_fecha_from_calendar(1, ano, mes, dia);
		}

	function retros_set_fecha_from_calendar(id, ano, mes, dia)
		{
		var id_anomes = 'retros_fecha' + id + '_anomes';
		var id_dia = 'retros_fecha' + id + '_dia';

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

	function retros_check_and_submit(f)
		{
		var valid_tag = regexp.exec(f.vuelo.value);

		var errores = '';

		// Chequeo de origen destino
		if (f.origen.value == '')
			{
			errores += "{_ERROR_CIUDAD_DE_ORIGEN_FALTANTE_JS}\n";
			}
		if (f.destino.value == '')
			{
			errores += "{_ERROR_CIUDAD_DE_DESTINO_FALTANTE_JS}\n";
			}

		/*if (f.fecha1_dia.value == '')
			{
			alert("{_MSG_SELECCIONE_DIA_JS}");
			return;
			}
		if (f.fecha1_anomes.value == '')
			{
			alert("{_MSG_SELECCIONE_MES_JS}");
			return;
			}*/

		var fecha = f.fecha1_anomes.value + '-' + f.fecha1_dia.value;
		if (!fecha_valida_iso(fecha))
			{
			errores += "{_MSG_SELECCIONE_DIA_JS}\n{_MSG_SELECCIONE_MES_JS}\n";
			}
		if (f.origen.value == f.destino.value)
			{
			errores += "{_MSG_ORIG_DEST_JS}\n";
			}
		if (!valid_tag)
			{
			errores += "{_MSG_ONLY_NUM_JS}\n";
			}

		// Despliego errores o avanzo al siguiente paso
		if (errores.length > 0)
			{
			alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
			return;
			}
		else
			{
			f.action = '/cgi-bin/retros/retros.cgi';
			f.rand_check.value = Math.random() * 10000;
			f.submit();
			}
		}

	function retros_init_date()
		{
		var today = new Date();
		
		var day = today.getDate();
		var month = today.getMonth();
		var year = today.getFullYear();

		if (day < 10)
			{
			day = '0' + day;
			}
		if (month < 10)
			{
			month = '0' + month;
			}
			
		var anomes = year + '-' + month;
		if (!$('retros_fecha1_dia').value || !$('retros_fecha1_anomes').value)
			{
			$('retros_fecha1_dia').value = day;
			$('retros_fecha1_anomes').value = anomes;

			$('retros_fecha').value = day + '/' + month + '/' + year;
			}
		}
</script>

<form name="form_retros" action="/no_js.html" method="GET">

	<div class="separador_largo">
		<input type="hidden" name="accion" value="verificar">
		<input type="hidden" name="rand_check" value="">
		<input type="hidden" name="fecha1_dia" id="retros_fecha1_dia" value="">
		<input type="hidden" name="fecha1_anomes" id="retros_fecha1_anomes" value="">
		<p>{_FRASE_AGREGAR_KMS}</p>
		<p>{_FRASE_SIST_LAN}</p>
		<p>{_FRASE_INFO_AGREGAR_KM}</p>

		<br>
		<div class="bloque1_2">
			<label for="acreditar_kms_ciudad_origen">{_LABEL_DESDE}</label>
			<select name="origen" id="acreditar_kms_ciudad_origen">
				<option value="">{_LABEL_SELECCIONE}</option>
				{LISTA_ORIGENES}
			</select>
		</div>

		<div class="bloque1_2">
			<label for="acreditar_kms_ciudad_destino">{_LABEL_HACIA}</label>
			<select name="destino" id="acreditar_kms_ciudad_destino">
				<option value="">{_LABEL_SELECCIONE}</option>
				{LISTA_DESTINOS}
			</select>
		</div>

		<div class="clear_fix"></div>
	</div>

	<div class="separador_largo">
		<div class="bloque1_2">
			<label for="linea_aerea">{_LABEL_LINEA_AEREA}</label>
			<select name="airline" id="linea_aerea">
				{LINEAS_AEREAS}
			</select>
		</div>

		<div class="bloque1_2">
			<label for="numero_vuelo">{_VUELO}</label>
			<input type="text" class="text" name="vuelo" id="numero_vuelo">
		</div>

		<div class="clear_fix"></div>
	</div>

	<div class="separador_largo no_bg">
		<div class="bloque1_3">
			<label for="retros_fecha">{_FECHA}</label>
			<input type="text" class="text" name="retros_fecha" id="retros_fecha" value="" onChange="retros_set_fecha_from_text(this.value);">
			<img src="/images/common/calendario.jpg" id="cal6" class="calendario" alt="">
			<script type="text/javascript">
				Calendar.setup({
					inputField  :	"retros_fecha",
					ifFormat    :	"%d/%m/%Y",
					button      :	"cal6",
					maxDate		:	"{FECHA_MAX}",
					yearButtons	:	false,
					id			:	6
					});

				$('retros_fecha').onclick = $('cal6').onclick;
				retros_init_date();
			</script>
		</div>

		<div class="clear_fix"></div>
		<div class="boton_rojo">
			<img src="/images/common/borde_der_boton_rojo.jpg" alt="">
			<a href="javascript:retros_check_and_submit(document.form_retros);" class="btn_rojo">{_LABEL_BUSCAR}</a>
			<img src="/images/common/borde_izq_boton_rojo.jpg" alt="">
		</div>

	</div>
</form>
