<script type="text/javascript">
function extra_datos(f)
	{
	if (document.getElementById('extra_datos_CREDIT_CARD'))
		{
		document.getElementById('extra_datos_CREDIT_CARD').style.display = "none";
		}
	if (getRadioValue(f.forma_pago)=="CREDIT_CARD")
		{
		document.getElementById('extra_datos_CREDIT_CARD').style.display = "block";
		f.tipo_tarjeta.selectedIndex=0;
		}
	}
</script>

<table width="100%">
  <col width="50%">
  <col width="5%">
  <col width="45%">
	<tr>
		<td>
			<h4 style="font-size:1.2em;">{_LABEL_PASO4_TRAVEL_VOUCHER}</h4>
			<ul class=list style="font-size:9pt;">
				


<script type="text/javascript">
function elije_tarjeta_cobranding(f)
	{
	f.tarjeta_pais.options[f.tarjeta_pais.options.length+1] = new Option ('{_PAIS_ISO_NOMBRE}','{_PAIS_ISO}');
	f.tarjeta_moneda.options[f.tarjeta_pais.options.length+1] = new Option ('{_NOMBRE_MONEDA_COBRANDING}','{_MONEDA_COBRANDING}');
	f.tarjeta_pais.value='{_PAIS_ISO}';
	f.tarjeta_moneda.value='{_MONEDA_COBRANDING}';
	f.tipo_tarjeta.value='VI';
	f.autorizador.value = "{_HASH_COBRANDING}";
	}
</script>




			
				{*PAGO}
				<li>
					<input type=radio name="forma_pago" id="id_{FORMA_PAGO}" value="{FORMA_PAGO}" onChange="extra_datos(this.form);" extra_datos(this.form);" {CHECKED}>
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
			<h4 style="font-size:1.2em;">{_LABEL_RESERVA}</h4>
			<table class=table width=100%>
				<tr><td style="font-size:9pt;">
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
if (document.getElementById('id_CREDIT_CARD') && '{+PORTAL}' == 'empresas')
	{
	extra_datos(document.getElementById('hiddenTag').form);
	}

var forma_pago_length;
if (document.getElementsByName('forma_pago'))
	{
	forma_pago_length = document.getElementsByName('forma_pago').length;
	}
for (i=0; i < forma_pago_length; i++)
	{
	document.getElementsByName('forma_pago')[i].checked = false;
	}
var element = document.getElementById("id_" + '{SELECT_FORMA_PAGO}');
if (element != null)
	{
	element.checked = true;
	document.getElementById('extra_datos_'+'{SELECT_FORMA_PAGO}').style["display"] = "";
	}
</script>

<br>
