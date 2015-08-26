<script type="text/javascript">

function extra_datos_cobranding(f)
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
		}
	if (getRadioValue(f.forma_pago)=="CREDIT_CARD" && f.flag_cobranding.value=="on")
		{
		document.getElementById('extra_datos_CREDIT_CARD_COBRANDING').style.display = "block";
		}
	}


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

<li id='"opcion_COBRANDING"'>
<input type=radio name="forma_pago" id="id_CREDIT_CARD_COBRANDING" value="CREDIT_CARD" onChange="flag_cobranding.value='on';fp_flavour.value='SANTANDER';extra_datos_cobranding(this.form)" onClick="flag_cobranding.value='on';extra_datos_cobranding(this.form);elije_tarjeta_cobranding(this.form);">
<label for="id_CREDIT_CARD_COBRANDING">{_FRASE_TARJETA_COBRANDING}</label>
<input type=hidden name="flag_cobranding">
<input type=hidden name="fp_flavour">
<div id="extra_datos_CREDIT_CARD_COBRANDING" style="position:relative; display:none; background-color:#fff; border:0px;">
</div>
</li>


