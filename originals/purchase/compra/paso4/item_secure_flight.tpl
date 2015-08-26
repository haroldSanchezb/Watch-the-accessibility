  <tr>
    <td class="sub-titulo" colspan="8" style="padding-left:8px; padding-bottom:2px; padding-top:2px;">{_MSG_SECURE_FLIGHT}<span class="sub-titulo" style="padding-left:8px; padding-bottom:2px; padding-top:2px;">{PAX_TYPE_TXT}&nbsp;{PAX_SELECT}</span></td>
  </tr>
  <tr>
    <th colspan="3">{_LABEL_FECHA_NACIMIENTO}</th>
    <th>{_LABEL_SEXO}</th>
    <th colspan="4">{_LABEL_NUMERO_DESAGRAVIO}</th>
  </tr>
  <tr>
    <td id='id_fecha_nacimiento_{PAX_TYPE}_{NUM_PAX}' colspan="3">
{+COMBO_UNE_SELECCION(name_dia='pax_{PAX_TYPE}_{NUM_PAX}_tsa_fecha_nacimiento_dia', name_mes='pax_{PAX_TYPE}_{NUM_PAX}_tsa_fecha_nacimiento_mes', name_ano='pax_{PAX_TYPE}_{NUM_PAX}_tsa_fecha_nacimiento_ano')}
    </td>
    <td><select style="width: 80px;" class=combo-box name="pax_{PAX_TYPE}_{NUM_PAX}_tsa_genero" id="id_pax_{PAX_TYPE}_{NUM_PAX}_tsa_genero">
        <option value="" {SELECTED_TITLE_0}>{_LABEL_SEXO}</option>
        <option value="F" {SELECTED_TITLE_1}>{_SEXO_F}</option>
        <option value="M" {SELECTED_TITLE_1}>{_SEXO_M}</option>
      </select>
    </td>
    <td colspan="4"><input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_tsa_numero_desagravio" id="id_pax_{PAX_TYPE}_{NUM_PAX}_tsa_numero_desagravio"  value='' size="20" maxlength="11">
      &nbsp;&nbsp;<a title="{_TITLE_NUMERO_DESAGRAVIO}" href="javascript:showLightbox('ayuda');"><img src="/images/reservas/compra/help_icon2.gif" width="15" height="15" border="0" alt="{_TEXTO_LINK_AYUDA}"></a>&nbsp;&nbsp;<a title="{_TEXTO_LINK_AYUDA}" href="javascript:showLightbox('ayuda');">{_TEXTO_LINK_AYUDA}</a></td>
  </tr><p>&nbsp;</p>

