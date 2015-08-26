<table class="table" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="sub-titulo" colspan="8" style="padding:0 0 0 8px;">{PAX_TYPE_TXT}</td>
  </tr>
{*AMIGOS_SELECT}
  <tr>
    <td class="sub-titulo" colspan="8" style="padding:0 0 0 8px; border-top:1px solid #DCE0EE;">{_LABEL_MIS_AMIGOS}&nbsp;{PAX_SELECT}</td>
  </tr>
{/AMIGOS_SELECT}
  <tr>
    <th rowspan="2">{_LABEL_TITULO}</th>
    <th rowspan="2">{_LABEL_NOMBRE}</th>
    <th rowspan="2" style="border-right:1px solid #DCE0EE;">{_LABEL_PRIMER_APELLIDO}</th>
    <th colspan="2" style="text-align: center;">{_LABEL_PASAJERO_FRECUENTE}</th>
    <th colspan="3" style="text-align: center; border-left:1px solid #DCE0EE;">{_LABEL_DOCUMENTOS_IDENTIDAD}</th>
  </tr>
  <tr>
    <th style="text-align: center;">{_LABEL_AEROLINEA}</th>
    <th style="text-align: center; border-left:1px solid #DCE0EE;">{_LABEL_NUMERO}</th>
    <th style="text-align:center; border-left:1px solid #DCE0EE;">{_LABEL_TIPO}</th>
    <th style="text-align:center; border-left:1px solid #DCE0EE;">{_LABEL_NUMERO}</th>
    <th style="text-align:center; border-left:1px solid #DCE0EE;">{_LABEL_PAIS_EMISION}</th>
  </tr>
  <tr>
    <td><select style="width: 47px;" class="combo-box" name="pax_{PAX_TYPE}_{NUM_PAX}_titulo" id="pax_{PAX_TYPE}_{NUM_PAX}_titulo">
        <option value="0" {SELECTED_TITLE_0}>{_LABEL_SENOR}</option>
        <option value="1" {SELECTED_TITLE_1}>{_LABEL_SENORA}</option>
        <option value="2" {SELECTED_TITLE_2}>{_LABEL_SENORITA}</option>
      </select>
    </td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_nombre"><input type="text" class="input" name="pax_{PAX_TYPE}_{NUM_PAX}_nombre" id="pax_{PAX_TYPE}_{NUM_PAX}_nombre" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}');" value='{NOMBRE_VALUE}' size="7" maxlength="30">
    </td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido"><input type="text" class="input" name="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" id="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}');" value='{APELLIDO_VALUE}' size="7" maxlength="30">
    </td>
    <td><select style="width: 120px;" class="combo-box" name="pax_{PAX_TYPE}_{NUM_PAX}_ff_airline" id="pax_{PAX_TYPE}_{NUM_PAX}_ff_airline">
        <option value=''>&nbsp;</option>
        
			{FF_AIRLINES}
		
      </select>
    </td>
    <td><input type="text" class="input" name="pax_{PAX_TYPE}_{NUM_PAX}_ff_number" id="pax_{PAX_TYPE}_{NUM_PAX}_ff_number" value='{FF_NUM_VALUE}' size="8" maxlength="30"></td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo"><select class="combo-box" name="pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo" onChange="check_foid_no_aplica(this.form, '{PAX_TYPE}', '{NUM_PAX}')" style="width: 120px;">
        
			{OPCION_FOID_NO_APLICA}
			
        <option value="PP" {SELECTED_PP}>{_LABEL_PASAPORTE}</option>
        <option value="NI" {SELECTED_NI}>{_LABEL_CEDULA_ID}</option>
      </select>
    </td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_numero"><input type="text" class="input" name="pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" value='{FOID_VALUE}' size="8" maxlength="30" {FOID_DISABLED} onBlur="cargar_pax_notificables(this.form, '{NUM_PAX}');">
    </td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_pais"><select style="width:100px" class="combo-box" name="pax_{PAX_TYPE}_{NUM_PAX}_foid_pais" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_pais">
        
			{PAISES}
		
      </select>
    </td>
  </tr>
  <tr>
    <td colspan="8">{ADD_INPUT}&nbsp;{_LABEL_AGREGAR_AMIGOS}&nbsp;{INFO_VIAJES_POR_ORIGEN}</td>
  </tr>
  {DATOS_TSA}
{EXTRA_INPUT_DATA}
</table>
<script type="text/javascript">
check_foid_no_aplica(document.forms['paso4'], '{PAX_TYPE}', '{NUM_PAX}');
</script>
