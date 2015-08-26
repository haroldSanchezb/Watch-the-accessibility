<input type='hidden' value='{TOTAL_KMS}' id='kms_totales'>
<input type='hidden' value='{MONEDA}' id='moneda'>
<input type='hidden' value='{AUTH_NEXT_STEP}' id='auth_next_step'>
<input type='hidden' value='{TOTAL_MONTO}' id='km_total_monto'>

<div id='resumen_pago_kms' name='resumen_pago_kms' style="display: {DISPLAY_TITLE}">
	<h4>{_LABEL_RESUMEN_PAGO}</h4>
	<table id="resumen_pago_kms_tabla" class="table" width="100%" border="0" cellspacing="0" cellpadding="0" style="display:{DISPLAY}">
	  <tr>
	    <th>&nbsp;</th>
	    <th>{_LABEL_KMS}</th>
	    <th>{_LABEL_EQUIVALENTE_MONEDA}</th>
	    <th>{_LABEL_IMPUESTO}</th>
	    <th>{_LABEL_FEES}</th>
	    <th>{_LABEL_TOTAL}<br /> ({MONEDA})</th>
	    {*BLOQUE_COMPRAR}<th>{_LABEL_COMPRAR}</th>{/BLOQUE_COMPRAR}
	  </tr>
	  <tr>
		<td>{_LABEL_KMS_COMPRAR} </td>
		<td style="text-align:center"><label id='monto_kms'>{KMS}</label></td>
		<td style="text-align:right">{CURRENCY_SYMBOL}<label id='monto_tarifa'>{TARIFA}</label></td>
		<td style="text-align:right"><label id='monto_impuestos'>{IMPUESTOS}</label></td>
		<td style="text-align:right"><label id='monto_fees'>{FEES}</label></td>
		<td style="text-align:right">{CURRENCY_SYMBOL}<label id='monto_total'>{TOTAL}</label></td>
		{*BLOQUE_CHECKBOX_COMPRA}<td style="text-align:center"><input type="checkbox" name="comprar_kms" id="comprar_kms"></td>{/BLOQUE_CHECKBOX_COMPRA}
	  </tr>
	</table>
</div>


