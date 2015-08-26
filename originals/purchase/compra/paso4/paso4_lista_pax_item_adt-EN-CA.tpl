<table class="table" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="sub-titulo" colspan="5" style="padding-left:8px; padding-bottom:2px; padding-top:2px;">{PAX_TYPE_TXT}&nbsp;{PAX_SELECT}</td>
  </tr>
  <tr>
    <th rowspan="2">{_LABEL_TITULO}</th>
    <th rowspan="2">{_LABEL_NOMBRE}</th>
    <th rowspan="2" style="border-right:1px solid #DCE0EE;">{_LABEL_PRIMER_APELLIDO}</th>
    <th colspan="2" style="text-align: center;">{_LABEL_PASAJERO_FRECUENTE}</th>
  </tr>
  <tr>
    <th style="text-align: center;">{_LABEL_AEROLINEA}</th>
    <th style="text-align: center; border-left:1px solid #DCE0EE;">{_LABEL_NUMERO}</th>
  </tr>
  <tr>
    <td><select style="width: 47px;" class=combo-box name="pax_{PAX_TYPE}_{NUM_PAX}_titulo" id="pax_{PAX_TYPE}_{NUM_PAX}_titulo">
        <option value="0" {SELECTED_TITLE_0}>{_LABEL_SENOR}</option>
        <option value="1" {SELECTED_TITLE_1}>{_LABEL_SENORA}</option>
        <option value="2" {SELECTED_TITLE_2}>{_LABEL_SENORITA}</option>
      </select>
    </td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_nombre"><input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_nombre" id="pax_{PAX_TYPE}_{NUM_PAX}_nombre" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}');" value='{NOMBRE_VALUE}' size="7" maxlength="30">
    </td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido"><input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" id="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}');" value='{APELLIDO_VALUE}' size="7" maxlength="30">
    </td>
    <td><select style="width: 120px;" class=combo-box name="pax_{PAX_TYPE}_{NUM_PAX}_ff_airline" id="pax_{PAX_TYPE}_{NUM_PAX}_ff_airline">
        <option value=''>&nbsp;</option>
        
			{FF_AIRLINES}
		
      </select>
    </td>
    <td><input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_ff_number" id="pax_{PAX_TYPE}_{NUM_PAX}_ff_number" value='{FF_NUM_VALUE}' size="8" maxlength="30"></td>
  </tr>
  <tr>
    <td colspan="5" style="padding:0">{INFO_VIAJES_POR_ORIGEN}</td>
  </tr>
  {DATOS_TSA}
{EXTRA_INPUT_DATA}
</table>
