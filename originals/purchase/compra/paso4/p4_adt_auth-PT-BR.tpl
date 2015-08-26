<tr>
	<td class=sub-titulo colspan=4>{PAX_TYPE_TXT}</td>
	<td class=sub-titulo colspan=1>{_LABEL_MIS_AMIGOS}&nbsp;{PAX_SELECT}</td>
</tr>
<tr>
	<td>
    {_LABEL_TITULO}<br>
		<select class=combo-box name="pax_{PAX_TYPE}_{NUM_PAX}_titulo" id="pax_{PAX_TYPE}_{NUM_PAX}_titulo">
			<option value="0" {SELECTED_TITLE_0}>{_LABEL_SENOR}</option>
			<option value="1" {SELECTED_TITLE_1}>{_LABEL_SENORA}</option>
			<option value="2" {SELECTED_TITLE_2}>{_LABEL_SENORITA}</option>
		</select>
	</td>
	<td id="id_pax_{PAX_TYPE}_{NUM_PAX}_nombre">
    {_LABEL_NOMBRE}<br>
		<input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_nombre" id="pax_{PAX_TYPE}_{NUM_PAX}_nombre" onBlur='txt2sabre_txt(this)' value='{NOMBRE_VALUE}' size="7" maxlength="30">
	</td>
	<td id="id_pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido">
    {_LABEL_APELLIDO}<br>
		<input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" id="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" onBlur='txt2sabre_txt(this)' value='{APELLIDO_VALUE}' size="7" maxlength="30">
	</td>
	<td id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_numero">
    {_LABEL_DOCUMENTOS_IDENTIDAD}<br>
		<select class=combo-box name="pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo">
			<option value="PP" {SELECTED_PP}>{_LABEL_PASAPORTE}</option>
			<option value="NI" {SELECTED_NI}>{_LABEL_CEDULA_ID}</option>
		</select> 
		<input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" value='{FOID_VALUE}' size="8" maxlength="30"> 
	</td>
	<td>
    {_LABEL_PASAJERO_FRECUENTE}<br>
		<select class=combo-box name="pax_{PAX_TYPE}_{NUM_PAX}_ff_airline" id="pax_{PAX_TYPE}_{NUM_PAX}_ff_airline">
			<option value=''>&nbsp;</option>
			{FF_AIRLINES}
		</select> 
		<input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_ff_number" id="pax_{PAX_TYPE}_{NUM_PAX}_ff_number" value='{FF_NUM_VALUE}' size="8" maxlength="30">
	</td>
</tr>
<tr>
        <td colspan='2'>
        {INFO_VIAJES_POR_ORIGEN}
        </td>
        <td colspan='2'>&nbsp;</td>
        <td>{ADD_INPUT}&nbsp;{_LABEL_AGREGAR_AMIGOS}</td>
</tr>
{DATOS_TSA}
