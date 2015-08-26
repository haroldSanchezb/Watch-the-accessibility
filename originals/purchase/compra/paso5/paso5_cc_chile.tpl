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
change_bg_for_id("id_digito_verificador", "ok");
change_bg_for_id("id_nombre_titular", "ok");
change_bg_for_id("id_rut_titular", "ok");
change_bg_for_id("id_tarjeta_address", "ok");
change_bg_for_id("id_tarjeta_city", "ok");
if (f.tipo_tarjeta.selectedIndex == 0)
{
change_bg_for_id("id_tipo_tarjeta", "dato-erroneo");
msg += "--> {_LABEL_TIPO_CC_JS}\n";
}
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
//if (f.tipo_foid.selectedIndex == 0)
//{
//change_bg_for_id("id_tipo_foid", "dato-erroneo");
//msg += "--> {_LABEL_TIPO_DOCUMENTO_ID_JS}\n";
//}
if (f.rut_titular.value == "")
{
change_bg_for_id("id_rut_titular", "dato-erroneo");
msg += "--> {_LABEL_NUMERO_DOCUMENTO_ID_JS}\n";
}
if (f.tarjeta_address.value == "")
{
change_bg_for_id("id_tarjeta_address", "dato-erroneo");
msg += "--> {_LABEL_DIRECCION_CC_JS}\n";
}
if (f.tarjeta_city.value == "")
{
change_bg_for_id("id_tarjeta_city", "dato-erroneo");
msg += "--> {_LABEL_CIUDAD_CC_JS}\n";
}
if (f.cuotas.selectedIndex == 0)
{
f.tipo_venta.value = 'vn';
}
else
{
f.tipo_venta.value = 'vc';
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

{DATA_LAYER_LOCAL_DEFINITION}

<input type='hidden' name='tarjeta_pais' value='CL'>
<input type='hidden' name='foid_pais_emisor' value='CL'>
<table width="100%" class=table cellpadding="0" cellspacing="0">
	<col width="20%">
	<col width="20%">
	<col width="20%">
	<col width="20%">
	<tr>
		<td>
			{_LABEL_TIPO_TARJETA}
		</td>
		<td id="id_tipo_tarjeta">
			<select name="tipo_tarjeta" class=combo-box>
				<option selected>
				{_LABEL_SELECCIONE}
				</option>
				<option value="VI">
				{_LABEL_VISA}
				</option>
				<option value="CA">
				{_LABEL_MASTERCARD}
				</option>
				<option value="DC">
				{_LABEL_DINERS}
				</option>
				<option value="AX">
				{_LABEL_AX}
				</option>
				<option value="MG">
				{_LABEL_MAGNA}
				</option>
			</select>
		</td>
		<td>
			{_LABEL_NOMBRE_TITULAR}
		</td>
		<td id="id_nombre_titular">
			<input type=text class=input name="nombre_titular" onChange="javascript:limpiaTexto(this);" value='{NOMBRE_TITULAR}'>
		</td>
	</tr>
	<tr>
		<td>
			{_LABEL_NUMERO_TARJETA}
		</td>
		<td id="id_n_tarjeta">
			<input type=text class=input name="n_tarjeta" size="20" maxlength="30" onChange="javascript:limpia_tjta(this);">
		</td>
		<td>
			{_LABEL_DOCUMENTO_ID}
			<br>
			{_LABEL_C_ID}
		</td>
		<td id="id_rut_titular">
			<input type=hidden name="tipo_foid" value='NI'>
			<input type=text class=input name="rut_titular" value='{RUT_TITULAR_NO_PONER}' size="12">
		</td>
	</tr>
	<tr>
		<td>
			{_LABEL_FECHA_EXPIRACION}
		</td>
		<td id="id_fecha_exp">
			<input type="hidden" name="fecha_exp">
			<select id="exp_month" name="exp_month">
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
				</optioni>
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
			{_LABEL_DIRECCION_FACTURACION}
		</td>
		<td id="id_tarjeta_address">
			<input type=text class=input name="tarjeta_address" onChange="javascript:limpiaTexto(this);" size="28" maxlength="50">
		</td>
	</tr>
	<tr>
		<td>
			<a href="javascript:MM_openBrWindow('/reservas/compra/pop_tarjetas.html','','width=271,height=435')">{_LABEL_CODIGO_VERIFICACION}</a>
		</td>
		<td id="id_digito_verificador">
			<input type=text class=input name="digito_verificador" size="12" maxlength="4">
		</td>
		<td>
			{_LABEL_CIUDAD}
		</td>
		<td id="id_tarjeta_city">
			<input type=text class=input name="tarjeta_city" onChange="javascript:limpiaTexto(this);" size="18" maxlength="30">
			<input type="hidden" name="tarjeta_pais" value="cl">
		</td>
	</tr>
	<tr>
		<td colspan=3>
			{_MSG_CANTIDAD_DE_CUOTAS_A_PAGAR}
		</td>
		<td>
			<input type="hidden" name="tipo_venta" value="vn">
			<select name="cuotas" class=combo-box>
				<option value="0" selected>
				{_LABEL_SIN_CUOTAS}
				</option>
				<option value="3">
				3 {_LABEL_CUOTAS_CON_INTERESES}
				</option>
				<option value="6">
				6 {_LABEL_CUOTAS_CON_INTERESES}
				</option>
				<option value="9">
				9 {_LABEL_CUOTAS_CON_INTERESES}
				</option>
				<option value="12">
				12 {_LABEL_CUOTAS_CON_INTERESES}
				</option>
			</select>
		</td>
	</tr>
</table>
