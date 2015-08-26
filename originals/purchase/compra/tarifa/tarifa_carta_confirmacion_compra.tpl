
{*REGULACIONES}

{/REGULACIONES}
<table cellspacing="0" cellpadding="0" style="width: 100%; border: 1px solid #CCC; margin: 0 auto; margin-top: 15px; margin-bottom: 15px;">
  <tr style="background: #DCE0EE; font: 14px Arial, Helvetica, sans-serif; color: #363636; text-align: left;">
    <td colspan="8" style="font-weight: bold; padding: 4px 0 0 5px; border-bottom: 1px solid #ccc; background: #033d7d; color: #fff;">{_LABEL_TARIFA_EN} {NOMBRE_MONEDA}</td>
  </tr>
	<tr> 
		<td align="left" style="border: 0px solid #CCC;">&nbsp;</td>
		<td align="left" style="border: 0px solid #CCC;"><strong>{LABEL_KMS}</strong>&nbsp;</td>
		<td align="left" style="border: 0px solid #CCC;"><strong>{_LABEL_TARIFA}</strong></td>
		<td align="left" style="border: 0px solid #CCC;"><strong>{_LABEL_IMPUESTO}</strong></td>
		{ENCABEZADO_SOBRECARGO}
		{ENCABEZADO_FEE}
		<td align="left" style="border: 0px solid #CCC;"><strong>{_LABEL_TOTAL} ({CURRENCY}{EXTRA_KMS})</strong></td>
	</tr>
	{LINEAS_TARIFA}
	{LINEAS_DESCUENTO}
	<tr class=sub-titulo> 
		<td align="left" style="border: 0px solid #CCC;">Total</td>
		<td align="left" style="border: 0px solid #CCC;">{TOTAL_KMS}</td>
		<td align="left" style="border: 0px solid #CCC;">{TOTAL_TARIFA}</td>
		<td align="left" style="border: 0px solid #CCC;">{TOTAL_IMPUESTOS}</td>
		{CAMPO_TOTAL_SOBRECARGO}
		{CAMPO_TOTAL_FEE}
		<td align="left" style="border: 0px solid #CCC;"><strong>{SIMBOLO_MONEDA} {TOTAL}</strong></td>
	</tr>
</table>
<input type='hidden' name='moneda' value='{CURRENCY_COTIZACION}'>
<input type='hidden' name='monto' value='{TOTAL_COTIZACION}'>
{EXTRA_LABEL}

