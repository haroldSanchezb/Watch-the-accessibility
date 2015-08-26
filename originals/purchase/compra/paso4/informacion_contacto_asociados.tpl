    <h4>{_TITULO_INFORMACION_CONTACTO} </h4>
    <table class="table" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td style='width:40%'>
				<table class="no-table" width="100%">
					<tr>
						<td id='id_email_l0' style="font-size:9pt;" >{_LABEL_EMAIL}</td>
						<td id='id_email_l1'>
							<input type=text class=input name="email" id="email" value='{EMAIL_VALUE}' size='26' maxlength="40" style="font-size:9pt;">
						</td>
					</tr>
					<tr>
						<td colspan='2' style="font-size:9pt;">
						{_MSG_UTILIZA_MAIL_PARA_CONTACTO_1}<br>{_MSG_UTILIZA_MAIL_PARA_CONTACTO_2}
						</td>
					</tr>
				</table>
			</td>
			<td>
				<table class="no-table" width="85%">
					<tr>
						<td style="text-align: left; font-size:9pt;">{_LABEL_LISTA_CODIGOS_TELEFONICOS}</td>
						<td colspan="5">
							<select class="combo-box" name="country_phone_code" onChange="set_all_phones_country_codes(this)" style="font-size:9pt;">
								{*COUNTRY_PHONE_CODES}<option value="{VALUE}" {SELECTED}>{TEXT}</option>{/COUNTRY_PHONE_CODES}
							</select>
						</td>
					</tr>
					<tr>
						<td id='id_telefono_casa_l0' style="text-align: left; font-size:9pt;">{_LABEL_TELEFONO_FIJO}</td>
						<td id='id_telefono_casa_l1'>
							<input type=text class=input name="telefono_casa_codigo_pais" size='1' value='{FONO_CASA_PAIS}' style="font-size:9pt;">
						</td>
						<td id='id_telefono_casa_l2' style="font-size:9pt;">
							-
						</td>
						<td id='id_telefono_casa_l3'>
							<input type=text class=input name="telefono_casa_codigo_ciudad" size='1' value='{FONO_CASA_CIUDAD}' style="font-size:9pt;">
						</td>
						<td id='id_telefono_casa_l4' style="font-size:9pt;">
							-
						</td>
						<td id='id_telefono_casa_l5'>
							<input type=text class=input name="telefono_casa_numero" value='{FONO_CASA_NUMERO}' size="9" maxlength="15" style="font-size:9pt;">
						</td>
					</tr>
					<tr>
						<td id='id_telefono_celular_l0' style="text-align: left; font-size:9pt;">{_LABEL_TELEFONO_CELULAR}</td>
						<td id='id_telefono_celular_l1'>
							<input type=text class=input name="telefono_celular_codigo_pais" size='1' value='{FONO_CELULAR_PAIS}' style="font-size:9pt;">
						</td>
						<td id='id_telefono_celular_l2' style="font-size:9pt;">
							-
						</td>
						<td id='id_telefono_celular_l3'>
							<input type=text class=input name="telefono_celular_codigo_ciudad" size='1' value='{FONO_CELULAR_CIUDAD}' style="font-size:9pt;">
						</td>
						<td id='id_telefono_celular_l4' style="font-size:9pt;">
							-
						</td>
						<td id='id_telefono_celular_l5'>
							<input type=text class=input name="telefono_celular_numero" value='{FONO_CELULAR_NUMERO}' size='9' maxlength="15" style="font-size:9pt;">
						</td>
					</tr>
					<tr>
						<td id='id_telefono_oficina_l0' style="text-align: left; font-size:9pt;">{_LABEL_TELEFONO_TRABAJO}</td>
						<td id='id_telefono_oficina_l1'>
							<input type=text class=input name="telefono_oficina_codigo_pais" size='1' value='{FONO_OFICINA_PAIS}' style="font-size:9pt;">
						</td>
						<td id='id_telefono_oficina_l2' style="font-size:9pt;">
							-
						</td>
						<td id='id_telefono_oficina_l3'>
							<input type=text class=input name="telefono_oficina_codigo_ciudad" size='1' value='{FONO_OFICINA_CIUDAD}' style="font-size:9pt;">
						</td>
						<td id='id_telefono_oficina_l4' style="font-size:9pt;">
							-
						</td>
						<td id='id_telefono_oficina_l5'>
							<input type=text class=input name="telefono_oficina_numero" value='{FONO_OFICINA_NUMERO}' size='9' maxlength="15" style="font-size:9pt;">
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

