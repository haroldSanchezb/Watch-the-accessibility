<h4>{_TITULO_FACTURA_COMPROBANTE}</h4>
<ul class=list>
	<li>{_MSG_SOLICITUD_DE_FACTURA_NO_ETICKET}</li>
	<!--<li>
		<input id="id_desea_factura" type="checkbox" name="desea_factura" value='si' {CHECKED}>
		<label for="id_desea_factura">{_LABEL_DESEO_FACTURA_COMPROBANTE}</label>
	</li>-->
	<li>
		<input id="id_no_desea_factura" type="radio" name="desea_factura" value='' disabled>
		<label for="id_no_desea_factura">{_LABEL_NO_DESEO_FACTURA_COMPROBANTE}</label>
	</li>
	<li>
		<input id="id_desea_factura" type="radio" name="desea_factura" value='si' {CHECKED} disabled>
		<label for="id_desea_factura">{_LABEL_DESEO_FACTURA_COMPROBANTE}</label>
	</li>
</ul>
<script type="text/javascript">
if (!document.getElementById('id_desea_factura').checked)
	{
	document.getElementById('id_no_desea_factura').checked = true;
	}
</script>
<br>
