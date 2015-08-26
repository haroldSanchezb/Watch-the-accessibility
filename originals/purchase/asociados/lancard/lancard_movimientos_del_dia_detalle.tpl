
<tr>
	<td>{RUT}</td>
	<td>{CORRELATIVO}</td>
	<td colspan=2>{DESC}</td>
	<td>{RUTA}</td>
	<td>{MONTO}</td>
	<td>{CUOTAS}</td>
	<td>{TASA}</td>
	<td>{VAL_CUOTA}</td>
	<td><a href=# onClick='return window.open("/cgi-bin/asociados/lancard/comprobante.cgi?tipo_comp=v&amp;titular={NOMBRE}&amp;tarjeta={PLASTICO}&amp;cuotas={CUOTAS}&amp;tasa={TASA_NUM}&amp;valor_cuota={VAL_CUOTA}&amp;cod_aut={CORRELATIVO}&amp;monto={MONTO}","comprobante","toolbar=no,scrollbars=yes,width=600,height=600");'>Impresi&oacute;n de comprobante</a><br><a href="/cgi-bin/asociados/lancard/anula_transaccion.cgi?correlativo={CORRELATIVO}&amp;monto={MONTO_NO_FORMAT}&amp;cuotas={CUOTAS}" onClick="return confirm('Confirme que desea anular la compra {CORRELATIVO}');">Anulaci&oacute;n de compra</a></td>
</tr>
