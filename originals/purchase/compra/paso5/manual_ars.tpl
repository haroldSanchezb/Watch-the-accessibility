<script src="/js/common.js" type="text/javascript"></script>
<script type="text/javascript">
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
change_bg_for_id("id_tarjeta_nombre_extension", "ok");
change_bg_for_id("id_tipo_foid", "ok");
change_bg_for_id("id_foid_pais_emisor", "ok");
/*
if (f.tipo_tarjeta.selectedIndex == 0)
{
change_bg_for_id("id_tipo_tarjeta", "dato-erroneo");
msg += "--> {_LABEL_TIPO_CC_JS}\n";
}
*/
if (f.foid_pais_emisor.selectedIndex == 0 && f.no_mostrar_foid.selectedIndex == 'false')
{
change_bg_for_id("id_foid_pais_emisor", "dato-erroneo");
msg += "--> {_LABEL_PAIS_EMISION_CC_JS}\n";
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
if (f.tipo_foid.selectedIndex == 0 && f.no_mostrar_foid.selectedIndex == 'false')
{
change_bg_for_id("id_tipo_foid", "dato-erroneo");
msg += "--> {_LABEL_TIPO_DOCUMENTO_ID_JS}\n";
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
<input type='hidden' name='no_mostrar_foid' value='{NO_MOSTRAR_FOID}'>
<table class=table cellpadding="0" cellspacing="0" width="100%">
	<!--<tr><td colspan="4">{_MSG_CONFIANZA_ANULACIONES}</td></tr> -->
	<tr>
		<td>
			{_LABEL_TIPO_TARJETA}
		</td>
		<td id="id_tipo_tarjeta">
		{TIPO_TARJETA_NAME}
		<input type="hidden" name="tipo_tarjeta" id="tipo_tarjeta" value="{TIPO_TARJETA}">
<!--
			<select name="tipo_tarjeta">
				<option>
				{_LABEL_SELECCIONE}
				</option>
				<option {SELECTED_MARCA_VI} value="VI">
				{_LABEL_VISA}
				</option>
				<option {SELECTED_MARCA_CA} value="CA">
				{_LABEL_MASTERCARD}
				</option>
				<option {SELECTED_MARCA_DC} value="DC">
				{_LABEL_DINERS}
				</option>
				<option {SELECTED_MARCA_AX} value="AX">
				{_LABEL_AX}
				</option>
				<option {SELECTED_MARCA_MG} value="MG">
				{_LABEL_MAGNA}
				</option>
			</select>
-->
		</td>
		<td>
			{_LABEL_NOMBRE_APARECE_EN_TARJETA}
		</td>
		<td id="id_nombre_titular">
			<input name="nombre_titular" size='30' type="text" class="input-text" onChange="javascript:limpiaTexto(this);" value='{NOMBRE_TITULAR}'>
		</td>
	</tr>
<!--
<tr>
<td colspan="4">* {_MSG_PROBLEMA_TIPO_TARJETA}
</td>
</tr>
-->
	<tr>
		<td>
			{_LABEL_NUMERO_TARJETA}
		</td>
		<td id="id_n_tarjeta">
			<input type="hidden" name="tipo_venta" value="vn">
			<input name="n_tarjeta" type="text" class="input-text" size='20' maxlength="30" onChange="javascript:limpia_tjta(this);" value="{NUMERO_TARJETA}">
		</td>

{*BLOQUE_FOID}
		<td>
			{_LABEL_DOCUMENTO_ID}
		</td>
		<td id="id_tipo_foid">
			<select name="tipo_foid">
				<option selected>
				{_LABEL_SELECCIONE}
				</option>
				<option value="pp" {SELECTED_PP}>
				{_LABEL_PASAPORTE}
				</option>
				<option value="ni" {SELECTED_NI}>
				{_LABEL_C_ID}
				</option>
			</select>
			<input name="rut_titular" type="text" size='12' class="input-text" value='{RUT_TITULAR_NO_PONER}'>
			<select name="foid_pais_emisor">
					<option value=''>
					{_LABEL_SELECCIONE_PAIS}
					</option>
					{FULL_COUNTRIES_LIST}
			</select>
		</td>		
{/BLOQUE_FOID}
{*BLOQUE_NO_FOID}
			<input type='hidden' name='rut_titular' value='{RUT_TITULAR}'>
        	<input type='hidden' name='tipo_foid' value='NI'>
		    <input type='hidden' name='foid_pais_emisor' value=''>				
{/BLOQUE_NO_FOID}
	</tr>
	<tr>
		<td>
			{_LABEL_FECHA_EXPIRACION}
		</td>
		<td id="id_fecha_exp">
			<input type="hidden" name="fecha_exp">
			<select name="exp_month">
				<option selected>
				{_LABEL_MES}
				</option>
				<option {SELECTED_MES_01} value="01">
				01
				</option>
				<option {SELECTED_MES_02} value="02">
				02
				</option>
				<option {SELECTED_MES_03} value="03">
				03
				</option>
				<option {SELECTED_MES_04} value="04">
				04
				</option>
				<option {SELECTED_MES_05} value="05">
				05
				</option>
				<option {SELECTED_MES_06} value="06">
				06
				</option>
				<option {SELECTED_MES_07} value="07">
				07
				</option>
				<option {SELECTED_MES_08} value="08">
				08
				</option>
				<option {SELECTED_MES_09} value="09">
				09
				</option>
				<option {SELECTED_MES_10} value="10">
				10
				</option>
				<option {SELECTED_MES_11} value="11">
				11
				</option>
				<option {SELECTED_MES_12} value="12">
				12
				</option>
			</select>
			<select name="exp_year">
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
		
	</tr>
	<tr>
		<td>
			<a href="javascript:MM_openBrWindow('/reservas/compra/pop_tarjetas.html','','width=271,height=435')">{_LABEL_CODIGO_VERIFICACION}</a>
		</td>
		<td id="id_digito_verificador">
			<input name="digito_verificador" type="text" class="input-text" size="12" maxlength="4" value="{CODIGO_SEGURIDAD}">
		</td>
		<td>
			{_TXT_SI_ES_EXTENSION}
		</td>
		<td id="id_tarjeta_nombre_extension">
			<input name="nombre_extension" size='30' type="text" onChange="javascript:limpiaTexto(this);" value='{NOMBRE_EXTENSION}'>
		</td>
	</tr>
	<tr>
		<td id="id_cuotas">
			<input type="hidden" name="tipo_venta" value="vn">
			<input type="hidden" name="cuotas" id="cuotas" value="0">
		</td>
	</tr>
</table>
