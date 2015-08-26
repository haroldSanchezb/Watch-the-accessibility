<script type='text/javascript'>

function cotizar_cuota_lancard(f)
	{
	var w;
	var numero_tarjeta, rut, cuotas, gracia, monto, moneda;

	numero_tarjeta = f.lancard_numero.value;
	rut = f.lancard_rut.value;
	cuotas = f.lancard_cuotas.value;
	gracia = f.lancard_gracia.value;
	monto = f.monto.value;
	moneda = f.moneda.value;

	if (f.elements['cotizacion_lancard_en_misma_pagina'] && f.elements['cotizacion_lancard_en_misma_pagina'].value == 'N')
		{
		f.submit();
		}
	else
		{
		w = window.open('/cgi-bin/compra/cotizacion_lancard.cgi?lancard_numero=' + numero_tarjeta + '&lancard_rut=' + rut + '&lancard_cuotas=' + cuotas + '&lancard_gracia=' + gracia + '&monto=' + monto + '&moneda=' + moneda, '_blank', 'scrollbars=yes, resizable=yes, width=500, height=400');
		w.focus();
		}
	}

function valida_forma_pago(f)
	{
	var msg = '';

	change_bg_for_id("id_lancard_numero", "ok");
	change_bg_for_id("id_lancard_pin", "ok");
	change_bg_for_id("id_lancard_rut", "ok");

	if (f.lancard_numero.value == '')
		{
		change_bg_for_id("id_lancard_numero", "dato-erroneo");
		msg += "--> {_MSG_NO_TARJETA_LANCARD_JS}\n";
		}
	if (f.lancard_pin.value == '')
		{
		change_bg_for_id("id_lancard_pin", "dato-erroneo");
		msg += "--> {_MSG_PIN_TARJETA_LANCARD_JS}\n";
		}
	if (f.lancard_rut.value == '')
		{
		change_bg_for_id("id_lancard_rut", "dato-erroneo");
		msg += "--> {_MSG_RUT_TARJETA_LANCARD_JS}\n";
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
<input type='hidden' name='cotizacion_lancard_en_misma_pagina' value='{LANCARD_POPUP}'>
<table class=table cellpadding=0 cellspacing=0 width="100%">
	<!--<tr><td colspan="5">{_MSG_CONFIANZA_ANULACIONES}</td></tr>  -->
	<tr>
		<td rowspan=3><img src='/images/espanol/misc/lancard.jpg' height=97 width=150 alt='tarjeta lancard'></td>
		<td>{_LABEL_NO_TARJETA}</td>
		<td id='id_lancard_numero'>
			<input type=text class=input name='lancard_numero' size='16' value='{LANCARD_NUMERO}'>
		</td>
		<td>{_LABEL_PIN}</td>
		<td><input type=password class=input name='lancard_pin' size='5' maxlength='4'></td>
	</tr>
	<tr>
		<td>{_LABEL_RUT_USUARIO}</td>
		<td id='id_lancard_rut'>
			<input type=text class=input name='lancard_rut' size='16' value='{LANCARD_RUT}'>
		</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>{_LABEL_NO_CUOTAS}</td>
		<td id='id_lancard_cuotas'>
			
			<select name='lancard_cuotas' class=combo-box>
				<option value='0' {CUOTAS_0_SELECTED}>0</option>
			</select>
		</td>
		<td>{_LABEL_MESES_GRACIA}</td>
		<td id='id_lancard_gracia'>
			<select name='lancard_gracia' class=combo-box>
				<option value='0' {GRACIA_0_SELECTED}>0</option>
			</select>
		</td>
	</tr>
</table>
