<h4>Elecci&oacute;n pago Cargo por combustible</h4>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table">
	<col width="4%">
	<col width="96%">
<!--	<form name="form" method="post" action=""> -->
	<tr>
		<td style="padding-left:15px;">
			<input type="radio" name="radio" id="pago_kms" value="pago_kms" CHECKED onClick='show_detalle_pago()'>
		</td>
		<td>Pago con kms. LANPASS <b>({KMS} {_LABEL_KMS})</b></td>
	</tr>
	<tr>
		<td style="padding-left:15px;">
			<input type="radio" name="radio" id="pago_plata" value="pago_plata" onClick='show_detalle_pago()'>
		</td>
		<td>Pago en pesos de los kms. <b>({CURRENCY_SYMBOL}{MONTO})</b></td>
	</tr>
<!--	</form>	-->
</table>
