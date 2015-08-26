<script type="text/javascript">
function extra_datos(f)
	{
	if (document.getElementById('extra_datos_CREDIT_CARD'))
		{
		document.getElementById('extra_datos_CREDIT_CARD').style.display = "none";
		}
	if (document.getElementById('extra_datos_COBRANDING'))
		{	
		document.getElementById('extra_datos_COBRANDING').style.display = "none";
		}
	if (getRadioValue(f.forma_pago)=="CREDIT_CARD" && f.flag_cobranding.value=="off")
		{
		document.getElementById('extra_datos_CREDIT_CARD').style.display = "block";
		f.tipo_tarjeta.selectedIndex=0;
//		alert ("show cc " + f.flag_cobranding.value);
		}
	if (getRadioValue(f.forma_pago)=="CREDIT_CARD" && f.flag_cobranding.value=="on")
		{
		document.getElementById('extra_datos_COBRANDING').style.display = "block";
		f.tipo_tarjeta_COBRANDING.selectedIndex=0;
//	alert ("show cobrand " + f.flag_cobranding.value);
		}
	}
</script>

<table width="100%">
  <col width="50%">
  <col width="5%">
  <col width="45%">
	<tr>
		<td>
			<h4>{_LABEL_FORMA_PAGO_CAJERO}</h4>
			<ul class=list>
				<p>{_MSG_CONFIANZA_ANULACIONES}</p>


<script type="text/javascript">
function elije_tarjeta_cobranding(f)
	{
	f.tarjeta_pais.options[f.tarjeta_pais.options.length+1] = new Option ('{_PAIS_ISO_NOMBRE}','{_PAIS_ISO}');
	f.tarjeta_moneda.options[f.tarjeta_pais.options.length+1] = new Option ('{_NOMBRE_MONEDA_COBRANDING}','{_MONEDA_COBRANDING}');
	f.tarjeta_pais.value='{_PAIS_ISO}';
	f.tarjeta_moneda.value='{_MONEDA_COBRANDING}';
	f.tipo_tarjeta.value=f.tipo_tarjeta_COBRANDING.value;
	f.autorizador.value = "{_HASH_COBRANDING}";
	}
</script>

<li id='"opcion_COBRANDING"'>
<input type=radio name="forma_pago" id="id_CREDIT_CARD_COBRANDING" value="CREDIT_CARD" onChange="flag_cobranding.value='on';fp_flavour.value='SANTANDER';extra_datos(this.form)" onClick="flag_cobranding.value='on';extra_datos(this.form)">
<label for="id_CREDIT_CARD_COBRANDING">{_FRASE_TARJETA_COBRANDING}</label>
<input type=hidden name="flag_cobranding">
<input type=hidden name="fp_flavour">
<div id="extra_datos_COBRANDING" style="position:relative; display:none; background-color:#fff; border:0px;">
<br><hr><br>
<strong>Ingrese la informaci&oacute;n de la tarjeta:</strong>
<BR><BR>
<table>
  <tr>
	<td></td>
	<td>{_LABEL_MARCA_CC}&nbsp;&nbsp;&nbsp;</td>
	<td>
		<select id="tipo_tarjeta_COBRANDING" name="tipo_tarjeta_cobranding" onChange="elije_tarjeta_cobranding(this.form)">
                        <option value=""> {_LABEL_SELECCIONE_JS} </option>
			<option value="AX"> American Express </option>
			<option value="CA"> Mastercard </option>
			<option value="VI"> Visa </option>
      </select>
	</td>
  </tr>
</table>
<hr>
</div>
</li>




			
				{*PAGO}
				<li>
					<input type=radio name="forma_pago" id="id_{FORMA_PAGO}" value="{FORMA_PAGO}" onChange="flag_cobranding.value='off';extra_datos(this.form);" onClick="flag_cobranding.value='off';extra_datos(this.form);">
					<label for="id_{FORMA_PAGO}">
						{FORMA_PAGO_TXT} 
					</label>
					{EXTRA_INFO}
				</li>
				{/PAGO}
				{*PAGO_SIN_RADIO}
				<li>
					{EXTRA_INFO}
				</li>
				{/PAGO_SIN_RADIO}
			</ul>
		</td>
		<td></td>
		{*RESERVA}
		<td>
			<h4>{_LABEL_RESERVA}</h4>
			<table class=table width=100%>
				<tr><td>
					<input type=radio name="forma_pago" id="id_RESERVA" value="RESERVA">
					<label for="id_RESERVA">{_FORMA_PAGO_RESERVA}</label>
				<td></tr>
			</table>
		</td>
		{/RESERVA}
	</tr>
</table>

<input type="hidden" name="hiddenTag" id="hiddenTag">

<!-- muestra los datos extra de la forma de pago (en caso de reload)-->
<script type='text/javascript'>
if (document.getElementById('id_CREDIT_CARD'))
	{
	extra_datos(document.getElementById('hiddenTag').form);
	}
else if (document.getElementsByName('forma_pago'))
	{
	document.getElementById('"opcion_COBRANDING"').style.display = 'none';
	}
</script>

<br>
