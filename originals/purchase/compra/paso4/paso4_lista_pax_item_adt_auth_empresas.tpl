<table class="table" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="sub-titulo" colspan="7" style="padding-left:8px; padding-bottom:2px; padding-top:2px;">{PAX_SELECT}</td>
  </tr>
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
    <td><select style="width: 47px;" class="combo-box" name="pax_{PAX_TYPE}_{NUM_PAX}_titulo" id="pax_{PAX_TYPE}_{NUM_PAX}_titulo">
        <option value="0" {SELECTED_TITLE_0}>{_LABEL_SENOR}</option>
        <option value="1" {SELECTED_TITLE_1}>{_LABEL_SENORA}</option>
        <option value="2" {SELECTED_TITLE_2}>{_LABEL_SENORITA}</option>
      </select>
    </td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_nombre"><input name="pax_{PAX_TYPE}_{NUM_PAX}_nombre" id="pax_{PAX_TYPE}_{NUM_PAX}_nombre" type="text" class="input" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}')" value='{NOMBRE_VALUE}' size="7" maxlength="30">
	</td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido"><input name="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" id="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" type="text" class="input" onBlur="txt2sabre_txt(this);cargar_pax_notificables(this.form, '{NUM_PAX}')" value='{APELLIDO_VALUE}' size="7" maxlength="30">	
	    </td>
		
    <td><select style="width: 125px;" class="combo-box" name="pax_{PAX_TYPE}_{NUM_PAX}_ff_airline" id="pax_{PAX_TYPE}_{NUM_PAX}_ff_airline">
			<option value=''>&nbsp;</option>
			{FF_AIRLINES}
		</select>
	   <input name="pax_{PAX_TYPE}_{NUM_PAX}_ff_number" id="pax_{PAX_TYPE}_{NUM_PAX}_ff_number" type="text" class="input" value='{FF_NUM_VALUE}' size="8" maxlength="30">
	 </td>
	 <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo"><select class="combo-box" name="pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo">
				<option value="PP" {SELECTED_PP}>{_LABEL_PASAPORTE}</option>
				<option value="NI" {SELECTED_NI}>{_LABEL_CEDULA_ID}</option>
		</select>
    </td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_numero"><input name="pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" type="text" class="input" value='{FOID_VALUE}' size="8" maxlength="30" onBlur="cargar_pax_notificables(this.form, '{NUM_PAX}');">
	</td>
    <td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_pais"><select style="width:120px" class="combo-box" name="pax_{PAX_TYPE}_{NUM_PAX}_foid_pais" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_pais">
			{PAISES}
		</select>
	</td>
  </tr>
{*VIAJES_ORIGEN_ARGENTINA}
	  <tr>
		<div id="followingTooltip" style="visibility: hidden;"></div>
		<th colspan=7> {_TITULO_INFO_TRIBUTARIA} <span onMouseOut="if (typeof(desactiva_ttip) != 'undefined') desactiva_ttip();" onMouseOver="if (typeof(activa_ttip) != 'undefined') activa_ttip('contenido_tributario', 'tooltip_flight_inf', 'followingTooltip');" style="font-weight:bold;text-decoration:underline;color:#0267C3">(?)</span></th>
	  </tr>
	  <tr>
		<td colspan=7>
		  <table  class="no-table" width="100%" border="0">
			<tr>
			  <td>
				<select name='pax_{PAX_TYPE}_{NUM_PAX}_documento_tributario_tipo'>
					<option value="CUIT">{_LABEL_CUIT}</option>
					<option value="CUIL">{_LABEL_CUIL}</option>
					<option value="N/A">{_LABEL_NO_CUIT}</option>
				</select>
				<input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_documento_tributario_numero" value='{DOCUMENTO_TRIBUTARIO_NUMERO}' size="15" maxlength="20">{_TEXTO_SIN_GUIONES}
			  </td>
			</tr>
			<div id='contenido_tributario' style="display: none;" style="display">
				<div class="top"></div>
				<div class="middle" style="text-align:left">{_MSG_DEV_IMPUESTO_DECLARACION_JURADA}</div>
			<div class="bottom"></div>
			  </table>
		</td>
	  </tr>
{/VIAJES_ORIGEN_ARGENTINA}
{VIAJES_ORIGEN_ARGENTINA_2}
  <tr>
    <td colspan="7">{ADD_INPUT}&nbsp;{_MSG_AGREGAR_BASE_DATOS_SUCURSAL}</td>
  </tr>
  
  {DATOS_TSA}
</table>
