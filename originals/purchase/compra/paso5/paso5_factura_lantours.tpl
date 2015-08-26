<script type="text/javascript">
 function valida_factura(form)
 	{
 	var errores = '';
	
	change_bg_for_id('id_factura_nombre_envio', 'ok');
	change_bg_for_id('id_factura_direccion_envio', 'ok');
	change_bg_for_id('id_factura_comuna_envio', 'ok');
	change_bg_for_id('id_factura_ciudad_envio', 'ok');
	change_bg_for_id('id_factura_email_envio', 'ok');
	
  	if (Empty(form.elements["factura_nombre_envio"].value))
 		{
		change_bg_for_id('id_factura_nombre_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_NOMBRE_PARA_ENVIAR_BOLETA_JS}\n';
 		}
 
 	if (Empty(form.elements["factura_direccion_envio"].value))
 		{
		change_bg_for_id('id_factura_direccion_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_DIRECCION_PARA_ENVIAR_BOLETA_JS}\n';
 		}
	else if (form.elements["factura_direccion_envio"].value.match(/casilla/i))
		{
		change_bg_for_id('id_factura_direccion_envio', 'dato-erroneo');
		errores += '--> {_ERROR_INGRESAR_DIRECCION_ENVIO_CON_CASILLA_JS}\n';
		}
	
 	if (Empty(form.elements["factura_comuna_envio"].value))
 		{
		change_bg_for_id('id_factura_comuna_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_COMUNA_DIRECCION_PARA_ENVIAR_BOLETA_JS}\n';
		}
	
 	if (Empty(form.elements["factura_ciudad_envio"].value))
 		{
		change_bg_for_id('id_factura_ciudad_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_CIUDAD_DIRECCION_PARA_ENVIAR_BOLETA_JS}\n';
 		}

	if (Empty(form.elements["factura_email_envio"].value))
		{
		change_bg_for_id('id_factura_email_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_EMAIL_PARA_ENVIAR_BOLETA_JS}\n';
		}

 	return errores;
	}

</script>

<h4>{_LABEL_DATOS_BOLETA_TERRESTRE}</h4>
<table class=table width="100%" cellspacing="0" cellpadding="0">
	<tr><td colspan=4>{_PARRAFO_PASO_5_BOLETA_EMITIDA}</td></tr>
	<tr><td class=sub-titulo colspan=4>{_MSG_NOMBRE_PARA_ENVIAR_BOLETA}</td></tr>
	<tr>
		<td>{_LABEL_NOMBRE_Y_APELLIDO}</td>
		<td id="id_factura_nombre_envio">
			<input type=text class=input name='factura_nombre_envio' value ='{FACTURA_NOMBRE_ENVIO}' maxlength='50'>
		</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr><td class=sub-titulo colspan=4>{_MSG_DIRECCION_PARA_ENVIAR_BOLETA}</td></tr>
	<tr> 
		<td>{_LABEL_DIRECCION}</td>
		<td id="id_factura_direccion_envio">
			<input type=text class=input name='factura_direccion_envio' value ='{FACTURA_DIRECCION_ENVIO}' maxlength='50'>
		</td>
		<td>{_LABEL_COMUNA}</td>
		<td id="id_factura_comuna_envio">
			<input type=text class=input name='factura_comuna_envio' value ='{FACTURA_COMUNA_ENVIO}' maxlength='50'>
		</td>
	</tr>
	<tr> 
		<td>{_LABEL_CIUDAD}</td>
		<td id="id_factura_ciudad_envio">
			<input type=text class=input name='factura_ciudad_envio' value ='{FACTURA_CIUDAD_ENVIO}' maxlength='50'>
		</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr> 
		<td>{_LABEL_EMAIL}</td>
		<td id="id_factura_email_envio">
			<input type=text class=input name='factura_email_envio' value ='{FACTURA_EMAIL_ENVIO}' maxlength='50'>
		</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td colspan="4">
			<input type="checkbox" value="Y" name="factura_electronica" checked>
			{_MSG_MANDATO_BOLETA_ELECTRONICA}
		</td>
	</tr>
</table>
