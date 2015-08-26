<br>
<h4 style="background-color: #033d7d; font: 14px Arial, Helvetica, sans-serif; color: #fff; text-align: left; font-weight: bold; padding: 6px 4px 6px 8px; margin:0px; border:none; ">{_LABEL_DETALLE_IMPUESTOS}</h4>
<table cellspacing="0" cellpadding="0" style="width: 100%; border: 1px solid #CCC; margin:0 auto;">
    <tbody>
{TAX_DETAILS}
		<tr>
			<td>{_LABEL_TOTAL_IMPUESTOS}</td>
			<td>{TOTAL_TAX_CURRENCY} {TOTAL_TAX_AMMOUNT} </td>
		</tr>
		
{*TAX_LINE}
	    <tr>
			<td>{TAX_NAME}</td>
			<td>{TAX_CURRENCY} {TAX_AMMOUNT}</td>
        </tr>
{/TAX_LINE}
</tbody>
</table>
