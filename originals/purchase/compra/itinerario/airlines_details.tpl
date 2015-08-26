<h4 style="background-color: #033d7d; font: 14px Arial, Helvetica, sans-serif; color: #fff; text-align: left; font-weight: bold; padding: 6px 4px 6px 8px; margin:0px; border:none; ">{_LABEL_VUELOS}</h4>
<table cellspacing="0" cellpadding="0" style="width: 100%; border: 1px solid #CCC; margin:0 auto; font-family:Arial; font-size:10pt;">
    <tbody>
       <tr>
			<th style="background: #d0e5f6; color: #415884; width:20%;">{_LABEL_VUELOS}</th>
			<th style="background: #d0e5f6; color: #415884; width:40%;">{_LABEL_AEROLINEA_OPERADORA}</th>
			<th style="background: #d0e5f6; color: #415884; width:40%;">{_LABEL_AEROLINEA_COMERCIALIZADORA}</th>
	  </tr>
{DETAILS}
{*AIRLINES_LINE}
	  <tr>
			<td align="center">{FLIGHT}</td>
			<td align="center">{OPERATING}<br />{NIT_OPERATING}</td>
			<td align="center">{MARKETING}<br />{NIT_MARKETING}</td>
      </tr>
{/AIRLINES_LINE}
</tbody>
</table>
