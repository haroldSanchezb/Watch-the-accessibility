{*VIAJES_ORIGEN_PERU}
				<table width="100%" cellpadding="0" cellspacing="0" >
				  <tr>
					<th >{_LABEL_INFORMACION_TRIBUTARIA_PERU}</th>
				  </tr>
				  <tr>
					<td>
					  <table  class="no-table" width="100%" border="0">
						<tr>
						  <td id="{PAX_TYPE}PaxNo.{NUM_PAX}RUCCell">
							<select name='pax_{PAX_TYPE}_{NUM_PAX}_documento_tributario_tipo'>
								<option value='RUC'>RUC</option>
								<option value='CE'>Carnet de extranjer&iacute;a</option>
								<option value='CM'>Carnet de fuerzas militares</option>
								<option value='CP'>Carnet de fuerzas policiales</option>
							</select>
                			<input type=text class=input id="{PAX_TYPE}PaxNo.{NUM_PAX}RUC" name="pax_{PAX_TYPE}_{NUM_PAX}_documento_tributario_numero" value='{DOCUMENTO_TRIBUTARIO_NUMERO}' size="15" maxlength="20" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}');">
						  </td>
						{*BLOQUE_RAZON_SOCIAL_QUIOSCO}
						<td><label>
                            {_TXT_RAZON_SOCIAL}
							<input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_documento_tributario_nombre" value='{DOCUMENTO_TRIBUTARIO_NOMBRE}' size="30" maxlength="40" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}');">
						</label></td>
						{/BLOQUE_RAZON_SOCIAL_QUIOSCO}
						</tr>
					  </table>
					</td>
				  </tr>
				</table>
{/VIAJES_ORIGEN_PERU}

{*VIAJES_ORIGEN_ECUADOR}
				<input type=hidden name="pax_{PAX_TYPE}_{NUM_PAX}_documento_tributario_empresa_tipo" value="1">
				<table width="100%" cellpadding="0" cellspacing="0" >
				  <tr>
					<th >{_LABEL_PASO4_INFO_TRIBUTARIA}</th>
				  </tr>
				  <tr>
					<td>
					  <table  class="no-table" width="100%" border="0">
						<tr>
						  <td style="text-align: left; font-size:9pt; padding: 8px 4px 4px 8px;">{_TITULO_RUC_EMPRESA}</td>
						  <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_documento_tributario_empresa_numero" style="padding: 8px 4px 4px 8px;"><label>
							<input class="input" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}');" name="pax_{PAX_TYPE}_{NUM_PAX}_documento_tributario_empresa_numero" value='{DOCUMENTO_TRIBUTARIO_NUMERO}' type="text" id="pax_{PAX_TYPE}_{NUM_PAX}_documento_tributario_empresa_numero" size="13" maxlength="13" />
						  </label></td>
						  <td style="text-align: left; font-size:9pt; padding: 8px 4px 4px 8px;">{_LABEL_RAZON_SOCIAL}</td>
						  <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_documento_tributario_empresa_razon_social"  style="padding: 8px 4px 4px 8px;"><label>
							<input name="pax_{PAX_TYPE}_{NUM_PAX}_documento_tributario_empresa_razon_social" value='{DOCUMENTO_TRIBUTARIO_RAZON_SOCIAL}' type="text" class="input" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}');" id="pax_{PAX_TYPE}_{NUM_PAX}_documento_tributario_empresa_razon_social" size="40" maxlength="100" />
						  </label></td>
						  <td>&nbsp;</td>
						</tr>
					  </table>
					</td>
				  </tr>
				</table>
{/VIAJES_ORIGEN_ECUADOR}

{*VIAJES_OTROS_ORIGENES}&nbsp;{/VIAJES_OTROS_ORIGENES}



{*VIAJES_ORIGEN_ARGENTINA}
				<table width="100%" cellpadding="0" cellspacing="0" >
				  <tr>
					<div id="followingTooltip" style="visibility: hidden;"></div>
					<th> {_TITULO_INFO_TRIBUTARIA} <span onMouseOut="if (typeof(desactiva_ttip) != 'undefined') desactiva_ttip();" onMouseOver="if (typeof(activa_ttip) != 'undefined') activa_ttip('contenido_tributario', 'tooltip_flight_inf', 'followingTooltip');" style="font-weight:bold;text-decoration:underline;color:#0267C3">(?)</span></th>
				  </tr>
				  <tr>
					<td>
					  <table  class="no-table" width="100%" border="0">
						<tr>
						  <td>
							<select name='pax_{PAX_TYPE}_{NUM_PAX}_documento_tributario_tipo'>
								<option value="CUIT">{_LABEL_CUIT}</option>
								<option value="CUIL">{_LABEL_CUIL}</option>
								<option value="N/A">{_LABEL_NO_CUIT}</option>
							</select>
							<input type=text class=input onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}');" name="pax_{PAX_TYPE}_{NUM_PAX}_documento_tributario_numero" value='{DOCUMENTO_TRIBUTARIO_NUMERO}' size="15" maxlength="20">{_TEXTO_SIN_GUIONES}	
						  </td>
						</tr>
					<div id='contenido_tributario' style="display: none;" style="display">
						<div class="top"></div>
						<div class="middle" style="text-align:left">{_MSG_DEV_IMPUESTO_DECLARACION_JURADA}</div>
					<div class="bottom"></div></div>
					  </table>
					</td>
				  </tr>
				</table>
{/VIAJES_ORIGEN_ARGENTINA}

