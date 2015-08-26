	<h4>{_TITULO_INFORMACION_CONTACTO} </h4>
    <table class="table" cellspacing="0" cellpadding="0" width="100%">
		<tr style="display:{DISPLAY};">
			<td colspan="2" style="font-size:9pt;">
				{LABEL_INGRESAR_DATOS_PERSONALES}
			</td>
		</tr>
		<tr>
			<td>
				<table class="no-table" width="100%">
                <colgroup>
                	<col width="31%" />
                    <col width="6%" />
                    <col width="2%" />
                    <col width="6%" />
                    <col width="2%" />
                    <col width="10%" />
                    <col width="43%" />
                </colgroup>
					<tr>
						<td style="text-align: left; font-size:9pt;">{_LABEL_PASAJERO_A_NOTIFICAR}</td>
						<td colspan="6">
							<select style="width:180px; font-size:9pt;" class="combo-box" name="self_notify_paxs">
							</select>						
						</td>
					</tr>
					<tr>
						<td id='id_email_l0' style="font-size:9pt;">{_LABEL_EMAIL}</td>
						<td id='id_email_l1' colspan="6">
							<input type="text" class="input" name="email" id="email" value='{EMAIL_VALUE}' size='32' maxlength="40" style="font-size:9pt;">
						</td>
					</tr>
					{*BLOQUE_REGISTRO_EMAIL}
					<tr>
					  <td>&nbsp;</td>
					  <td colspan="6" style="padding:4px 0 8px 0; vertical-align: top;"><input type="checkbox" name="registro_email" id="registro_email" value="registrar" {CHECKED} > <label for="registro_email">{_MSG_RECIBIR_OFERTAS_PROMOCIONES}</label></td>
				  	</tr>
					{/BLOQUE_REGISTRO_EMAIL}
					<tr>
						<td style="text-align: left; font-size:9pt;">{_LABEL_LISTA_CODIGOS_TELEFONICOS}</td>
						<td colspan="6">
							<select style="width:180px; font-size:9pt;" class="combo-box" name="country_phone_code" onchange="set_all_phones_country_codes(this);bloquea_cod_cel_pe(document.paso4.telefono_celular_codigo_pais.value)">
								{*COUNTRY_PHONE_CODES}<option value="{VALUE}" {SELECTED}>{TEXT}</option>{/COUNTRY_PHONE_CODES}
							</select>						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td style="text-align: center; font-size:9pt; padding-top:8px;">{_LABEL_PAIS}</td>
						<td>&nbsp;</td>
						<td style="text-align: center; font-size:9pt; padding-top:8px;">{_LABEL_AREA}</td>
						<td>&nbsp;</td>
						<td style="text-align:left; font-size:9pt; padding-left:10px; padding-top:8px;">{_LABEL_NUMERO}</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td id='id_telefono_casa_l0' style="text-align: left; font-size:9pt;">{_LABEL_TELEFONO_FIJO}</td>
						<td id='id_telefono_casa_l1'>
							<input type="text" class="input" name="telefono_casa_codigo_pais" size='1' maxlength="5" value='{FONO_CASA_PAIS}' style="font-size:9pt;" onblur="txt2sabre_txt(this);removeLeadingZeros(this)">
						</td>
						<td id='id_telefono_casa_l2' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_casa_l3'>
							<input type="text" class="input" name="telefono_casa_codigo_ciudad" size='1' maxlength="5" value='{FONO_CASA_CIUDAD}' style="font-size:9pt;" onblur="txt2sabre_txt(this);">						
						</td>
						<td id='id_telefono_casa_l4' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_casa_l5' colspan="2">
							<input type="text" class="input" name="telefono_casa_numero" value='{FONO_CASA_NUMERO}' size="9" maxlength="15" style="font-size:9pt;" onblur="txt2sabre_txt(this);">						
						</td>
					</tr>
					<tr>
						<td id='id_telefono_oficina_l0' style="text-align: left; font-size:9pt;">{_LABEL_TELEFONO_TRABAJO}</td>
						<td id='id_telefono_oficina_l1'>
							<input type="text" class="input" name="telefono_oficina_codigo_pais" size='1' maxlength="5" value='{FONO_OFICINA_PAIS}' style="font-size:9pt;" onblur="txt2sabre_txt(this);removeLeadingZeros(this);">						
						</td>
						<td id='id_telefono_oficina_l2' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_oficina_l3'>
							<input type="text" class="input" name="telefono_oficina_codigo_ciudad" size='1' maxlength="5" value='{FONO_OFICINA_CIUDAD}' style="font-size:9pt;" onblur="txt2sabre_txt(this);">						
						</td>
						<td id='id_telefono_oficina_l4' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_oficina_l5' colspan="2">
							<input type="text" class="input" name="telefono_oficina_numero" value='{FONO_OFICINA_NUMERO}' size='9' maxlength="15" style="font-size:9pt;" onblur="txt2sabre_txt(this);">						
						</td>
					</tr>
					<tr>
						<td id='id_telefono_celular_l0' style="text-align: left; font-size:9pt;">{_LABEL_TELEFONO_CELULAR}</td>
						<td id='id_telefono_celular_l1'>
							<input type="text" class="input" name="telefono_celular_codigo_pais" size='1' maxlength="5" value='{FONO_CELULAR_PAIS}' style="font-size:9pt;" onchange="bloquea_cod_cel_pe(this.value)" onblur="txt2sabre_txt(this);removeLeadingZeros(this);">						
						</td>
						<td id='id_telefono_celular_l2' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_celular_l3'>
							<input type='hidden' name="telefono_celular_codigo_ciudad" value='{FONO_CELULAR_CIUDAD}'> 
							<input type="text" class="input" name="telefono_celular_codigo_ciudad_aux" size='1' maxlength="5" value='{FONO_CELULAR_CIUDAD}' style="font-size:9pt;" onchange="document.paso4.telefono_celular_codigo_ciudad.value=this.value;" onblur="txt2sabre_txt(this);">						
						</td>
						<td id='id_telefono_celular_l4' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_celular_l5'>
							<input type="text" class="input" name="telefono_celular_numero" value='{FONO_CELULAR_NUMERO}' size='9' maxlength="15" style="font-size:9pt;" onblur="txt2sabre_txt(this);">						
						</td>
						<td style="font-size:9pt; width:180px;">
							{_LABEL_EJ_FULL}						
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
