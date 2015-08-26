<table cellspacing="0" cellpadding="0" width='100%'>
	<tr> 
		<td>{_TITULO_COTIZACION_CUOTAS_LANCARD}</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
</table><br>


<form action='/cgi-bin/compra/cotizacion_lancard.cgi'>
	{SOLICITUD}
	<table border='0' cellpadding='3' cellspacing='0'>
		<tr>
			<th>
				{_LABEL_MONTO}
			</th>
			<td id='id_monto'>
				<input type=text class=input size='10' name='monto' value='{MONTO}'> {MONEDA}
				<input type='hidden' name='moneda' value='{MONEDA}'>
			</td>
			<th>
				{_LABEL_VALOR_CUOTA}
			</th>
			<td id='id_monto'>
				{VALOR_CUOTA}
			</td>	
		</tr>
	</table>
</form>
{RESPUESTA}
