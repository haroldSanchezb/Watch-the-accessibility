<script type="text/javascript">
	function check_and_submit()
		{
		var form = document.forms.solicitud_desbloqueo;
		
		var errores = '';

		if (Empty(form.first_name.value))
			{
			errores += "{_ERROR_INGRESE_NOMBRE}\n";
			}
		if (Empty(form.last_name.value))
			{
			errores += "{_ERROR_INGRESE_APELLIDO}\n";
			}
		if (Empty(form.email.value))
			{
			errores += "{_ERROR_INGRESE_EMAIL}\n";
			}
		if (Empty(form.validacion_anti_robot.value))
			{
			errores += "{_ERROR_INGRESE_CODIGO_SEGURIDAD}\n";
			}
			
		if (errores)
			{
			alert("{_ENCABEZADO_ERROR_JS}\n" + errores);
			}
		else
			{
			form.submit();
			}
		}
</script>

<h2>{_MSG_BLOQUEO_FILTROS}</h2>
<br>

{ERRORES}

<p>
	{_MSG_SOLICITUD_DESBLOQUEO}
</p>
<br>

<div style="width: 500px;">
<form name="solicitud_desbloqueo" action="/cgi-bin/ip_filter/solicitud_desbloqueo.cgi" method="POST" onSubmit="check_and_submit(); return false;">

	<input type="hidden" name="id_ip_range" value="{ID_IP_RANGE}">
	<input type="hidden" name="session_id" value="{SESSION_ID}">

	<h4>{_LABEL_SOLICITUD_DESBLOQUEO}</h4>
	<table class="table" width="100%" cellspacing="0">
		<tr>
			<td>Nombre:</td>
			<td><input type="text" size="20" maxlength="30" name="first_name" value="{FIRST_NAME}"></td>

			<td>&nbsp;&nbsp;&nbsp;</td>

			<td>Apellidos:</td>
			<td><input type="text" size="20" maxlength="30" name="last_name" value="{LAST_NAME}"></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td colspan="4"><input type="text" size="50" maxlength="64" name="email" value="{EMAIL}"></td>
		</tr>
	</table>

	<h4>{_HTML_RESERVA_EXPLICACION}</h4>
	<table class="table" width="100%" cellspacing="0">
		<tr>
			<td>
				<string>{_HTML_RESERVA_CODIGO}</strong>
			</td>
			<td id="id_validacion_anti_robot">
				<input type="text" name="validacion_anti_robot" maxlength="5" size="10">
			</td>
			<td>
				<img src="/cgi-bin/compra/genera_imagen_validacion.cgi?session_id={SESSION_ID}" width="180" height="80" alt="">
			</td>
		</tr>
	</table>
	
	<input class="flotar_der boton-destacado" type="submit" value="{_LABEL_ENVIAR}">

</form>
</div>
