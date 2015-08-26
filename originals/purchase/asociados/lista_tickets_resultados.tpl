
<h1>Lista de tickets</h1>


<table class="table" width="100%" cellspacing="0" cellpadding="0">
	<tr> 
		<th>Fecha</th>
		<th>N&uacute;mero de ticket</th>
		<th>Estado</th>
		<th>PNR</th>
		<th>Forma de Pago</th>
		<th>Pasajero</th>
		<th>Acci&oacute;n</th>
	{*RESULTADOS} 
	<tr> 
		<td style="white-space: nowrap;">{FECHA}</td>
		<td style="white-space: nowrap;"><a href="/cgi-bin/recibo_eticket/recibo_eticket.cgi?pnr=&amp;foid=&amp;ticket={NUMERO_TICKET}&amp;apellido={APELLIDO}&amp;accion=paso2">{NUMERO_TICKET}</a></td>
		<td style="white-space: nowrap;">{ESTADO}</td>
		<td style="white-space: nowrap;"><a href='/cgi-bin/asociados/edit_pnr.cgi?pnr={PNR}'>{PNR}</a></td>
		<td style="white-space: nowrap;">{FORMA_PAGO}</td>
		<td style="white-space: nowrap;">{PASAJERO}</td>
		<td style="white-space: nowrap;">{*ANULA_TICKET}<a href="anula_ticket.cgi?numtkt={NUMERO_TICKET}">Anular ticket</a>{/ANULA_TICKET}&nbsp;</td>
	</tr>
	{/RESULTADOS} 
</table>
  
{MSG}
