<script type="text/javascript">
function valida_tbm(f)
	{
	var errores = '';
	var country_value = '';

	change_bg_for_id('id_tbm_address', 'ok');
	change_bg_for_id('id_tbm_city', 'ok');
	change_bg_for_id('id_tbm_state', 'ok');
	change_bg_for_id('id_tbm_zip', 'ok');
	change_bg_for_id('id_tbm_country', 'ok');

	if (Empty(f.elements["tbm_address"].value))
		{
		change_bg_for_id('id_tbm_address', 'dato-erroneo');
		errores += '--> {_MSG_ERROR_INGRESAR_DIRECCION_TICKET_JS}\n';
		}
	if (Empty(f.elements["tbm_city"].value))
		{
		change_bg_for_id('id_tbm_city', 'dato-erroneo');
		errores += '--> {_MSG_ERROR_INGRESAR_CIUDAD_TICKET_JS}\n';
		}
	if (Empty(f.elements["tbm_state"].value))
		{
		change_bg_for_id('id_tbm_state', 'dato-erroneo');
		errores += '--> {_MSG_ERROR_INGRESAR_ESTADO_TICKET_JS}\n';
		}
	if (f.elements["tbm_country"].options.selectedIndex < 1)
		{
		change_bg_for_id('id_tbm_country', 'dato-erroneo');
		errores += '--> {_MSG_ERROR_INGRESAR_PAIS_TICKET_JS}\n';
		}

	country_value = f.elements["tbm_country"].options[f.elements["tbm_country"].selectedIndex].value;
	if ((country_value == 'US' || country_value == 'DE' || country_value == 'CA' || country_value == 'ES') && Empty(f.elements["tbm_zip"].value))
		{
		change_bg_for_id('id_tbm_zip', 'dato-erroneo');
		errores += '--> {_MSG_ERROR_INGRESAR_POSTAL_TICKET_JS}\n';
		}
	return(errores);
	}
</script>

<h3 class=titulo>{_LABEL_INGRESE_DIRECCION_TICKET}</h3>
<table class=table width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td>{_LABEL_DIRECCION}</td>
		<td id='id_tbm_address'>
			<input type=text class=input name='tbm_address' value='{TBM_ADDRESS}' size='30'>
		</td>
	</tr>
	<tr>
		<td>{_LABEL_CIUDAD}</td>
		<td id='id_tbm_city'><input type=text class=input name='tbm_city' value='{TBM_CITY}' size='30'></td>
	</tr>
	<tr>
		<td>{_LABEL_ESTADO_PROVINCIA}</td>
		<td id='id_tbm_state'><input type=text class=input name='tbm_state' value='{TBM_STATE}' size='30'></td>
	</tr>
	<tr>
		<td>{_LABEL_CODIGO_POSTAL}</td>
		<td id='id_tbm_zip'><input type=text class=input name='tbm_zip' value='{TBM_ZIP}' size='30'> {_TXT_NECESARIO_PARA} {_PAIS_USA}, {_PAIS_CANADA}, {_PAIS_ESPANA} {_PALABRA_Y} {_PAIS_ALEMANIA}</td>
	</tr>
	<tr>
		<td>{_LABEL_PAIS}</td>
		<td>
			<select name='tbm_country' class=combo-box>
				<option value="" selected>{_LABEL_SELECCIONE}</option>
				<option value="CL" >{_PAIS_CHILE}(*)</option>
				<option value="US" >{_PAIS_USA} </option>
				<option value="CA" >{_PAIS_CANADA} </option>
				<option value="PR" >{_PAIS_PTO_RICO} </option>
				<option value="AT" >{_PAIS_AUSTRIA} </option>
				<option value="BE" >{_PAIS_BELGICA} </option>
				<option value="BG" >{_PAIS_BULGARIA} </option>
				<option value="CZ" >{_PAIS_REP_CHECA} </option>
				<option value="DE" >{_PAIS_ALEMANIA} </option>
				<option value="DK" >{_PAIS_DINAMARCA} </option>
				<option value="EE" >{_PAIS_ESTONIA} </option>
				<option value="ES" >{_PAIS_ESPANA} </option>
				<option value="FI" >{_PAIS_FINLANDIA} </option>
				<option value="FR" >{_PAIS_FRANCIA} </option>
				<option value="GR" >{_PAIS_GRECIA} </option>
				<option value="HU" >{_PAIS_HUNGRIA} </option>
				<option value="HR" >{_PAIS_CROACIA} </option>
				<option value="IE" >{_PAIS_IRLANDA} </option>
				<option value="IT" >{_PAIS_ITALIA} </option>
				<option value="LT" >{_PAIS_LITUANIA} </option>
				<option value="LU" >{_PAIS_LUXEMBURGO} </option>
				<option value="LV" >{_PAIS_LETONIA} </option>
				<option value="MC" >{_PAIS_MONACO} </option>
				<option value="NL" >{_PAIS_HOLANDA} </option>
				<option value="NO" >{_PAIS_NORUEGA} </option>
				<option value="PL" >{_PAIS_POLONIA} </option>
				<option value="PT" >{_PAIS_PORTUGAL} </option>
				<option value="RO" >{_PAIS_RUMANIA} </option>
				<option value="RU" >{_PAIS_FED_RUSA} </option>
				<option value="SK" >{_PAIS_REP_ESLOVACA} </option>
				<option value="SI" >{_PAIS_ESLOVENIA} </option>
				<option value="SE" >{_PAIS_SUECIA} </option>
				<option value="CH" >{_PAIS_SUIZA} </option>
				<option value="UA" >{_PAIS_UCRANIA} </option>
				<option value="UK" >{_PAIS_REINO_UNIDO} </option>
			</select>
		</td>
	</tr>
</table>
&nbsp;<br>
