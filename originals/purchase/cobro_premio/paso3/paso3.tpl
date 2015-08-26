<script type="text/javascript" src="/js/prototype.js"></script>
<script type="text/javascript" src="/js/scriptaculous/scriptaculous.js"></script>
<script type="text/javascript" src="/js/json.js"></script>
<script type="text/javascript" src="/js/json_services.js"></script>
			
<script type='text/javascript'>
	function ir_a_paso1(f)
		{
		f.action = 'paso1.cgi';
		f.submit();
		}

	function MM_openBrWindow(theURL, winName, features)
		{
		features = "menubar=no,resizable=yes,status=no,titlebar=no" + features;
		window.open(theURL,winName,features);
		}
/*
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
*/

/*
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
*/
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
		f.submit();
		}

	function check_and_submit(f)
		{
		 if (!{ENOUGH_KMS})
	 		{
	 		alert ("{_MSG_NOT_ENOUGH_KMS_JS}");
	 		}
/*
		{*BLOQUE_EZREZ_DYN}	
		else if ({EZREZ_DYN})
			{
			document.post_to_ezrez.submit();
			}
		{/BLOQUE_EZREZ_DYN}
	 	else
	 		{
			{CHECK_FORCED_ASISTENCIA}	
			f.submit();
	 		}
*/
		}
	
	function check_and_submit_cobro_premio_variable(f)
		{		
		var obj_compra_kms = $('comprar_kms');
		var obj_check_condiciones = $('check_condiciones');
		var tipo_op = $('tipo_operacion');
		if (!tipo_op)
			{
			tipo_op = 0;
			}
		else
			{
			tipo_op = $('tipo_operacion').value;
			}

		if (obj_check_condiciones && !obj_check_condiciones.checked)
			{
			alert ("{_ERROR_DEBE_ACEPTAR_TYC_JS}");
			return;
			}
		
		if (tipo_op == 0)
			{
			if (!obj_compra_kms)
				{
				f.submit();
				}
			else if (obj_compra_kms && !obj_compra_kms.checked)
				{
				alert ("{_MSG_NOT_ENOUGH_KMS_JS}");
				return;
				}
			else if (obj_compra_kms && obj_compra_kms.checked)
				{
				f.submit();
				}
			else if (!obj_compra_kms)
				{
				f.submit();
				}

			}
		else if (tipo_op == 1)
			{
			alert("{_MSG_DEBE_LOGUEARSE_PASO_SIGUIENTE}");
			return;
			}
		else if (tipo_op == 2)
			{
			alert("{_MSG_DEBE_LOGUEARSE_PASO_SIGUIENTE}");
			return;
			}
		else if (tipo_op == 4)
			{
			f.submit();
			}
		else if (tipo_op == 3)
			{
			if (obj_compra_kms.checked)
				{
				f.submit();
				}
			else
				{
				alert("{_MSG_NOT_ENOUGH_KMS_JS}");
				return;
				}
			}
		else
			{
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

	function check_and_submit_get_kms()
		{
		var id_loading_name = 'loading';
		var tipo_operacion = '0';
		if ($('tipo_operacion'))
			{
			tipo_operacion = $('tipo_operacion').value;	
			}

		$(id_loading_name).style.display = 'block';
		Data = new Object();
		
		Data.TYPE_OP = tipo_operacion;

		var monto_total = $('km_total_monto').value;
		var moneda = $('moneda').value;
		var kms_totales = $('kms_totales').value;
		if (Empty(monto_total) || Empty(moneda) || Empty(kms_totales))
			{
			return (0);
			}

		Data.KMS_TOTALES = kms_totales;
		Data.MONEDA = moneda;
		Data.MONTO_TOTAL = monto_total;

		if (tipo_operacion == 1)
			{

			var obj_login = $('login_kms');
			var obj_pass = $('pass_kms'); 
			if (!obj_login || !obj_pass)
				{
				$(id_loading_name).style.display = 'none';
				return (0);
				}
			var login = obj_login.value;
			var pass = obj_pass.value;
			if (Empty(login) || Empty(pass) || mbr_nbr == "{_MSG_INGRESE_NUMERO_SOCIO_JS}")
				{
				alert("{_MSG_FALTA_INGRESAR_DATOS_JS}");
				$(id_loading_name).style.display = 'none';
				return (0);
				}
			Data.LOGIN = login;
			Data.PSSWD = pass;
			Data.SESSION_ID = '{SESSION_ID}';
			Data.TYPE_OP = '1';

			if (Data)
				{
				JSON_Services.add_handled_request('get_resumen_kms', Data, despliegue_resumen_mensaje_kms);
				JSON_Services.fetch_data();
				}
			}
		else
			{
			var obj = $('nro_mbr_nbr');
			if (!obj)
				{
				$(id_loading_name).style.display = 'none';
				return (0);
				}
			var mbr_nbr = obj.value;
			if (Empty(mbr_nbr) || mbr_nbr == "{_MSG_INGRESE_NUMERO_SOCIO}")			
				{
				alert("{_MSG_FALTA_INGRESAR_MBR_NBR_JS}");
				$(id_loading_name).style.display = 'none';
				return (0);
				}

			Data.MBR_NBR = mbr_nbr;
			if (Data)
				{
				JSON_Services.add_handled_request('get_resumen_kms', Data, despliegue_resumen_mensaje_kms);
				JSON_Services.fetch_data();
				}
			}
		}
	
	function despliegue_resumen_mensaje_kms(status, USER_DATA)
		{
		if (status > 0)	
			{
			if (USER_DATA)	
				{
				var tipo_mensaje = '';
				$('cartola_kms').style.display = 'block';
				$('username_login_lanpass_kms').style.display = 'none';
				if (USER_DATA['kms_alcanzan'] != null && USER_DATA['kms_alcanzan'] == '1')
					{
					var num = 2;
					$('mensaje_kms').innerHTML = "{_FRASE_USO_KMS_LANPASS_1B_JS}" + " " + USER_DATA['kms_socio'] + " " + "{_FRASE_USO_KMS_LANPASS_2B_JS}" +  " " + USER_DATA['kms_faltantes'] + " " + "{_FRASE_USO_KMS_LANPASS_3B_JS}";
					if (USER_DATA['tipo_operacion'] == 2)
						{
						$('mensaje_kms').innerHTML = $('mensaje_kms').innerHTML + "{_FRASE_USO_KMS_LANPASS_4B_JS} " + USER_DATA['kms_comprados'] + "{_FRASE_USO_KMS_LANPASS_5B_JS}" + USER_DATA['limite_kms_comprar'];
						}
					else
						{
						num++;
						}

						
					$('cartola_kms_acumulados').innerHTML = "" + USER_DATA['cartola_kms_acumulados'];
					document.getElementById('mensaje_kms_lanpass').style.visibility = 'visible';
					$('tipo_operacion').value = parseInt(USER_DATA['tipo_operacion']) + num;
					}
				else
					{
					document.getElementById('mensaje_kms').innerHTML = "{_FRASE_USO_KMS_LANPASS_1A_JS}" + " " + USER_DATA['kms_socio'] + " " + "{_FRASE_USO_KMS_LANPASS_2A_JS}" +  " " + USER_DATA['kms_faltantes'] + " " + "{_FRASE_USO_KMS_LANPASS_3A_JS}";
					var num = 2;
					if (USER_DATA['tipo_operacion'] == 2)
						{
						$('mensaje_kms').innerHTML = $('mensaje_kms').innerHTML + " {_FRASE_USO_KMS_LANPASS_4A_JS} " + USER_DATA['kms_comprados'] + " {_FRASE_USO_KMS_LANPASS_5A_JS} " + USER_DATA['limite_kms_comprar'];
						}
		
					$('cartola_kms_acumulados').innerHTML = "" + USER_DATA['cartola_kms_acumulados'];
					$('tipo_operacion').value = parseInt(USER_DATA['tipo_operacion']) + num;
					}
				}
			else
				{
				document.getElementById('mensaje_kms').innerHTML = "{_FRASE_USO_KMS_LANPASS_JS}";
				$('mensaje_kms_lanpass').style.visibility = 'visible';//display = 'block';
				$('fila_kms_totales').style.display = 'none';
				}
			}
		else
			{
			alert("{_NO_FUE_POSIBLE_OBTENER_INFO_CLIENTE_JS}");
			}
		var id_loading_name= 'loading';
		$(id_loading_name).style.display = 'none';
		}
	function show_detalle_pago()
		{
		var link_prefijo = "javascript:MM_openBrWindow(";
		var link_sufijo = ",'nombre','width=600,height=520,scrollbars=yes');";
		if (typeof(document.getElementById('pago_kms')) != 'undefined' && document.getElementById('pago_kms') != null)
			{
			var pago_kms = document.getElementById('pago_kms');
			if (pago_kms.checked)
				{
				document.getElementById('resumen_pago_kms').style.display='none';
				document.getElementById('resumen_pago_kms_tabla').style.display='none';
				document.getElementById('fila_detalle_compra').style.display='none';
				document.getElementById('label_chk').style.display='none';
				document.getElementById('comprar_kms').style.display='none';

				document.getElementById('link_detalle_compra').innerHTML = document.getElementById('texto_paga_con_kms').value;
				document.getElementById('paga_con_kms').value = 'Y';
				document.getElementById('link_detalle_compra').href = link_prefijo + "'" + document.getElementById('link_detalle_compra_orig').value + 
												"&paga_con_kms=Y" + "'" + link_sufijo;
				document.getElementById('comprar_kms').checked = true;
				}
			else
				{
				document.getElementById('resumen_pago_kms').style.display='';
				document.getElementById('resumen_pago_kms_tabla').style.display='';
				document.getElementById('fila_detalle_compra').style.display='';
				document.getElementById('label_chk').style.display='';
				document.getElementById('comprar_kms').style.display='';

				document.getElementById('link_detalle_compra').innerHTML = document.getElementById('texto_paga_sin_kms').value;
				document.getElementById('paga_con_kms').value = 'N';
				document.getElementById('link_detalle_compra').href = link_prefijo + "'" + document.getElementById('link_detalle_compra_orig').value +
												"&paga_con_kms=N" + "'" + link_sufijo;
				document.getElementById('comprar_kms').checked = false;
				}
			}
		}
</script>

<form action='{SSL_URL}paso4.cgi?session_id={SESSION_ID}{IS_RESERVA}' method='POST' name='paso3'>
  <input type='hidden' name='rand_check' value='{RAND_CHECK}'>
  <input type='hidden' name='noauth' value='0'>
  <input type='hidden' id='paga_con_kms' name='paga_con_kms' value='N'>
  <!--
  <table id=titulo-compra>
  <tr>
  <td><h1>{_PASO3_TITULO}</h1></td>
  <td class=last><a href=#>{_LABEL_NUEVA_BUSQUEDA}</a> | <a href=index.html>{_HOME}</a> | <a href=#>{_AYUDA}</a></td>
  </tr>
  </table>
  -->
  {MENSAJES_CAMBIO_TARIFA}
	{ITINERARIO}
  <div id="application_message_div"></div>
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
        </div>
	<!--{_MSG_PROMO_12_CUOTAS}-->
        {MENSAJES_KMS}
        {MENSAJES_TARIFA}
      </td>
      <td>&nbsp;
      </td>
      <td>
      	{LOGIN_USUARIO}
		{CARTOLA_KMS}
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
{*SELECCION_FORMA_PAGO_KMS}
<table width='100%'>
	<tr>
    {RADIO_ELECCION_PAGO}
	</tr>
</table>
{/SELECCION_FORMA_PAGO_KMS}
{*BLOQUE_COMPRA_KMS}
<table width='100%'>
	<tr id='fila_detalle_compra' name='fila_detalle_compra' style='display: none;'>
		{COMPRA_KMS}
	</tr>
	<tr id='fila_detalle_condiciones' name='fila_detalle_condiciones' style='display: none;'>
	</tr>
	<tr>
		{FILA_TOTAL}
	</tr>
	{*SHOW_CONDICIONES_KMS}
		<br>
		<!--<table cellspacing="0" cellpadding="0" id=barra-continuar><tr>-->
		<td class=first id='id_checkbox' name='id_checkbox'><input type="checkbox" name="comprar_kms" id="comprar_kms" value="checkbox"> 
			<label for="chk_ok" id='label_chk' name='label_chk'><a href="javascript:MM_openBrWindow('/cgi-bin/cobro_premio/show_condiciones.cgi?condiciones_generales','nombre', 'width=600, height=520, scrollbars=yes');">{_MSG_ACEPTO_TC_LP}</a> 
				<a href="javascript:MM_openBrWindow('/cgi-bin/cobro_premio/show_condiciones.cgi?compra_kms','nombre');">{_MSG_ACEPTO_TC_COMPRA_KMS}</a>
			</label>
		</td>
		<!--<td class=last>&nbsp;&nbsp;</td></tr></table>-->
	{/SHOW_CONDICIONES_KMS}
</table>
{/BLOQUE_COMPRA_KMS}
  {CONVENIO_ASOCIADOS}
<!-- 
	{ASISTENCIA_EN_VIAJE}
	{TOTAL_ASISTENCIA_VUELO}
 -->

{*SHOW_CONDICIONES}
	<input type="checkbox" name="check_condiciones" id="check_condiciones" > 
	<label for="check_condiciones" id='label_chk' name='label_chk'>
		<a href="javascript:MM_openBrWindow('/cgi-bin/cobro_premio/show_condiciones.cgi?condiciones_generales','nombre', 'width=600, height=520, scrollbars=yes');">{_MSG_ACEPTO_TC_LP}</a>
	</label>
{/SHOW_CONDICIONES}

{AUTENTIF}
</form>

<script type='text/javascript'>
  ApplicationMessage.show("{APPLICATION_MESSAGES}");

hide_layer('espera');
show_detalle_pago();
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

</script>
