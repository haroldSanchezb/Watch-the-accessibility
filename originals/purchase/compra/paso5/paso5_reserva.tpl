<script type='text/javascript'>
	function valida_forma_pago(f)
	{
		var msg = '';
		change_bg_for_id("id_validacion_anti_robot", "ok");
		if (f.validacion_anti_robot.value == '')
		{
			change_bg_for_id("id_validacion_anti_robot", "dato-erroneo");
			msg += "--> {_ERROR_CODIGO_MAL_INGRESADO_JS}\n";
		}
		if (msg != '')	
		{
			return(msg);
		}
		else
		{
			return('');
		}
	}
</script>
<div class=table>
<p>{_HTML_RESERVA_RESPETADA_1} <strong>{FECHA_LIMITE_RESERVA} ({PAIS_TKXL})</strong>.</p>
<p>{_HTML_RESERVA_RESPETADA_2}</p>
	<br>
	<p>{_LABEL_IMPORTANTE}: {_MSG_HTML_POSIBLE_ADELANTO_1}.<br><!--	<a href="javascript:MM_openBrWindow('/cgi-bin/compra/show_oficinas.cgi?session_id={SESSION_ID}','nombre','width=600,height=520,scrollbars=yes');">{_PALABRA_OFICINAS}</a>.-->{_MSG_HTML_POSIBLE_ADELANTO_2}</p>
	
</div>

{LISTA_OFICINAS}

<h4>{_HTML_RESERVA_EXPLICACION}</h4>
<table class=table cellpadding=0 cellspacing=0 width="100%">
	<tr>
		<td>
			<strong>{_HTML_RESERVA_CODIGO}</strong>
		</td>
		<td id="id_validacion_anti_robot">
			<input type=text name='validacion_anti_robot' maxlength='5' size='10'>
</td>
		<td>
			<img src='/cgi-bin/compra/genera_imagen_validacion.cgi?session_id={SESSION_ID}' width=180 height=80 alt=''>
		</td>
</table>
