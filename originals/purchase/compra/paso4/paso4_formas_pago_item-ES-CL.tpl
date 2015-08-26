<script type="text/javascript">
function extra_datos(f)
	{
	if (document.getElementById('extra_datos_CREDIT_CARD'))
		{
		document.getElementById('extra_datos_CREDIT_CARD').style.display = "none";
		}
	if (document.getElementById('extra_datos_CREDIT_CARD_COBRANDING'))
		{	
		document.getElementById('extra_datos_CREDIT_CARD_COBRANDING').style.display = "none";
		}
	if (getRadioValue(f.forma_pago)=="CREDIT_CARD" && f.flag_cobranding.value=="off")
		{
		document.getElementById('extra_datos_CREDIT_CARD').style.display = "block";
		f.tipo_tarjeta.selectedIndex=0;
//		alert ("show cc " + f.flag_cobranding.value);
		}
	if (getRadioValue(f.forma_pago)=="CREDIT_CARD" && f.flag_cobranding.value=="on")
		{
		document.getElementById('extra_datos_CREDIT_CARD_COBRANDING').style.display = "block";
		f.tipo_tarjeta_COBRANDING.selectedIndex=0;
//	alert ("show cobrand " + f.flag_cobranding.value);
		}
	}

function disable_factura_on_reserva(f)
	{
	if (getRadioValue(f.forma_pago) == 'RESERVA' || getRadioValue(f.forma_pago_reserva))
		{
		if (document.getElementById('id_desea_factura'))
			{
			setRadioValue(f.desea_factura, '');
			document.getElementById('id_desea_factura').disabled = 1;
			}
		}
	else
		{
		if (document.getElementById('id_desea_factura'))
			{
			document.getElementById('id_desea_factura').disabled = 0;
			}
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
				

			
				{*PAGO}
				{CC_COBRANDING}

				<li>
					<input type=radio name="forma_pago" id="id_{FORMA_PAGO}" value="{FORMA_PAGO}" onChange="flag_cobranding.value='off';extra_datos(this.form); disable_factura_on_reserva(this.form);" onClick="flag_cobranding.value='off';extra_datos(this.form); disable_factura_on_reserva(this.form);">
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
					<input type=radio name="forma_pago" id="id_RESERVA" value="RESERVA" onClick="disable_factura_on_reserva(this.form);" onChange="disable_factura_on_reserva(this.form);">
					<label for="id_RESERVA">{_FORMA_PAGO_RESERVA}{MSG_ASISTENCIA}</label>
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
else
	{
	document.getElementById('"opcion_COBRANDING"').style.display = 'none';
	}

disable_factura_on_reserva(document.getElementById('hiddenTag').form);
var element = document.getElementById("id_" + '{SELECT_FORMA_PAGO}');
if (element != null)
	{
	element.checked = true;
	document.getElementById('extra_datos_'+'{SELECT_FORMA_PAGO}').style["display"] = "";
	}
</script>

<br>
