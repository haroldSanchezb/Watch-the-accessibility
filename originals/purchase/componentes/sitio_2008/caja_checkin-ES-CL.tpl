<script type="text/javascript" src="/js/proceso_compra.js"></script>
<script type='text/javascript'>

	var formato = /^[A-Za-z0-9]{6}$/;
	var formato_spnr = /^[0-9]*$/;

	function checkin_check_and_submit_pnr(f)
		{
		var errores = '';

		change_bg_for_id("checkin_pnr", 'ok');
		change_bg_for_id("checkin_apellido", 'ok');

		f.pnr.value      = Trim(f.pnr.value);
		f.apellido.value = Trim(f.apellido.value);

        if (!formato_spnr.test(f.pnr.value) && !formato.test(f.pnr.value) && !Empty(f.pnr.value))
			{
			errores += "{_ERROR_PNR_INVALIDO_JS}\n";
			change_bg_for_id("checkin_pnr", 'dato-erroneo');
			}

		if (f.apellido.value == '')
			{
			errores += "{_ERROR_APELLIDO_INVALIDO_JS}\n";
			change_bg_for_id("checkin_apellido", 'dato-erroneo');
			}

		if (errores.length > 0)
			{
			alert("{_ENCABEZADO_ERROR_JS}\n\n" + errores);
			return;
			}

		//f.action='/cgi-bin/checkin/paso2.cgi?session_id={SESSION_ID}';
		f.action='/cgi-bin/checkin/paso2.cgi';

		f.elements['rand_check'].value = Math.random() * 10000;
		
		f.submit();
		}

	function checkin_check_and_submit_foid_pasajero(f)
		{
		var errores = '';

		change_bg_for_id("checkin_foid", 'ok');
		change_bg_for_id("checkin_apellido2", 'ok');

		f.foid.value          = Trim(f.foid.value);
		f.apellido.value      = Trim(f.apellido.value);

		if (f.foid.value == '')
			{
			errores += "{_ERROR_PASAJERO_SIN_DOCUMENTO_ID_JS}\n";
			change_bg_for_id("checkin_foid", 'dato-erroneo');
			}

		if (f.apellido.value == '')
			{
			errores += "{_ERROR_APELLIDO_INVALIDO_JS}\n";
			change_bg_for_id("checkin_apellido2", 'dato-erroneo');
			}

		if (errores.length > 0)
			{
			alert("{_ENCABEZADO_ERROR_JS}\n\n" + errores);
			return;
			}

		//f.action = '/cgi-bin/checkin/paso2.cgi?session_id={SESSION_ID}';
		f.action = '/cgi-bin/checkin/paso2.cgi';
		
		f.elements['rand_check'].value = Math.random() * 10000;

		f.submit();
		}
</script>

<div id="bloque_horizontal_1_checkin">
  <div class="bloque_texto_titulo">
    <p>{_TITULO_EZREZ_CHECKIN}</p>
    <!--{_MSG_ERROR_CHECKIN_8FEB} -->
  </div>
  <div class="bloque_ayuda"> <a href="javascript:showLightbox('checkin');"><img src="/images/common/help_icon2.gif" width="15" height="15" alt='{_AYUDA}'></a> </div>
</div>


<div id="bloque_horizontal_2_checkin">
  
  <div class="bloque_vertical_1">
    <form name="form_check_in_codigo_reserva" action="/no_js.html" method="GET">
      <!--<input type="hidden" name="session_id" value="{SESSION_ID}">-->
      <p class="negrita">{_LABEL_BUSQUEDA_POR_PNR}</p>
      <div class="bloque1_1">
        <input type="hidden" name="rand_check" value="">
        <input type="hidden" name="tipo_busqueda" value="pnr">
        <label for="checkin_pnr" class="especial no_negrita" id="pnr_id_paso6">{_LABEL_CODIGO_RESERVA}</label>
        <input type="text" name="pnr" id="checkin_pnr" class="text largo" value="">
      </div>
      <div class="bloque1_2">
        <label for="checkin_apellido" class="especial no_negrita">{_LABEL_APELLIDO_PASAJERO}</label>
        <input type="text" name="apellido" id="checkin_apellido" class="text largo" value="">
      </div>
      <a class="button-page blue" href="javascript:checkin_check_and_submit_pnr(document.form_check_in_codigo_reserva);">{_LABEL_BUSCAR}</a>
    </form>
  </div>
  
  <div class="bloque_vertical_2">
    <form name="form_check_in_documento_identificacion" action="/no_js.html" method="GET">
      <!--<input type="hidden" name="session_id" value="{SESSION_ID}">-->
      <p class="negrita">{_LABEL_BUSQUEDA_POR_FOID}</p>
      <div class="bloque2_1">
        <input type="hidden" name="rand_check" value="">
        <input type="hidden" name="tipo_busqueda" value="foid_pasajero">
        <label for="checkin_foid" class="especial no_negrita">{_LABEL_FOID}</label>
        <input type="text" name="foid" id="checkin_foid" class="text largo" value="">
      </div>
      <div class="bloque2_2">
        <label for="checkin_apellido2" class="especial no_negrita">{_LABEL_APELLIDO_PASAJERO}</label>
        <input type="text" name="apellido" id="checkin_apellido2" class="text largo" value="">
      </div>
      <a href="javascript:checkin_check_and_submit_foid_pasajero(document.form_check_in_documento_identificacion);" class="button-page blue">{_LABEL_BUSCAR}</a>
    </form>
  </div>
  
  <div class="bloque_vertical_3">
    <div class="bloque_condiciones"> {_CONDS_CHECKIN_NUEVA_CAJA}
      <!-- {_TITULO_CONDICIONES}-->
      <!-- {_CONDS_CHECKIN_NUEVA_CAJA}-->
    </div>
  </div>

</div>
