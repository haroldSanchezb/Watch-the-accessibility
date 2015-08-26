<table cellspacing="0" cellpadding="0" style="width: 100%; border: 1px solid #CCC; margin: 0 auto; margin-top: 15px; margin-bottom: 15px;">
  <tr style="background: #DCE0EE; font: 14px Arial, Helvetica, sans-serif; color: #363636; text-align: left;">
    <td colspan="7" style="font-weight: bold; padding: 4px 0 0 5px; border-bottom: 1px solid #ccc; background: #033d7d; color: #fff;">{_LABEL_MAIL_CAMBIO_DETALLE_TARIFA}</td>
  </tr>
	<tr> 
		<td align="left" style="background: #F3F4F9; font: 14px Arial, Helvetica, sans-serif; color: #003E7E; border: 0px solid #F3F4F9;">&nbsp;</td>
		<td align="left" style="background: #F3F4F9; font: 14px Arial, Helvetica, sans-serif; color: #003E7E; border: 0px solid #F3F4F9;"><strong>{_LABEL_TARIFA}</strong></td>
		<td align="left" style="background: #F3F4F9; font: 14px Arial, Helvetica, sans-serif; color: #003E7E; border: 0px solid #F3F4F9;"><strong>{_LABEL_IMPUESTO}</strong></td>
		{ENCABEZADO_SOBRECARGO}
		{ENCABEZADO_FEE}
		<td align="left" style="background: #F3F4F9; font: 14px Arial, Helvetica, sans-serif; color: #003E7E; border: 0px solid #F3F4F9;"><strong>{_LABEL_TOTAL} ({CURRENCY})</strong></td>
	</tr>
	{LINEAS_TARIFA}
	{LINEAS_DESCUENTO}
	<tr class=sub-titulo> 
		<td align="left" style="background: #F3F4F9; font: 12px Arial, Helvetica, sans-serif; color: #333; border: 0px solid #F3F4F9;"><strong>{_LABEL_TOTAL}</strong></td>
		<td align="left" style="background: #F3F4F9; font: 12px Arial, Helvetica, sans-serif; color: #333; border: 0px solid #F3F4F9;">{TOTAL_TARIFA}</td>
		<td align="left" style="background: #F3F4F9; font: 12px Arial, Helvetica, sans-serif; color: #333; border: 0px solid #F3F4F9;">{TOTAL_IMPUESTOS}</td>
		{CAMPO_TOTAL_SOBRECARGO}
		{CAMPO_TOTAL_FEE}
		<td align="left" style="background: #F3F4F9; font: 12px Arial, Helvetica, sans-serif; color: #333; border: 0px solid #F3F4F9;"><strong>{SIMBOLO_MONEDA} {TOTAL}</strong></td>
	</tr>
</table>
