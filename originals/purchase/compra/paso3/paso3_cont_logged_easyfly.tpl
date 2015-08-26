
	<table cellspacing="0" cellpadding="0" id=barra-continuar>
		<tr>
			<td class=first id='id_checkbox'><input type="checkbox" name="acepta_regulacion_easyfly" id="acepta_regulacion_easyfly"> 
				<label for="acepta_regulacion_easyfly">
					<a href="javascript:MM_openBrWindow('/cgi-bin/compra/show_regulaciones.cgi?session_id={SESSION_ID}','nombre','width=600,height=520,scrollbars=yes');">{_MSG_ACEPTO_REGULACIONES_EASYFLY}</a>
				</label>
			</td>
			<td class=last>&nbsp;&nbsp;</td>
			<td>
				<input type='button' class=boton-destacado onclick='check_and_submit_easyfly(this.form)' name='next_step' value='{_LABEL_CONTINUAR}'>
			</td>
		</tr>
	</table>

<script type="text/javascript">
	if (typeof(check_sellup) != 'undefined')
		{
		check_sellup();
		}
	function check_and_submit_easyfly(f)
		{
		if (f.elements['acepta_regulacion_easyfly'].checked)
			{
			f.submit();	
			}
		else
			{
			alert('{_MSG_DEBE_ACEPTAR_REGULACION_EASYFLY_JS}');
			}
		}
</script>
