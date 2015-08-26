<tr> 
	<td class='sub-titulo' colspan='6'> {PAX_TYPE_TXT} </td>
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
		<input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_nombre" id="pax_{PAX_TYPE}_{NUM_PAX}_nombre" onblur='txt2sabre_txt(this)' value='{NOMBRE_VALUE}' size="15" maxlength="30"> 
	</td>
	<td id="id_pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido">
		{_LABEL_APELLIDO}<br>
		<input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" id="pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido" onblur='txt2sabre_txt(this)' value='{APELLIDO_VALUE}' size="15" maxlength="30"> 
	</td>
	<td colspan='3' id="id_pax_{PAX_TYPE}_{NUM_PAX}_foid_numero">
		{_LABEL_DOCUMENTOS_IDENTIDAD}<br>
		<select class=combo-box name="pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_tipo">
			<option value="PP" {SELECTED_PP}>{_LABEL_PASAPORTE}</option>
			<option value="NI" {SELECTED_NI}>{_LABEL_DOCUMENTO_ID}</option>
		</select> 
		<input type=text class=input name="pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" id="pax_{PAX_TYPE}_{NUM_PAX}_foid_numero" value='{FOID_VALUE}' size="15" maxlength="30"> 
	</td>
</tr>
<tr>
 <!--       <td colspan='2'>&nbsp;</td> -->
	<td colspan='3'>
        {INFO_VIAJES_POR_ORIGEN}
	</td>
	<td colspan='2'>&nbsp;</td>
	<td>{ADD_INPUT}&nbsp;{_LABEL_AGREGAR_AMIGOS}</td>
</tr>

