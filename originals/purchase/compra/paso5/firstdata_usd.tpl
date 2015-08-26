<script src="/js/common.js" type='text/javascript'></script>
<script type='text/javascript'>
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
	change_bg_for_id("id_nombre_titular", "ok");
	change_bg_for_id("id_tipo_foid", "ok");

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
	if (f.nombre_titular.value == "")
		{
		change_bg_for_id("id_nombre_titular", "dato-erroneo");
		msg += "--> {_LABEL_NOMBRE_TITULAR_CC_JS}\n";
		}
	if (f.tipo_foid.selectedIndex == 0)
		{
		change_bg_for_id("id_tipo_foid", "dato-erroneo");
		msg += "--> {_LABEL_TIPO_DOCUMENTO_ID_JS}\n";
		}
	if (f.foid_pais_emisor.selectedIndex == 0 || f.foid_pais_emisor.value == '')
		{
		change_bg_for_id("id_tipo_foid", "dato-erroneo");
		msg += "--> {_LABEL_PAIS_DOCUMENTO_ID_JS}\n";
		}
	if (f.rut_titular.value == "")
		{
		change_bg_for_id("id_tipo_foid", "dato-erroneo");
		msg += "--> {_LABEL_NUMERO_DOCUMENTO_ID_JS}\n";
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
<table class=table width="100%" cellpadding="0" cellspacing="0">
	<!--<tr><td colspan="4">{_MSG_CONFIANZA_ANULACIONES}</td></tr> -->
	<tr>
		<td>
			{_LABEL_TIPO_TARJETA}
		</td>
		<td id="id_tipo_tarjeta">
		{TIPO_TARJETA_NAME}
		<input type="hidden" name="tipo_tarjeta" id="tipo_tarjeta" value="{TIPO_TARJETA}">
		</td>
		<td>
			{_LABEL_NOMBRE_TITULAR}
		</td>
		<td id="id_nombre_titular">
			<input type=text class=input name="nombre_titular" size='30' onChange="javascript:limpiaTexto(this);" value='{NOMBRE_TITULAR}'>
		</td>
	</tr>
	<tr>
		<td>
			{_LABEL_NUMERO_TARJETA}
			</th>
			<td id="id_n_tarjeta">
				<input type="hidden" name="tipo_venta" value="vn">
				<input type=text class=input name="n_tarjeta_ingresada" size='20' maxlength="30" onChange="javascript:limpia_tjta(this);">
				<input type="hidden" name="n_tarjeta">
				
			</td>
			<td>
				{_LABEL_DOCUMENTO_ID}
			</td>
			<td id="id_tipo_foid">
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
					<option value="dl" {SELECTED_DL}>
					{_LABEL_DL}
					</option>
				</select>
				<input type=text class=input name="rut_titular" size='12' value='{RUT_TITULAR_NO_PONER}'>
				<select name="foid_pais_emisor" class=combo-box>
					<option value=''>
					{_LABEL_SELECCIONE_PAIS}
					</option>
					{FULL_COUNTRIES_LIST}
				</select>
			</td>
	</tr>
	<tr>
		<td>
			{_LABEL_FECHA_EXPIRACION}
		</td>
		<td id="id_fecha_exp">
			<input type="hidden" name="fecha_exp">
			<select name="exp_month" class=combo-box>
				<option selected>
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
				<option selected>
				{_LABEL_ANO}
				</option>
				{*ANOS}
				<option {SELECTED_ANO} value="{ANO}">
				{TXT_ANO}
				</option>
				{/ANOS}
			</select>
		</td>
		<td>
			{_LABEL_DIRECCION}
		</td>
		<td id="id_tarjeta_address">
			<input type=text class=input name="tarjeta_address" onChange="javascript:limpiaTexto(this);" size="30">
		</td>
	</tr>
	<tr>
		<td>
			{_LABEL_CIUDAD}
		</td>
		<td id="id_tarjeta_city">
			<input type=text class=input name="tarjeta_city" onChange="javascript:limpiaTexto(this);" size="18">
		</td>
		<td>
			{_LABEL_CODIGO_POSTAL}
		</td>
		<td id="id_tarjeta_zipcode">
			<input type=text class=input name="tarjeta_zipcode" onChange="javascript:limpiaTexto(this);" size="12">
		</td>
	</tr>
	<input type='hidden' name='tarjeta_pais' id='tarjeta_pais' value='{TARJETA_PAIS}'>
</table>
