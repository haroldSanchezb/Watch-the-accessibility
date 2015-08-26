<td>
	<h4>{_LABEL_AUTH_SOCIO_LANPASS}</h4>
	<table class="table" width="100%">
		<tr>
			<td id='id_mbr_nbr'>{_LABEL_MBR_NBR}</td>
			<td id='id_mbr_nbr_input'>
				<input type=text class=input id="mbr_nbr" name="mbr_nbr" value='{MBR_NBR}' maxlength="40">
			</td>
		</tr>
		<tr>
			<td id='id_password_mbr'>{_LABEL_MBR_PASSWORD}</td>
			<td id='id_password_mbr_input'>
				<input type=password class=input id="mbr_password" name="mbr_password" value='{MBR_PASSWORD}' maxlength="40">
			</td>
		</tr>
		<tr>
			<td id='id_message_mbr' colspan=2>
				{MESSAGE}
				<input type=hidden class=input id="mbr_checksum" name="mbr_checksum" value='{MBR_CHECKSUM}'>
			</td>
		</tr>
	</table>
</td>
