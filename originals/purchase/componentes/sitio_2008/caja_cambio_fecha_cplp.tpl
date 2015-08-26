<script type='text/javascript'>
	function cf_check_and_submit(f)
		{
		var errores, i, elem;
		errores = '';
		change_bg_for_id("cf_pnr", 'ok');
		change_bg_for_id("cf_apellido", 'ok');

		if (f.pnr.value)
			{
			f.pnr.value = Trim(f.pnr.value);
			}

		if (f.pnr.value.length != 6)
			{
			errores += "{_ERROR_PNR_INVALIDO_JS}\n";
			change_bg_for_id("cf_pnr", 'dato-erroneo');
			}

		if (f.apellido.value == '')
			{
			errores += "{_ERROR_APELLIDO_INVALIDO_JS}\n";
			change_bg_for_id("cf_apellido", 'dato-erroneo');
			}

		if (errores.length > 0)
			{
			alert("{_ENCABEZADO_ERROR_JS}\n\n" + errores);
			return;
			}

		f.action='/cgi-bin/cambio_fecha/paso2.cgi';
		f.rand_check.value = Math.random() * 10000;
		f.submit();
		}

</script>

<div class="separador_largo">
	<form name="form_cambio_fecha" action="/no_js.html" method="GET">

		<div class="bloque1_2">
			<input type="hidden" name="rand_check" value="">
			<input type="hidden" name="tipo_busqueda" value="pnr">
			<label for="cf_pnr">{_LABEL_CODIGO_RESERVA}</label>
			<input type="text" name="pnr" id="cf_pnr" class="text largo">
			<p>{_LABEL_EJEMPLO}: YCF2H5</p>
		</div>

		<div class="bloque1_2">
			<label for="cf_apellido">{_LABEL_APELLIDO_PASAJERO}</label>
			<input type="text" name="apellido" id="cf_apellido" class="text largo">
		</div>

		<div class="boton_rojo">
			<img src="/images/common/borde_der_boton_rojo.jpg" alt="" width="6" height="20">
			<a href="javascript:cf_check_and_submit(document.form_cambio_fecha);" class="btn_rojo">{_LABEL_CONTINUAR}</a>
			<img src="/images/common/borde_izq_boton_rojo.jpg" alt="" width="6" height="20">
		</div>
		<div class="clear_fix"></div>
	</form>
</div>

<div class="separador_largo no_bg">
	<p class="tab_left">{_NOTA_LOGIN_FOID_CAMBIO_FECHA}</p>
	
	<p class="negrita"><a href="/info_viajes/antes_viajar/cambio_fecha_cplp.html">+ {_VER_CONDICIONES}</a></p>
</div>
