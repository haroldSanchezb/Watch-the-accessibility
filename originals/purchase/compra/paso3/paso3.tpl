<script type="text/javascript" src="{+SMART_URL('https://ssl.lan.com')}/js/libs/external/require/2.1.8/require.js" data-main="{+SMART_URL('https://ssl.lan.com')}/js/codigoRecLS.js" ></script>

<script type="text/javascript" src="/js/prototype.js"></script>
<script type="text/javascript" src="/js/scriptaculous/scriptaculous.js"></script>
<script type="text/javascript" src="/js/json.js"></script>
<script type="text/javascript" src="/js/json_services.js"></script>
			
<script type='text/javascript'>

	function ir_a_paso1(f)
		{
		f.action = 'paso1.cgi';
		if (typeof ClickTaleRegisterFormSubmit == 'function') {
			ClickTaleRegisterFormSubmit(f); 
			ClickTaleTag("form_submit_success");
		}
		f.submit();
		}

	function MM_openBrWindow(theURL, winName, features)
		{
		features = "menubar=no,resizable=yes,status=no,titlebar=no" + features;
		window.open(theURL,winName,features);
		}

	function reload_con_otra_moneda(f, option)
		{
		var moneda = option.value;

		if (moneda != 'CLP' && moneda != 'USD' && moneda != 'EUR' && moneda != 'PEN' && moneda != 'ARS' && moneda != 'BRL' && moneda != 'GBP' && moneda != 'CAD' && moneda != 'COP')
			{
			alert('{_ERROR_SIN_TIPO_MONEDA}');
			return false;
			}
		document.location = 'paso3.cgi?just_refresh=1&amp;session_id={SESSION_ID}&amp;currency_cotizacion=' + moneda;
		}
				
	function reload_con_convenio(f)
		{
		if (f.elements['convenio_empresa'].value=='')
			{
			alert('{_MSG_ERROR_DEBE_INGRESAR_CONVENIO}');
			return false;
			}
		document.location = 'paso3.cgi?just_refresh=1&amp;session_id={SESSION_ID}&amp;convenio_empresa_asociados=' + f.elements['convenio_empresa'].value;
		}

	
	function actualizar_moneda(monto_moneda)
		{
		if (monto_moneda == '')
			{
			new Effect.BlindUp('tabla_cambio_moneda');
			}
		else
			{
			var monto = monto_moneda.split(',')[0];
			var moneda = monto_moneda.split(',')[1];
			var simbolo = monto_moneda.split(',')[2];
			var nombre_moneda = monto_moneda.split(',')[3];
			if (document.getElementById('tabla_cambio_moneda').style.display == 'none')
				{
				new Effect.BlindDown('tabla_cambio_moneda');
				}
			else
				{
				new Effect.Highlight('fila_valor_referencial');
				}
			document.getElementById('span_moneda').innerHTML = moneda;
			document.getElementById('span_total').innerHTML = simbolo + ' ' + monto;
			if ('{MONEDA_ACTUALIZAR}' != '')
				{
				document.getElementById('span_nombre_moneda').innerHTML = nombre_moneda;
				}
			}
		}

	function check_and_submit_login(f)
		{
		if (f.elements['login'].value == '')
			{
			f.elements['noauth'].value = '1';
			}
		else
			{
			f.elements['noauth'].value = '0';
			}
		if (typeof ClickTaleRegisterFormSubmit == 'function') {
			ClickTaleRegisterFormSubmit(f); 
			ClickTaleTag("form_submit_success");
		}
		f.submit();
		}

	function check_and_submit(f)
		{
		 if (!{ENOUGH_KMS})
	 		{
			if (typeof ClickTaleRegisterFormSubmit == 'function') {
				ClickTaleRegisterFormSubmit(f); 
				ClickTaleTag("form_submit_fail");
			}
	 		alert ("{_MSG_NOT_ENOUGH_KMS_JS}");
	 		}
		{*BLOQUE_EZREZ_DYN}	
		else if ({EZREZ_DYN})
			{
			if (typeof ClickTaleRegisterFormSubmit == 'function') {
				ClickTaleRegisterFormSubmit(f); 
				ClickTaleTag("form_submit_success");
			}
			document.post_to_ezrez.submit();
			}
		{/BLOQUE_EZREZ_DYN}
	 	else
	 		{
			{CHECK_FORCED_ASISTENCIA}	
			if (typeof ClickTaleRegisterFormSubmit == 'function') {
				ClickTaleRegisterFormSubmit(f); 
				ClickTaleTag("form_submit_success");
			}
			f.submit();
	 		}
		}
	
	function submitenter(myfield,e)
		{
		var keycode;
		if (window.event)
			{
			keycode = window.event.keyCode;
			}
		else if (e)
			{
			keycode = e.which;
			}
		else
			{
			return true;
			}

		if (keycode == 13)
			{
			check_and_submit_login(myfield.form);
			return false;
			}
		else
			{
			return true;
			}
		}
</script>
{DATA_LAYER_LOCAL_DEFINITION}
{EZREZ_FORM}
<form action='{SSL_URL}paso4.cgi?session_id={SESSION_ID}{IS_RESERVA}' method='POST' name='paso3'>
  <input type='hidden' name='rand_check' value='{RAND_CHECK}'>
  <input type='hidden' name='noauth' value='0'>
  <input type="hidden" name="url_promo" id="url_promo" value="{URL_PROMO}">
  <!--
  <table id=titulo-compra>
  <tr>
  <td><h1>{_PASO3_TITULO}</h1></td>
  <td class=last><a title="{_LABEL_NUEVA_BUSQUEDA}" href=#>{_LABEL_NUEVA_BUSQUEDA}</a> | <a href=index.html>{_HOME}</a> | <a href=#>{_AYUDA}</a></td>
  </tr>
  </table>
  -->
<h1>{TITULO_PASO_3}</h1>
<!--<h1>{_TITULO_COMPRA_PORTAL_PE_3}</h1>-->
<p>{_BAJADA_PASO_3}</p>  
  {MENSAJE_DESCUENTO}
  {MENSAJES_CAMBIO_TARIFA}
	{ITINERARIO}
  <div id="application_message_div"></div>
{DESCUENTO_EZREZ}
{RECORDAR_COBRO_FEE}
{SUMMARY_REGULATIONS_FRAME}
  <br>
  <table width="100%">
    <col width="67%">
    <col width="3%">
    <col width="30%">
    <tr>
      <td>
        <div>
		  {DESPLIEGUE_CAMBIO_MONEDA}
          {TARIFA}
          {TARIFA_CC}
        </div>
	<!--{_MSG_PROMO_12_CUOTAS}-->
	{MENSAJES_KMS}
	{MENSAJES_TARIFA}
      </td>
      <td id="space_step_3">&nbsp;
        
      </td>
      <td id="another_taxs">
      	{LOGIN_USUARIO}
	{CARTOLA_KMS}
	{CAMBIO_MONEDA}
        {OTRAS_TARIFAS}
      </td>
    </tr>
      
  </table>
{*BLOQUE_INFO_KMS}
<table width='100%'>
	<tr>
    		{INFORMACION_KMS_FALTANTES}
	</tr>
</table>
{/BLOQUE_INFO_KMS}
{*BLOQUE_COMPRA_KMS}
<table width='100%'>
	<tr>
		{COMPRA_KMS}
	</tr>
	<tr>
		{FILA_TOTAL}
	</tr>
</table>
{/BLOQUE_COMPRA_KMS}
  {PANEL_UPGRADE_FAMILIA}

<!-- BLOQUE SERVICE FEE -->
{CONTACT_CENTER_FEE_DEACTIVATE}
<!-- BLOQUE SERVICE FEE FIN -->
  
  {CONVENIO_ASOCIADOS}
	{ASISTENCIA_EN_VIAJE}
  {AUTENTIF}
  
</form>
{*BLOQUE_VER_OTRA_MONEDA}
<h4>{_LABEL_VER_OTRA_MONEDA}</h4>
<table class="table" cellspacing="0" cellpadding="0" width="100%">
  <tr>
	<td>
	  <select name="otra_moneda">
		<option value=''>{_LABEL_SELECCIONE}</option>
		<option value='USD'>{_LABEL_MONEDA_USD} (USD)</option>
		<option value='EUR'>{_LABEL_MONEDA_EUR} (EUR)</option>
		<option value='PEN'>{_LABEL_MONEDA_PEN} (PEN)</option>
		<option value='ARS'>{_LABEL_MONEDA_ARS} (ARS)</option>
		<option value='CLP'>{_LABEL_MONEDA_CLP} (CLP)</option>
		<option value='BRL'>{_LABEL_MONEDA_BRL} (BRL)</option>
		<option value='GBP'>{_LABEL_MONEDA_GBP} (GBP)</option>
		<option value='CAD'>{_LABEL_MONEDA_CAD} (CAD)</option>
		<option value='COP'>{_LABEL_MONEDA_COL} (COP)</option>
	  </select>
	</td>
  </tr>
	<tr>
	  <td class="right">
		<input type='button' onClick='reload_con_otra_moneda(this.form, this.form.otra_moneda)' value='{_LABEL_RECALCULAR}' class='boton-secundario' name="button">
	  </td>
	</tr>
</table>

{/BLOQUE_VER_OTRA_MONEDA}

<script type='text/javascript'>
  ApplicationMessage.show("{APPLICATION_MESSAGES}");

  hide_layer('espera');

function advierte_errores_validacion_posteriores(f)
   {
	var errores;

	errores = '';

	{INSTRUCCIONES_ERROR}
	
	if (errores.length > 0)
		{
		alert("{_ENCABEZADO_ERROR_JS} \n\n" + errores);
		return false;
		}
	}

advierte_errores_validacion_posteriores(document.paso3);
{AVISOS_COMERCIALES}

if ('{MONEDA_ACTUALIZAR}' != '')
	{
	actualizar_moneda('{MONEDA_ACTUALIZAR}');
	}

</script>
