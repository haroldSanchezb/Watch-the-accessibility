<table class="table" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="sub-titulo" colspan="5" style="padding-left:8px; padding-bottom:2px; padding-top:2px;">{PAX_TYPE_TXT}</td>
  </tr>
  <tr>
    <td class="sub-titulo" colspan="5" style="padding-left:8px; padding-bottom:3px; padding-top:3px; border-top-color:#DCE0EE; border-top-style:solid; border-top-width:1px;">{_LABEL_MIS_AMIGOS}&nbsp;{PAX_SELECT}</td>
  </tr>
  <tr>
    <th colspan="1" style="padding-left: 15px;">{_LABEL_TITULO}</th>
    <th colspan="2" style="padding-left: 15px;">{_LABEL_NOMBRE}</th>
    <th colspan="2" style="padding-left: 15px;">{_LABEL_PRIMER_APELLIDO}</th>
  </tr>
  <tr>
    <td colspan="1"><select style="width: 47px;" class="combo-box" name="pax_{PAX_TYPE}_{NUM_PAX}_titulo" id="pax_{PAX_TYPE}_{NUM_PAX}_titulo">
			<option value="0" {SELECTED_TITLE_0}>{_LABEL_SENOR}</option>
			<option value="1" {SELECTED_TITLE_1}>{_LABEL_SENORA}</option>
			<option value="2" {SELECTED_TITLE_2}>{_LABEL_SENORITA}</option>
		</select>		
		
    </td>
	  <td colspan="2" id="id_pax_{PAX_TYPE}_{NUM_PAX}_nombre"><input type="text" class="input" name="pax_{PAX_TYPE}_{NUM_PAX}_nombre" id="pax_{PAX_TYPE}_{NUM_PAX}_nombre" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}');" value='{NOMBRE_VALUE}' size="7" maxlength="30">
	  
    </td>
    <td colspan="2" id="id_pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido"><input type="text" class="input" name="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" id="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}');" value='{APELLIDO_VALUE}' size="7" maxlength="30">
    </td>
  </tr>
  <tr>
    <td colspan="5">{ADD_INPUT}&nbsp;{_LABEL_AGREGAR_AMIGOS}<br/><br/>{INFO_VIAJES_POR_ORIGEN}</td>
  </tr>
 	{DATOS_TSA}
{EXTRA_INPUT_DATA}
</table>

