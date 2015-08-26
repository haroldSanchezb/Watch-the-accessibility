<script type='text/javascript'>
function cotizar_cuota_lancard(f)
{
var w;
var numero_tarjeta, rut, cuotas, gracia, monto, moneda;
numero_tarjeta = f.lancard_numero.value;
rut = f.lancard_rut.value;
cuotas = f.lancard_cuotas.value;
gracia = f.lancard_gracia.value;
monto = f.monto.value;
moneda = f.moneda.value;
if (f.elements['cotizacion_lancard_en_misma_pagina'] && f.elements['cotizacion_lancard_en_misma_pagina'].value == 'N')
{
f.submit();
}
else
{
w = window.open('/cgi-bin/compra/cotizacion_lancard.cgi?lancard_numero=' + numero_tarjeta + '&lancard_rut=' + rut + '&lancard_cuotas=' + cuotas + '&lancard_gracia=' + gracia + '&monto=' + monto + '&moneda=' + moneda, '_blank', 'scrollbars=yes, resizable=yes, width=500, height=400');
w.focus();
}
}
function valida_forma_pago(f)
{
var msg = '';
change_bg_for_id("id_lancard_numero", "ok");
change_bg_for_id("id_lancard_pin", "ok");
change_bg_for_id("id_lancard_rut", "ok");
if (f.lancard_numero.value == '')
{
change_bg_for_id("id_lancard_numero", "dato-erroneo");
msg += "--> {_MSG_NO_TARJETA_LANCARD}\n";
}
if (f.lancard_pin.value == '')
{
change_bg_for_id("id_lancard_pin", "dato-erroneo");
msg += "--> {_MSG_PIN_TARJETA_LANCARD}\n";
}
if (f.lancard_rut.value == '')
{
change_bg_for_id("id_lancard_rut", "dato-erroneo");
msg += "--> {_MSG_RUT_TARJETA_LANCARD}\n";
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
</script>
<input type='hidden' name='cotizacion_lancard_en_misma_pagina' value='{LANCARD_POPUP}'>
<table class=table cellpadding=0 cellspacing=0 width="100%">
	<tr>
		<td class=sub-titulo>
			{_LABEL_NO_TARJETA}
		</td>
		<td id='id_lancard_numero'>
			<input type=text class=input name='lancard_numero' size='16' value='{LANCARD_NUMERO}'>
		</td>
	</tr>
	<tr>
		<td class=sub-titulo>
			{_LABEL_RUT_USUARIO}
		</td>
		<td id='id_lancard_rut'>
			<input type=text class=input name='lancard_rut' size='16' value='{LANCARD_RUT}'>
		</td>
	</tr>
	<tr>
		<td class=sub-titulo>
			{_LABEL_NO_CUOTAS}
		</td>
		<td id='id_lancard_cuotas'>
			<select class=combo-box name='lancard_cuotas'>
				<option value='0' {CUOTAS_0_SELECTED}>
				0
				</option>
				<option value='3' {CUOTAS_3_SELECTED}>
				3
				</option>
				<option value='4' {CUOTAS_4_SELECTED}>
				4
				</option>
				<option value='5' {CUOTAS_5_SELECTED}>
				5
				</option>
				<option value='6' {CUOTAS_6_SELECTED}>
				6
				</option>
				<option value='7' {CUOTAS_7_SELECTED}>
				7
				</option>
				<option value='8' {CUOTAS_8_SELECTED}>
				8
				</option>
				<option value='9' {CUOTAS_9_SELECTED}>
				9
				</option>
				<option value='10' {CUOTAS_10_SELECTED}>
				10
				</option>
				<option value='11' {CUOTAS_11_SELECTED}>
				11
				</option>
				<option value='12' {CUOTAS_12_SELECTED}>
				12
				</option>
				<option value='13' {CUOTAS_13_SELECTED}>
				13
				</option>
				<option value='14' {CUOTAS_14_SELECTED}>
				14
				</option>
				<option value='15' {CUOTAS_15_SELECTED}>
				15
				</option>
				<option value='16' {CUOTAS_16_SELECTED}>
				16
				</option>
				<option value='17' {CUOTAS_17_SELECTED}>
				17
				</option>
				<option value='18' {CUOTAS_18_SELECTED}>
				18
				</option>
				<option value='19' {CUOTAS_19_SELECTED}>
				19
				</option>
				<option value='20' {CUOTAS_20_SELECTED}>
				20
				</option>
				<option value='21' {CUOTAS_21_SELECTED}>
				21
				</option>
				<option value='22' {CUOTAS_22_SELECTED}>
				22
				</option>
				<option value='23' {CUOTAS_23_SELECTED}>
				23
				</option>
				<option value='24' {CUOTAS_24_SELECTED}>
				24
				</option>
				<option value='25' {CUOTAS_25_SELECTED}>
				25
				</option>
				<option value='26' {CUOTAS_26_SELECTED}>
				26
				</option>
				<option value='27' {CUOTAS_27_SELECTED}>
				27
				</option>
				<option value='28' {CUOTAS_28_SELECTED}>
				28
				</option>
				<option value='29' {CUOTAS_29_SELECTED}>
				29
				</option>
				<option value='30' {CUOTAS_30_SELECTED}>
				30
				</option>
				<option value='31' {CUOTAS_31_SELECTED}>
				31
				</option>
				<option value='32' {CUOTAS_32_SELECTED}>
				32
				</option>
				<option value='33' {CUOTAS_33_SELECTED}>
				33
				</option>
				<option value='34' {CUOTAS_34_SELECTED}>
				34
				</option>
				<option value='35' {CUOTAS_35_SELECTED}>
				35
				</option>
				<option value='36' {CUOTAS_36_SELECTED}>
				36
				</option>
			</select>
		</td>
	</tr>
	<tr>
		<td class=sub-titulo>
			{_LABEL_MESES_GRACIA}
		</td>
		<td id='id_lancard_gracia'>
			<select class=combo-box name='lancard_gracia'>
				<option value='0' {GRACIA_0_SELECTED}>
				0
				</option>
				<option value='1' {GRACIA_1_SELECTED}>
				1
				</option>
				<option value='2' {GRACIA_2_SELECTED}>
				2
				</option>
			</select>
		</td>
	</tr>
	<tr>
		<td class=right colspan=4>
			<input type=button class=boton-secundario value='{_LABEL_COTIZAR_CUOTA}' onclick='cotizar_cuota_lancard(this.form)' name="cotizar">
		</td>
	</tr>
</table>
