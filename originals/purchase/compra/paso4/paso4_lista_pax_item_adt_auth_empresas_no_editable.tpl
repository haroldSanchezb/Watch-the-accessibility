<table class="table" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th rowspan="2" style="padding-left: 15px;">{_LABEL_TITULO}</th>
    <th rowspan="2" style="padding-left: 15px;">{_LABEL_NOMBRE}</th>
    <th rowspan="2" style="padding-left: 15px;">{_LABEL_PRIMER_APELLIDO}</th>
    <th rowspan="2" style="padding-left: 15px;">{_LABEL_PASAJERO_FRECUENTE}</th>
    <th colspan="3" style="text-align: center; border-bottom-style:none; border-left-color:#DCE0EE; border-left-style:solid; border-left-width:1px;">{_LABEL_DOCUMENTOS_IDENTIDAD}</th>
  </tr>
  <tr>
    <th style="text-align:center; border-left-color:#DCE0EE; border-left-style:solid; border-left-width:1px;">{_LABEL_TIPO}</th>
    <th style="text-align:center; border-left-color:#DCE0EE; border-left-style:solid; border-left-width:1px;">{_LABEL_NUMERO}</th>
    <th style="text-align:center; border-left-color:#DCE0EE; border-left-style:solid; border-left-width:1px;">{_LABEL_PAIS_EMISION}</th>
  </tr>
  <tr>
    <td>{TIPO}</td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_nombre">{NOMBRE_VALUE}</td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido">{APELLIDO_VALUE}</td>
		
    <td><select style="width: 125px;" class="combo-box" name="pax_{PAX_TYPE}_{NUM_PAX}_ff_airline" id="pax_{PAX_TYPE}_{NUM_PAX}_ff_airline">
			<option value=''>&nbsp;</option>
			{FF_AIRLINES}
		</select>
	   <input name="pax_{PAX_TYPE}_{NUM_PAX}_ff_number" id="pax_{PAX_TYPE}_{NUM_PAX}_ff_number" type="text" class="input" value='{FF_NUM_VALUE}' size="8" maxlength="30">
	 </td>
	 <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo">{FOID_TIPO}</td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_numero">{FOID_VALUE_PAS}</td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_pais">{PAIS}</td>
  </tr>
  <input type="hidden" name="pax_{PAX_TYPE}_{NUM_PAX}_nombre" value="{NOMBRE_VALUE}">
  <input type="hidden" name="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" value="{APELLIDO_VALUE}">
  <input type="hidden" name="pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo" value="{FOID_TIPO_VALUE}">
  <input type="hidden" name="pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" value="{FOID_VALUE_PAS}">
  <input type="hidden" name="pax_{PAX_TYPE}_{NUM_PAX}_foid_pais" value="{PAIS_VALUE}">
  <input type="hidden" name="pax_{PAX_TYPE}_{NUM_PAX}_titulo" value="{TIPO_VALUE}">
  {DATOS_TSA}
</table>
