<script src="/js/common.js" type='text/javascript'></script>
<style type="text/css">
.table label {
	display:block;
	margin-right:3px;
	margin-top:2px;
	margin-bottom:1px;
	}
</style>
<script type='text/javascript'>

function es_numerico (strString)
	{
	var strValidChars = "0123456789.";
	var strChar;
	var blnResult = true;

	for (i = 0; i < strString.length && blnResult == true; i++)
		{
		strChar = strString.charAt(i);
		if (strValidChars.indexOf(strChar) == -1)
			{
			blnResult = false;
			}
		}
	return blnResult;
	}

function verificar(obj)
	{
	if (es_numerico(obj.value))
		{
		return true;
		}
	else
		{
		return false;
		}
	}


function valida_forma_pago(f)
	{
	var msg = '';
	var today = new Date();
	var today_month = today.getMonth() + 1;
	var today_year = today.getFullYear();
	var index_month = f.exp_month.selectedIndex;
	var value_month = f.exp_month.options[index_month].value;
	var index_year = f.exp_year.selectedIndex;
	var value_year = f.exp_year.options[index_year].value;

	f.fecha_exp.value = value_month + "/" + value_year;
	change_bg_for_id("id_tipo_tarjeta", "ok");
	change_bg_for_id("id_n_tarjeta", "ok");
	change_bg_for_id("id_fecha_exp", "ok");
	change_bg_for_id("id_digito_verificador", "ok");
	change_bg_for_id("id_nombre_titular", "ok");
	change_bg_for_id("id_apellido_titular", "ok");
	change_bg_for_id("id_tipo_foid", "ok");
	change_bg_for_id("id_tarjeta_street", "ok");
	change_bg_for_id("id_tarjeta_housenumber", "ok");
//	change_bg_for_id("id_tarjeta_additionaladdressinfo", "ok");
	change_bg_for_id("id_tarjeta_city", "ok");
	change_bg_for_id("id_tarjeta_zipcode", "ok");
	change_bg_for_id("id_tarjeta_state", "ok");

	// jcaracci esto es para que se borre el campo tarjeta al enviarse (del campo)
	f.n_tarjeta.value=f.n_tarjeta_ingresado.value;
	f.n_tarjeta_ingresado.value="xxxxxxxxxxxxxxxx";

	if (f.n_tarjeta.value == "")
		{
		change_bg_for_id("id_n_tarjeta", "dato-erroneo");
		msg += "--> {_LABEL_NUMERO_CC_JS}\n";
		}
	if (f.fecha_exp.value == "/")
		{
		change_bg_for_id("id_fecha_exp", "dato-erroneo");
		msg += "--> {_LABEL_FECHA_EXPIRACION_CC_JS}\n";
		}
	if (validar_num_tarjeta(f.n_tarjeta.value, f.tipo_tarjeta.value) != true)
		{
		change_bg_for_id("id_n_tarjeta", "dato-erroneo");
		msg += "--> {_LABEL_ERROR_NUMERO_CC_INVALIDO_JS}\n";
		}
	
//INICIO CODIGO DE RE_VERIFICACION


	if (f.digito_verificador.value.length != 3 && f.tipo_tarjeta.value != 'AX')
		{
		change_bg_for_id("id_digito_verificador", "dato-erroneo");
		msg += "--> {_ERROR_DIGITOS_VERIF_NO_AMEX_JS}\n";
		}

	if (f.digito_verificador.value.length != 4 && f.tipo_tarjeta.value == 'AX')
		{
		change_bg_for_id("id_digito_verificador", "dato-erroneo");
		msg += "--> {_ERROR_DIGITOS_VERIF_AMEX_JS}\n";
		}

	if (verificar(f.digito_verificador)==false)
                {
                change_bg_for_id("id_digito_verificador", "dato-erroneo");
                msg += "--> {_ERROR_DIGITOS_VERIF_CON_LETRAS_JS}\n";
		}
		
//FIN CODIGO DE RE_VERIFICACION

	
	if (value_year < today_year)
		{
		change_bg_for_id("id_fecha_exp", "dato-erroneo");
		msg += "--> {_LABEL_FECHA_EXPIRACION_CC_INVALIDA_JS}\n";
		}
	else
		{
		if (value_year == today_year)
			{
			if (value_month < today_month)
				{
				change_bg_for_id("id_fecha_exp", "dato-erroneo");
				msg += "--> {_LABEL_FECHA_EXPIRACION_CC_INVALIDA_JS}\n";
				}
			}
		}
	if (f.digito_verificador.value == "")
		{
		change_bg_for_id("id_digito_verificador", "dato-erroneo");
		msg += "--> {_LABEL_CODIGO_VERIFICACION_CC_JS}\n";
		}
	if (f.nombre_titular.value == "")
		{
		change_bg_for_id("id_nombre_titular", "dato-erroneo");
		msg += "--> {_LABEL_NOMBRE_TITULAR_CC_JS}\n";
		}
	if (f.apellido_titular.value == "")
		{
		change_bg_for_id("id_apellido_titular", "dato-erroneo");
		msg += "--> {_LABEL_APELLIDO_TITULAR_CC_JS}\n";
		}
	if (f.tipo_foid.selectedIndex == 0 && f.no_mostrar_foid.selectedIndex == 'false')
		{
		change_bg_for_id("id_tipo_foid", "dato-erroneo");
		msg += "--> {_LABEL_TIPO_DOCUMENTO_ID_JS}\n";
		}
	if (f.foid_pais_emisor.selectedIndex == 0 || f.foid_pais_emisor.value == ''&& f.no_mostrar_foid.selectedIndex == 'false')
		{
		change_bg_for_id("id_tipo_foid", "dato-erroneo");
		msg += "--> {_LABEL_PAIS_DOCUMENTO_ID_JS}\n";
		}
	if (f.rut_titular.value == "" && f.no_mostrar_foid.selectedIndex == 'false')
		{
		change_bg_for_id("id_tipo_foid", "dato-erroneo");
		msg += "--> {_LABEL_NUMERO_DOCUMENTO_ID_JS}\n";
		}
	if (f.tarjeta_street.value == "")
		{
		change_bg_for_id("id_tarjeta_street", "dato-erroneo");
		msg += "--> {_LABEL_DIRECCION_CC_JS}\n";
		}
	if (f.tarjeta_housenumber.value == "")
		{
		change_bg_for_id("id_tarjeta_housenumber", "dato-erroneo");
		msg += "--> {_LABEL_DIRECCION_CC_JS}\n";
		}
	if (f.tarjeta_additionaladdressinfo.value == "")
		{
		f.tarjeta_additionaladdressinfo.value = " ";
//		change_bg_for_id("id_tarjeta_additionaladdressinfo", "dato-erroneo");
//		msg += "--> {_LABEL_DIRECCION_CC_JS}\n";
		}
	if (f.tarjeta_city.value == "")
		{
		change_bg_for_id("id_tarjeta_city", "dato-erroneo");
		msg += "--> {_LABEL_CIUDAD_CC_JS}\n";
		}
	if (f.tarjeta_zipcode.value == "")
		{
		change_bg_for_id("id_tarjeta_zipcode", "dato-erroneo");
		msg += "--> {_LABEL_CODIGO_POSTAL_DE_DIRECCION_CC_JS}\n";
		}
	if (f.tarjeta_state.value == "")
		{
		change_bg_for_id("id_tarjeta_state", "dato-erroneo");
		msg += "--> {_LABEL_ESTADO_CC_JS}\n";
		}
	if (msg != '')
		{
		return(msg);
		}
	else
		{
		return('');
		}
	}

function validar_num_tarjeta(numero, tipo)
	{
	if (numero.length < 11)
		{
		return(false);
		}
	switch(tipo)
		{
		case 'VI':
			{
			var reg = /^4.*/;
			if (! reg.test(numero) || numero.length < 11 || numero.length > 19)
				{
				return(false);
				}
			
			}
		break;
		case 'CA':
			{
			var reg = /^5[12345].*/;
			if (! reg.test(numero) || numero.length < 11 || numero.length > 19)
				{
				return(false);
				}
			}
		break;
		case 'DC':
			{
			var reg = /^3[068].*/;
			if (! reg.test(numero) || numero.length < 14 || numero.length > 14)
				{
				return(false);
				}
			}
		break;
		case 'AX':
			{
			var reg = /^3[47].*/;
			if (! reg.test(numero) || numero.length < 13 || numero.length > 19)
				{
				return(false);
				}
			}
		break;
		case 'MG':
			{
			var reg = /^56(0359|7139|7229|8009).*/;
			if (! reg.test(numero) || numero.length < 16 || numero.length > 16)
				{
				return(false);
				}
			}
		break;
		}
	if (check_digito_verificador(numero) != true)
		{
		return(false);
		}
	return(true);
	}

function check_digito_verificador(theNumber)
	{
	var pos;
	var contador = 0;
	var check_dv;
	var aux = 0;
	var mult = 2;
	var dv = theNumber.charAt(theNumber.length - 1);
	for (pos = theNumber.length - 2; pos >= 0; pos--)
		{
		aux = theNumber.charAt(pos) * mult;
		if (aux > 9)
			{
			var aux_num = 0;
			var aux_str = String(aux);
			aux_num += aux_str.charAt('0') * 1;
			aux_num += aux_str.charAt('1') * 1;
			aux = aux_num;
			}
		contador += aux;
		if (mult == 1)
			{
			mult = 2;
			}
		else
			{
			mult = 1;
			}
		}
	check_dv = 10 - (contador % 10);
	if (check_dv == 10)
		{
		check_dv = 0;
		}
	if (dv != check_dv)
		{
		return(false);
		}
	return(true);
	}

function limpia_tjta(Input)
	{
	var newNum = "";
	var oldNum = String(Input.value);
	var theLength = oldNum.length;
	for (pos = 0; pos < theLength; pos++)
		{
		var reg = /\d/;
		if (reg.test(oldNum.charAt(pos)))
			{
			newNum += oldNum.charAt(pos);
			}
		}
	Input.value = newNum;
	return;
	}
</script>
<script type="text/javascript">
var mt = '{TIPO_TARJETA}';
function mostrar_layer_cod() {
	if (mt == 'AX')
		{
		div = document.getElementById('layer_cvv_ax');
		div.style.display = '';
		}
	else
		{
		div = document.getElementById('layer_cvv');
		div.style.display = '';
		}
}
function ocultar_layer_cod() {
	if (mt == 'AX')
		{
		div = document.getElementById('layer_cvv_ax');
		div.style.display = 'none';
		}
	else
		{
		div = document.getElementById('layer_cvv');
		div.style.display = 'none';
		}
}
</script>
<input type='hidden' name='no_mostrar_foid' value='{NO_MOSTRAR_FOID}'>
<table class=table width="100%" cellpadding="0" cellspacing="0">
	<!--<tr>
		<td colspan="4">{_MSG_CONFIANZA_ANULACIONES}</td>
	</tr> -->
	<tr class="sub-titulo">
		<td id="id_tipo_tarjeta" colspan="4">
			{_LABEL_TIPO_TARJETA}
		<b>{TIPO_TARJETA_NAME}</b>
		<input type="hidden" name="tipo_tarjeta" id="tipo_tarjeta" value="{TIPO_TARJETA}">
		</td>
	</tr>
	<tr>
		<td id="id_n_tarjeta">
		<label>
			{_LABEL_NUMERO_TARJETA}
		</label>
			<input type="hidden" name="tipo_venta" value="vn">
			<input type=text class=input name="n_tarjeta_ingresado" size='20' maxlength="30" onChange="javascript:limpia_tjta(this);">
			<input type="hidden" name="n_tarjeta">
		</td>
		<td id="id_fecha_exp">
		<label>
			{_LABEL_FECHA_EXPIRACION}
		</label>
			<input type="hidden" name="fecha_exp">
			<select name="exp_month" class=combo-box>
				<option selected value=''>
				{_LABEL_MES}
				</option>
				<option value="01">
				01
				</option>
				<option value="02">
				02
				</option>
				<option value="03">
				03
				</option>
				<option value="04">
				04
				</option>
				<option value="05">
				05
				</option>
				<option value="06">
				06
				</option>
				<option value="07">
				07
				</option>
				<option value="08">
				08
				</option>
				<option value="09">
				09
				</option>
				<option value="10">
				10
				</option>
				<option value="11">
				11
				</option>
				<option value="12">
				12
				</option>
			</select>
			<select name="exp_year" class=combo-box>
				<option selected value=''>
				{_LABEL_ANO}
				</option>
				{*ANOS}
				<option {SELECTED_ANO} value="{ANO}">
				{TXT_ANO}
				</option>
				{/ANOS}
			</select>
		</td>
		<td id="id_digito_verificador">
		<label>{_LABEL_CODIGO_VERIFICACION}</label>
			<input type=text class=input name="digito_verificador" size="5" maxlength="{LARGO_DIGITO_VERIFICADOR}">&nbsp;&nbsp;<a href="javascript:mostrar_layer_cod();"><img src="/images/reservas/compra/help_icon2.gif" width="15" height="15" border="0" alt="{_TEXTO_LINK_AYUDA}"></a>&nbsp;&nbsp;<a href="javascript:mostrar_layer_cod();">{_TEXTO_LINK_AYUDA}</a>
		</td>
	</tr>
	<tr class="sub-titulo">
		<td id="id_nombre_titular">
		<label>
			{_LABEL_NOMBRE_TITULAR}
		</label>
			<input type=text class=input name="nombre_titular" size='20' onChange="javascript:limpiaTexto(this);" value='{NOMBRE_TITULAR}' maxlength="15">
		</td>
		<td id="id_apellido_titular">
		<label>
			{_LABEL_APELLIDO_TITULAR}
		</label>
			<input type=text class=input name="apellido_titular" size='20' onChange="javascript:limpiaTexto(this);" value='{APELLIDO_TITULAR}'>
		</td>
	{*BLOQUE_FOID}
		<td id="id_tipo_foid" colspan="3">
		<label>
			{_LABEL_DOCUMENTO_ID}
		</label>
			<select name="tipo_foid" class=combo-box>
				<option selected>
				{_LABEL_SELECCIONE}
				</option>
				<option value="pp" {SELECTED_PP}>
				{_LABEL_PASAPORTE}
				</option>
				<option value="ni" {SELECTED_NI}>
				{_LABEL_C_ID}
				</option>
				{*DOCUMENTO_DL}
				<option value="dl" {SELECTED_DL}>
				{_LABEL_DL}
				</option>
				{/DOCUMENTO_DL}
			</select>
			<input type=text class=input name="rut_titular" size='12' value='{RUT_TITULAR_NO_PONER}'>
			<select name="foid_pais_emisor" class=combo-box>
				<option value=''>
				{_LABEL_SELECCIONE_PAIS}
				</option>
				{FULL_COUNTRIES_LIST}
			</select>
		</td>
	{/BLOQUE_FOID}
	{*BLOQUE_NO_FOID}
	<td>&nbsp;
	<input type='hidden' name='rut_titular' value='{RUT_TITULAR}'>	
	<input type='hidden' name='foid_pais_emisor' value=''>
	<input type='hidden' name='tipo_foid' value='NI'>			
	</td>
	{/BLOQUE_NO_FOID}
	</tr>
	<tr>
		<td id="id_tarjeta_street">
		<label>
			{_LABEL_CALLE}
		</label>
			<input type=text class=input name="tarjeta_street" onChange="javascript:limpiaTexto(this);" size="30">
		</td>
		<td id="id_tarjeta_housenumber" colspan="2">
		<label>
			{_LABEL_NUMERO}
		</label>
			<input type=text class=input name="tarjeta_housenumber" onChange="javascript:limpiaTexto(this);" size="10">
		</td>
	</tr>
	<tr class="sub-titulo">
		<td id="id_tarjeta_zipcode">
		<label>
			{_LABEL_CODIGO_POSTAL}
		</label>
			<input type=text class=input name="tarjeta_zipcode" onChange="javascript:limpiaTexto(this);" size="12">
		</td>
		<td id="id_tarjeta_city">
		<label>
			{_LABEL_CIUDAD}
		</label>
			<input type=text class=input name="tarjeta_city" onChange="javascript:limpiaTexto(this);" size="18">
		</td>
		<td id="id_tarjeta_state">
		<label>
			{_LABEL_ESTADO}
		</label>
			<input type=text class=input name="tarjeta_state" onChange="javascript:limpiaTexto(this);" size="18">
		</td>
	</tr>
	<input type='hidden' name='tarjeta_pais' id='tarjeta_pais' value='{TARJETA_PAIS}'>
</table>
<input type=hidden name="tarjeta_additionaladdressinfo" value=" ">
<!-- inicio div mensaje verified by VISA -->
<div id="layer-msg-verified" style="display: none;">
{_MSG_VERIFICADOR_TARJETA_VISA}
</div>
<!-- fin div mensaje verified by VISA -->
<!-- inicio div mensaje Secure Code Mastercard -->
<div id="layer-msg-secure-code" style="display: none;">
{_MSG_VERIFICADOR_TARJETA_MASTERCARD}
</div>
<!-- fin div mensaje Secure Code Mastercard -->
<!-- inicio div layer CVV -->
<div id="layer_cvv" style="display: none;">
  <h4>{_TITULO_LAYER_CVV}</h4>
  <table cellpadding="0" cellspacing="0" style="width: 100%;" class="table">
    <tr>
      <td style="width: 330px; text-align: right;"><img src="/images/reservas/compra/popup_cvv_top.jpg" width="330" height="165" alt=""></td>
      <td style="font: normal 12px Arial, Helvetica, sans-serif; color: #333; padding: 0 15px 0 5px; text-align:left; vertical-align: middle;">{_FRASE_LAYER_CVV_TARJETA_TIPO_VISA}</td>
    </tr>
    <tr>
      <td colspan="2" style="background:#f3f4f9; font: normal 11px Arial, Helvetica, sans-serif; color: #333; text-align: right;"><a href="javascript:ocultar_layer_cod();">{_LABEL_CERRAR} x</a></td>
    </tr>
  </table>
</div>
<!-- final div layer CVV -->
<!-- inicio div layer CVV AX -->
<div id="layer_cvv_ax" style="display: none;">
  <h4>{_TITULO_LAYER_CVV}</h4>
  <table cellpadding="0" cellspacing="0" style="width: 100%;" class="table">
    <tr>
      <td style="width: 330px; text-align: right;"><img src="/images/reservas/compra/popup_cvv_down.jpg" width="330" height="165" alt=""></td>
      <td style="font: normal 12px Arial, Helvetica, sans-serif; color: #333; padding: 0 15px 0 5px; text-align:left; vertical-align: middle;">{_FRASE_LAYER_CVV_TARJETA_TIPO_AMERICAN}</td>
    </tr>
    <tr>
      <td colspan="2" style="background:#f3f4f9; font: normal 11px Arial, Helvetica, sans-serif; color: #333; text-align: right;"><a href="javascript:ocultar_layer_cod();">{_LABEL_CERRAR} x</a></td>
    </tr>
  </table>
</div>
<!-- final div layer CVV AX -->
<script type="text/javascript">
function mostrar_3D_secure() {
	var marca = '{TIPO_TARJETA}';
	if (marca == 'VI')
		{
		div = document.getElementById('layer-msg-verified');
		div.style.display = '';
		}
	if (marca == 'CA')
		{
		div = document.getElementById('layer-msg-secure-code');
		div.style.display = '';
		}
	}
mostrar_3D_secure();
</script>