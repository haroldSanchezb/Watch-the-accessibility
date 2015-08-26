<script src="/js/common.js" type='text/javascript'></script>
<script type='text/javascript'>
function valida_forma_pago(f)
	{
	var msg = '';
	change_bg_for_id("tipo_documento_titular", "ok");

	if (f.tipo_documento_titular.selectedIndex == 0)
		{
		change_bg_for_id("id_tipo_documento_titular", "dato-erroneo");
		msg += "--> {_LABEL_TIPO_DOCUMENTO_ID_JS}\n";
		}
	if (f.documento_titular.value == "")
		{
		change_bg_for_id("id_tipo_documento_titular", "dato-erroneo");
		msg += "--> {_LABEL_NUMERO_DOCUMENTO_ID_JS}\n";
		}
				
	if (check_documento_titular(f.documento_titular.value,f.tipo_documento_titular.value) != true)
		{
		change_bg_for_id("id_tipo_documento_titular", "dato-erroneo");
		msg += "--> {_LABEL_NUMERO_DOCUMENTO_ID_INVALIDO_JS}\n";
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
		
function check_documento_titular(theNumber, type)
	{
	if(theNumber.length > 12)
		return false;
	
	if(type == 1 && !(theNumber.length == 8 || theNumber.length == 7))
		{
		return false;
		}
		
	return(true);
	}
</script>

{DATA_LAYER_LOCAL_DEFINITION}

<table width="100%" class=table cellpadding="0" cellspacing="0">
	<col width="40%">
	<col width="20%">
	<col width="10%">
    <col width="20%">
	<tr> 
		<td class="dato-tabla" colspan="4">
			{_MSG_BANELCO_PAGO_HASTA} {FECHA_LIMITE_DE_PAGO} ({_HORA_DE} {CITY_PAGO}{_TIME_OF}).<br>
			{_HTML_RESERVA_RESPETADA_2}
			<br>
			<br>
			<span class="txt-arial-11-azul-bold">{_LABEL_IMPORTANTE}:</span>
			{_MSG_BANELCO_POSIBLE_ADELANTO}
		</td>
  </tr> 
	<!--<tr>
	  <td colspan="4">{_MSG_CONFIANZA_ANULACIONES}.</td>
	</tr> -->
	<tr>
		<td>
			{_LABEL_DOCUMENTO_TITULAR}.
		</td>
		<td id="id_tipo_documento_titular">
			<select name="tipo_documento_titular" class=combo-box>
				<option selected>
				{_LABEL_SELECCIONE}
				</option>
				<option value="0" {SELECTED_DNRP}>
				{_LABEL_DNRP}
				</option>
				<option value="1" {SELECTED_DNI}>
				{_LABEL_DNI}
				</option>
				<option value="2" {SELECTED_CI}>
				{_LABEL_CI}
				</option>
				<option value="3" {SELECTED_PP}>
				{_LABEL_PASAPORTE}
				</option>
				<option value="4" {SELECTED_LC}>
				{_LABEL_LC}
				</option>
				<option value="5" {SELECTED_LE}>
				{_LABEL_LE}
				</option>
			</select>
			
		</td>
		<td>
        <input type=text class=input name="documento_titular" size='12'> 			
			
		</td>
        <td>
        		
			Sin puntos ni guiones.
		</td>
	</tr>
	<tr>
	  <td colspan="4">{_MSG_INGRESE_MISMO_DOCUMENTO}</td>
	</tr>
</table>
<table width="95%" border='0' cellpadding="0" cellspacing="0">
  
</table>

