<tr>
	<th colspan="3">{_LABEL_FECHA_NACIMIENTO}</th>
	<th>{_LABEL_SEXO}</th>
	<th>{_LABEL_NUMERO_DESAGRAVIO}</th>
</tr>
<tr>
<td colspan="3" id='id_fecha_nacimiento_{PAX_TYPE}_{NUM_PAX}'>
{+COMBO_UNE_SELECCION(name_dia='pax_{PAX_TYPE}_{NUM_PAX}_tsa_fecha_nacimiento_dia', name_mes='pax_{PAX_TYPE}_{NUM_PAX}_tsa_fecha_nacimiento_mes', name_ano='pax_{PAX_TYPE}_{NUM_PAX}_tsa_fecha_nacimiento_ano',disabled='{DISABLED}')}
 </td>
<td>
	<select style="width: 80px;" class=combo-box name="pax_{PAX_TYPE}_{NUM_PAX}_tsa_genero" id="id_pax_{PAX_TYPE}_{NUM_PAX}_tsa_genero">
		<option value="" {SELECTED_TITLE_0}>{_LABEL_SEXO}</option>
		<option value="F" {SELECTED_TITLE_1}>{_SEXO_F}</option>
		<option value="M" {SELECTED_TITLE_2}>{_SEXO_M}</option>
	</select>
</td>
<td>
<input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_tsa_numero_desagravio" id="id_pax_{PAX_TYPE}_{NUM_PAX}_tsa_numero_desagravio" onBlur="" value='{VALUE_NUMERO_DESAGRAVIO}' size="20" maxlength="11" {DISABLED}>
	&nbsp;&nbsp;<a title="{_TITLE_NUMERO_DESAGRAVIO}" href="javascript:showLightbox('ayuda');"><img src="/images/reservas/compra/help_icon2.gif" width="15" height="15" border="0" alt="{_TEXTO_LINK_AYUDA}"></a>&nbsp;&nbsp;<a href="javascript:showLightbox('ayuda');">{_TEXTO_LINK_AYUDA}</a></td>
</tr>