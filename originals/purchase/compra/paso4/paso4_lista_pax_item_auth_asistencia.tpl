<table class="table" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="sub-titulo" colspan="12" style="padding-left:8px; padding-bottom:2px; padding-top:2px;">{PAX_TYPE_TXT}&nbsp;{PAX_SELECT}</td>
  </tr>
  <tr>
    <th rowspan="2" style="padding-left: 15px;">{_LABEL_TITULO}</th>
    <th rowspan="2" style="padding-left: 15px;">{_LABEL_NOMBRE}</th>
    {*BLOQUE_CHILE}
        <th rowspan="2" style="border-right:1px solid #DCE0EE;">{_LABEL_PRIMER_APELLIDO}</th>
    {/BLOQUE_CHILE}
    {*BLOQUE_PERU}
        <th rowspan="2">{_LABEL_PRIMER_APELLIDO}</th>
        <th rowspan="2" style="border-right:1px solid #DCE0EE;">{_LABEL_SEGUNDO_APELLIDO}</th>
    {/BLOQUE_PERU}
    <th colspan="3" rowspan="2" style="text-align: center;">{_LABEL_FECHA_NACIMIENTO}</th>
    
    <th colspan="3" style="text-align: center; border-bottom-style:none; border-left-color:#DCE0EE; border-left-style:solid; border-left-width:1px;">{_LABEL_DOCUMENTOS_IDENTIDAD}</th>
  </tr>
  <tr>
    <th style="text-align:center; border-left-color:#DCE0EE; border-left-style:solid; border-left-width:1px;">{_LABEL_TIPO}</th>
    <th style="text-align:center; border-left-color:#DCE0EE; border-left-style:solid; border-left-width:1px;">{_LABEL_NUMERO}</th>
    <th style="text-align:center; border-left-color:#DCE0EE; border-left-style:solid; border-left-width:1px;">{_LABEL_PAIS_EMISION}</th>
  </tr>
  <tr>
    <td><select style="width: 47px;" class="combo-box" name="pax_{PAX_TYPE}_{NUM_PAX}_titulo" id="pax_{PAX_TYPE}_{NUM_PAX}_titulo">
            <option value="0" {SELECTED_TITLE_0}>{_LABEL_SENOR}</option>
            <option value="1" {SELECTED_TITLE_1}>{_LABEL_SENORA}</option>
            <option value="2" {SELECTED_TITLE_2}>{_LABEL_SENORITA}</option>
        </select>
        
      </td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_nombre"><input type="text" class="input" name="pax_{PAX_TYPE}_{NUM_PAX}_nombre" id="pax_{PAX_TYPE}_{NUM_PAX}_nombre" onblur='txt2sabre_txt(this)' value='{NOMBRE_VALUE}' size="7" maxlength="30">   
    </td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido"><input type="text" class="input" name="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" id="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" onblur='txt2sabre_txt(this)' value='{APELLIDO_VALUE}' size="7" maxlength="30">  
    </td>
    {*BLOQUE_PERU_SEGUNDO_APELLIDO}
        <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_segundo_apellido"><input type="text" class="input" name="pax_{PAX_TYPE}_{NUM_PAX}_segundo_apellido" id="pax_{PAX_TYPE}_{NUM_PAX}_segundo_apellido" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}');" value='{APELLIDO_VALUE}' size="7" maxlength="30">
        </td>
        {/BLOQUE_PERU_SEGUNDO_APELLIDO}
    {+COMBO_FECHA(fecha_desde='1901-01-01', fecha_hasta='', fecha_default='', nombre_base='pax_{PAX_TYPE}_{NUM_PAX}_nacimiento', tipo='past', search='1', split_mesano='1', venta_asistencia='1')}

    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo"><select class="combo-box" name="pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo" onChange="check_foid_no_aplica(this.form, '{PAX_TYPE}', '{NUM_PAX}')">
            {OPCION_FOID_NO_APLICA}
            <option value="PP" {SELECTED_PP}>{_LABEL_PASAPORTE}</option>
            <option value="NI" {SELECTED_NI}>{_LABEL_CEDULA_ID}</option>
        </select>  
                
          </td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_numero"><input type="text" class="input" name="pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" value='{FOID_VALUE}' size="8" maxlength="30" {FOID_DISABLED}>  
     </td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_pais"><select style="width:120px" class="combo-box" name="pax_{PAX_TYPE}_{NUM_PAX}_foid_pais" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_pais">
            {PAISES}
        </select>    
        
        </td>
  </tr>
  <tr>
    <td colspan="6">{INFO_VIAJES_POR_ORIGEN}</td>
  </tr>
</table>
{*BLOQUE_EXTRA}
    <table class="table" width="100%" border="0" cellspacing="0" cellpadding="0">
      {DATOS_TSA}
      {EXTRA_INPUT_DATA}
    </table>
{/BLOQUE_EXTRA}

<script type="text/javascript">
check_foid_no_aplica(document.forms['paso4'], '{PAX_TYPE}', '{NUM_PAX}');
</script>
