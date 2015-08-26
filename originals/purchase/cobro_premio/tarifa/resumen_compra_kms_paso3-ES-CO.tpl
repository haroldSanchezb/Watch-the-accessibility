<input type='hidden' value='{TOTAL_KMS}' id='kms_totales'> 
<input type='hidden' value='{MONEDA}' id='moneda'>
<input type='hidden' value='{AUTH_NEXT_STEP}' id='auth_next_step'>
<input type='hidden' value='{TOTAL_MONTO}' id='km_total_monto'>
{*BLOQUE_COMPRAR}
<div id='resumen_pago_kms' name='resumen_pago_kms' style="display:{DISPLAY_TITLE}">
	<h4>{_LABEL_TOTAL_PAGAR}</h4>
	<table id="resumen_pago_kms_tabla" class="table" width="100%" border="0" cellspacing="0" cellpadding="0" style="display:{DISPLAY}">

	  <tr>
	    <th>{_LABEL_CONCEPTO_KMS}</th>
	    <th style="text-align:right; padding-right:32px;">{_LABEL_VALOR}</th>
		<!-- crear -->
	  </tr>
    
	  {*BLOQUE_DETALLE_COMPRA}
	  <tr>
		<td>{KMS} {LABEL_KMS_COMPRAR}</td>
		<td style="text-align:right; padding-right:32px;">{CURRENCY_SYMBOL}<label id='monto_tarifa'>{TARIFA}</label></td>
	  </tr>
	  <tr>
	  	<td>{_LABEL_TASAS_IMPUESTOS}</td>
		<td style="text-align:right; padding-right:32px;">{CURRENCY_SYMBOL}<label id='monto_tarifa'>{TASAS_E_IMPUESTOS}</label></td>
	  </tr>
	  {/BLOQUE_DETALLE_COMPRA}
	</table>
</div>
{/BLOQUE_COMPRAR}

