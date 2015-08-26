<script type="text/javascript">
function change_certificate(theForm)
{
theForm.codigo_certificado.value = theForm.certificados_lista.value;
}
</script>
<select name='certificados_lista' onChange='javascript:change_certificate(this.form);'>
	<option value=''>
	</option>
	{OPTIONS}
</select>
