<br>
<table width="100%">
	<tr> 
		<col width="67%">
		<col width="2%">
		<col width="30%">
		<td>	
			<h4>{_MSG_USUARIO_REGISTRADO}</h4>
			<table class=table cellspacing="0" cellpadding="0" width="100%">
				<tr> 
					<td colspan=2>{_MSG_USUARIO_REGISTRADO_DESC}<br>{ERROR_LOGIN}</td>
				</tr>
				<tr>
					<td>{_LABEL_LOGIN}</td>
					<td><input type=text name="login" id="id_login"></td>
				</tr>
				<tr>
					<td>{_LABEL_PASSWORD}</td>
					<td><input type=password name="password" id='id_password' onKeyPress="return submitenter(this,event)"></td>
				</tr>
				<tr>
					<td colspan=2><a href="{_URL_REGISTRO}" target='_blank'>{_LABEL_REGISTRESE}</a></td>
				</tr>
				<tr>
					<td colspan=2>
						<a href="{_URL_OLVIDO_CLAVE}" target='_blank'>{_LABEL_FORGOT_PASSWORD}</a>
					</td>
				</tr>
			</table>
		</td>
		<td></td>
		<td>
			<h4>{_MSG_USUARIO_ANONIMO}</h4>
			<table class=table width="100%" cellspacing="0" cellpadding="0">
				<tr> 
					<td>{_MSG_USUARIO_ANONIMO_DESC}</td>
				</tr>
				<tr> 
					<td>&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<table cellspacing="0" cellpadding="0" width='100%'>
        <tr>
                <td>&nbsp;</td>
		<td>
			<table cellspacing="0" cellpadding="0" id=barra-continuar>
				<tr>
				<td class=first>{_PASO3_PASO_SIGUIENTE}</td>
				<td class=last>&nbsp;&nbsp;</td>
				<td><input class=boton-destacado type='button' id='submitButton' name='next_step' value='{_LABEL_CONTINUAR}' onclick='check_and_submit_login(this.form)'></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
