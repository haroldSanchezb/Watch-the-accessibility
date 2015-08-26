<div class="warning-info msg-op">
  <p><strong>{_LABEL_RECUERDA_NUEVO_NUMERO_PASAPORTE}</strong></p>
  <p>{_LABEL_RECUERDA_NUEVO_NUMERO_PASAPORTE_B}
      <a href="javascript:ajaxpage('/cgi-bin/passport_modal/passport_modal.cgi?accion=show_passport_modal&session_id={SESSION_ID}&n_tax=&t_pax=adt&n_pax=1&cc_data=0', 'content_layer_espera_proceso');showLightbox_espera_procesa_pago('layer_general');">{_LABEL_RECUERDA_NUEVO_NUMERO_PASAPORTE_2}</a> 
  </p>
</div>
<table class="table" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="sub-titulo" colspan="8" style="padding-left:8px; padding-bottom:2px; padding-top:2px;">{PAX_TYPE_TXT}&nbsp;{PAX_SELECT}</td>
  </tr>
  <tr>
    <th rowspan="2">{_LABEL_TITULO}</th>
    <th rowspan="2">{_LABEL_NOMBRE}*</th>
    <th rowspan="2" style="border-right:1px solid #DCE0EE;">{_LABEL_PRIMER_APELLIDO}*</th>
    <th colspan="3" style="text-align: center;">{_LABEL_DOCUMENTOS_IDENTIDAD}</th><th colspan="2" style="text-align: center; border-left:1px solid #DCE0EE;">{_LABEL_PASAJERO_FRECUENTE}</th>
  </tr>
  <tr>
    <th style="text-align:center;">{_LABEL_TIPO}</th>
    <th style="text-align:center; border-left:1px solid #DCE0EE;">{_LABEL_NUMERO}*</th>
    <th style="text-align:center; border-left:1px solid #DCE0EE;">{_LABEL_PAIS_EMISION}</th>
    <th style="text-align: center;border-left:1px solid #DCE0EE;">{_LABEL_AEROLINEA}</th>
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
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo"><select class=combo-box name="pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo" onChange="check_foid_no_aplica(this.form, '{PAX_TYPE}', '{NUM_PAX}')" style="width: 120px;">
        
			{OPCION_FOID_NO_APLICA}
			
        <option value="PP" {SELECTED_PP}>{_LABEL_PASAPORTE}</option>
        <option value="NI" {SELECTED_NI}>{_LABEL_CEDULA_ID}</option>
      </select>
    </td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_numero"><input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" value='{FOID_VALUE}' size="8" maxlength="30" {FOID_DISABLED} onBlur="cargar_pax_notificables(this.form, '{NUM_PAX}');limpiar_foid(this.form, '{PAX_TYPE}', '{NUM_PAX}');">
    </td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_pais"><select style="width:100px" class=combo-box name="pax_{PAX_TYPE}_{NUM_PAX}_foid_pais" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_pais">
        
			{PAISES}
		
      </select>
    </td>
    <td><select style="width: 120px;" class=combo-box name="pax_{PAX_TYPE}_{NUM_PAX}_ff_airline" id="pax_{PAX_TYPE}_{NUM_PAX}_ff_airline">
        <option value=''>&nbsp;</option>
        
			{FF_AIRLINES}
		
      </select>
    </td>
    <td><input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_ff_number" id="pax_{PAX_TYPE}_{NUM_PAX}_ff_number" value='{FF_NUM_VALUE}' size="8" maxlength="30"></td>
    
  </tr>
  <tr>
    <td colspan="8" style="padding:0"><p>{_MSG_RECONFIRME_CAMPOS_OBLIGATORIOS}<br /><br />{INFO_VIAJES_POR_ORIGEN}</p></td>
  </tr>
  {DATOS_TSA}
{EXTRA_INPUT_DATA}
</table>
<script type="text/javascript">
check_foid_no_aplica(document.forms['paso4'], '{PAX_TYPE}', '{NUM_PAX}');
</script>
