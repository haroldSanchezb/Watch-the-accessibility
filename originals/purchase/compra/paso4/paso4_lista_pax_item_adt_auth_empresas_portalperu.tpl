<table class="table tablePaxItem" width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
   <td class="sub-titulo" colspan="8" style="padding:0 0 0 8px;">{_LABEL_PASAJERO}&nbsp;{NUM_PAX}:&nbsp;{PAX_TYPE_TXT}</td>
 </tr>
  <tr>
    <th rowspan="2" style="padding-left: 15px;">{_LABEL_NOMBRE}*</th>
    <th rowspan="2" style="padding-left: 15px;">{_LABEL_APELLIDO_PATERNO}*</th>
    <th rowspan="2" style="padding-left: 15px;">{_LABEL_APELLIDO_MATERNO}</th>
    <th colspan="3" style="text-align: center; border-color: #DCE0EE; border-style: solid; border-width: 1px;">{_LABEL_DOCUMENTOS_IDENTIDAD}</th>
  </tr>
  <tr>
    <th style="text-align:center; border-color: #DCE0EE; border-style: solid; border-width: 1px;">{_LABEL_TIPO}</th>
    <th style="text-align:center; border-color: #DCE0EE; border-style: solid; border-width: 1px;">{_LABEL_NUMERO}*</th>
    <th style="text-align:center; border-color: #DCE0EE; border-style: solid; border-width: 1px;">{_LABEL_PAIS_EMISION}</th>
  </tr>
  <tr>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_nombre"><input name="pax_{PAX_TYPE}_{NUM_PAX}_nombre" id="pax_{PAX_TYPE}_{NUM_PAX}_nombre" type="text" class="input" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}')" value='{NOMBRE_VALUE}' size="7" maxlength="30">
	</td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido"><input name="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" id="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" type="text" class="input" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}')" value='{APELLIDO_VALUE}' size="7" maxlength="30">	
	    </td>
		
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_segundo_apellido"><input name="pax_{PAX_TYPE}_{NUM_PAX}_segundo_apellido" id="pax_{PAX_TYPE}_{NUM_PAX}_segundo_apellido" type="text" class="input" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}')" value='{APELLIDO_VALUE}' size="7" maxlength="30">	
	</td>
	 <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo" align="center"><select class="combo-box" name="pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo">
				<option value="PP" {SELECTED_PP}>{_LABEL_PASAPORTE}</option>
				<option value="NI" {SELECTED_NI}>{_LABEL_CEDULA_ID}</option>
		</select>
    </td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" align="center"><input name="pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" type="text" class="input" value='{FOID_VALUE}' size="8" maxlength="30" onBlur="cargar_pax_notificables(this.form, '{NUM_PAX}');  validarInfante(this, '{PAX_TYPE}');">
	</td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_pais" align="center"><select style="width:120px" class="combo-box" name="pax_{PAX_TYPE}_{NUM_PAX}_foid_pais" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_pais">
			{PAISES}
		</select>
	</td>
  </tr>
  <tr>
  	<td colspan="8" style="padding:0;"><p>{_LABEL_CAMPOS_OBLIGATORIOS}</p></td>
  </tr>
  {DATOS_TSA}
</table>

