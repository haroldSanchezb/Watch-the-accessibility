<script type="text/javascript">
function show_cupon ()
	{
	var ref_ventana = window.open('/cgi-bin/pago_facil/show_cupon.cgi?id_carro={ID_CARRO}','v_impresion','width=670,height=720,left=0,screenX=0, scrollbars=yes, resizable=yes');
	}
</script>
<table class=table cellspacing='0' cellpadding='0' width="100%">
	<tr>
		<td>
			{_LABEL_FORMA_PAGO}:&nbsp;
		</td>
		<td style="text-align: left">
			{_FORMA_DE_PAGO_PENDIENTE_PF}
		</td>
	</tr>
	<tr>
		<td>
			{_LABEL_MONTO_A_PAGAR}:&nbsp;
		</td>
		<td style="text-align: left">
			{CURRENCY}
			{MONTO}
		</td>
	</tr>
</table>
<p>
	Por favor, <a href="javascript:show_cupon()">imprima  el cup&oacute;n</a> y dir&iacute;jase al Pago F&aacute;cil m&aacute;s cercano para realizar su pago. Para m&aacute;s informaci&oacute;n acerca de los lugares de pago visite el <a href='http://www.e-pagofacil.com' target='_blank'>sitio de Pago F&aacute;cil</a>.
	<br>{_MSG_PF_PAGO_HASTA} {FECHA_DE_PAGO} ({_HORA_DE} {CITY_FECHA_PAGO} {_TIME_OF})
	<br>{_MSG_PF_EMISION_TKTS}
</p>
