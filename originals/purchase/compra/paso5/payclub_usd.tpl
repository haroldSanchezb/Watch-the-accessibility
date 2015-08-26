<script src="/js/common.js" type='text/javascript'></script>
<script type='text/javascript'>
function valida_forma_pago(f)
	{
	var msg = '';
	change_bg_for_id("id_foid", "ok");

	if (f.tipo_foid.selectedIndex == 0 && f.no_mostrar_foid.selectedIndex == 'false')
		{
		change_bg_for_id("id_tipo_foid", "dato-erroneo");
		msg += "--> {_LABEL_TIPO_DOCUMENTO_ID_JS}\n";
		}
	if (f.foid_pais_emisor.selectedIndex == 0 || f.foid_pais_emisor.value == '' && f.no_mostrar_foid.selectedIndex == 'false')
		{
		change_bg_for_id("id_tipo_foid", "dato-erroneo");
		msg += "--> {_LABEL_PAIS_DOCUMENTO_ID_JS}\n";
		}
	if (f.rut_titular.value == "" && f.no_mostrar_foid.selectedIndex == 'false')
		{
		change_bg_for_id("id_tipo_foid", "dato-erroneo");
		msg += "--> {_LABEL_NUMERO_DOCUMENTO_ID_JS}\n";
		}

	if (msg != '')
		{
		return(msg);
		}
	else
		{
		return('');
		}
	}

</script>
<input type='hidden' name='no_mostrar_foid' value='{NO_MOSTRAR_FOID}'>
<table class=table width="100%" cellpadding="0" cellspacing="0">
	<tr>
		<col width="50%">
		<col width="50%">
		<th>
		{_LABEL_TIPO_TARJETA}
		</th>
		<th>
			{_LABEL_FOID}
		</th>
	</tr>
	<tr>
		<td id="id_tipo_tarjeta">
		{TIPO_TARJETA_NAME}
		<input type='hidden' name="tipo_tarjeta" id="tipo_tarjeta" value="{TIPO_TARJETA}">
		</td>
{*BLOQUE_FOID}
		<td id="id_foid">
				<select name="tipo_foid" class=combo-box>
					<option selected>
					{_LABEL_SELECCIONE}
					</option>
					<option value="pp" {SELECTED_PP}>
					{_LABEL_PASAPORTE}
					</option>
					<option value="ni" {SELECTED_NI}>
					{_LABEL_C_ID}
					</option>
					{*DOCUMENTO_DL}
					<option value="dl" {SELECTED_DL}>
					{_LABEL_DL}
					</option>
					{/DOCUMENTO_DL}
				</select>
				<input type=text class=input name="rut_titular" size='12' value='{RUT_TITULAR_NO_PONER}'>
				<select name="foid_pais_emisor" class=combo-box>
					<option value=''>
					{_LABEL_SELECCIONE_PAIS}
					</option>
					{FULL_COUNTRIES_LIST}
				</select>
		</td>	
{/BLOQUE_FOID}
{*BLOQUE_NO_FOID}
		<input type='hidden' name='rut_titular' value='{RUT_TITULAR}'>
		<input type='hidden' name='tipo_foid' value='NI'>
		<input type='hidden' name='foid_pais_emisor' value=''>				
{/BLOQUE_NO_FOID}
	</tr>
</table>
