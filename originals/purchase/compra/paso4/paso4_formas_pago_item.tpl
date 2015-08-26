<script type="text/javascript">

function extra_datos(f)
        {
	$('extra_datos_CREDIT_CARD').hide();
	if (getRadioValue(f.forma_pago)=="CREDIT_CARD")
		$('extra_datos_CREDIT_CARD').show();
        }

</script>

<table width="100%">
  <col width="50%">
  <col width="5%">
  <col width="45%">
	<tr>
		<td>
			<h4>{_LABEL_PASO4_TRAVEL_VOUCHER}</h4>
			<ul class=list>
				

				{*PAGO}
				<li>
					<input type=radio name="forma_pago" id="id_{FORMA_PAGO}" value="{FORMA_PAGO}" {CHECKED} onChange="extra_datos(this.form);" onClick="extra_datos(this.form);">
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

<!-- muestra los datos extra de la forma de pago (en caso de reload)-->
<script type='text/javascript'>extra_datos(document.getElementById('tipo_tarjeta').form);</script>

		</td>
		<td></td>
		{*RESERVA}
		<td>
			<h4>{_LABEL_RESERVA}</h4>
			<table class=table width=100%>
				<tr><td>
					<input type=radio name="forma_pago" id="id_RESERVA" value=RESERVA>
					<label for="id_RESERVA">{_FORMA_PAGO_RESERVA}</label>
				<td></tr>
			</table>
		</td>
		{/RESERVA}
	</tr>
</table>
<br>
<script type="text/javascript">
var element = document.getElementById("id_" + '{SELECT_FORMA_PAGO}');
if (element != null)
	{
	element.checked = true;
	document.getElementById('extra_datos_'+'{SELECT_FORMA_PAGO}').style["display"] = "";
	}
</script>

