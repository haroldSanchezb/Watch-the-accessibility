<script type="text/javascript">
function reload_con_convenio_reserva(f)
{
if (f.elements['convenio_empresa'].value=='')
	{
	alert('{_MSG_ERROR_DEBE_INGRESAR_CONVENIO_JS}');
	return false;
	}
window.location = 'paso2r.cgi?session_id={SESSION_ID}&id={ID_RESERVA}&convenio_empresa_asociados=' + f.elements['convenio_empresa'].value;
}
</script>


<h4>{_LABEL_INGRESE_CONVENIO}</h4>

<table class="table" width="100%" cellspacing="0" cellpadding="0">
	<col width="10%">
	<col width="90%">
	<tr> 
		<td>
			<input type=text name=convenio_empresa>
		</td>
		<td>
			<input type='button' onClick='reload_con_convenio_reserva(this.form)' value='{_LABEL_RECALCULAR}' name="button">
		</td>
	</tr>
</table>
