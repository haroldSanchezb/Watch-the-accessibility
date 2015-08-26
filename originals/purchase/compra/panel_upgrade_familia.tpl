<script type="text/javascript">
	// Para realizar sellup
	function check_sellup()
		{
		if (!window.std_action)
			{
			window.std_action = document.forms.paso3.action;
			}
		
		var session_id = '{SESSION_ID}';

		var msg_continuar_std = '{_PASO3_PASO_SIGUIENTE}';
		var msg_continuar_upgrade = '{_FF_ACTUALIZAR_TARIFA}';

		var txt_boton_std = '{_LABEL_CONTINUAR}';
		var txt_boton_upgrade = '{_CAMBIA_TARIFAS}';

		if (($('familia_ida_upgrade') && $('familia_ida_upgrade').checked) && ($('familia_vuelta_upgrade') && $('familia_vuelta_upgrade').checked))
			{
			document.forms.paso3.clase_segmento1.value = '{UPSELL_IDA_CLASE}';
			document.forms.paso3.vuelo_segmento1.value = '{UPSELL_IDA_VUELO}';
			document.forms.paso3.clase_segmento2.value = '{UPSELL_VUELTA_CLASE}';
			document.forms.paso3.vuelo_segmento2.value = '{UPSELL_VUELTA_VUELO}';
			
			document.forms.paso3.action = 'paso3.cgi?session_id=' + session_id;
		
			if ($('msg_continuar'))
				{
				$('msg_continuar').innerHTML = msg_continuar_upgrade;
				}
			if  ($('boton_continuar'))
				{
				$('boton_continuar').className = 'boton-secundario';
				$('boton_continuar').value = txt_boton_upgrade;
				}
			//alert("Upgrade ambos");
			}
		else
			{
			if ($('familia_ida_upgrade') && $('familia_ida_upgrade').checked)
				{
				document.forms.paso3.clase_segmento1.value = '{UPSELL_IDA_CLASE}';
				document.forms.paso3.vuelo_segmento1.value = '{UPSELL_IDA_VUELO}';
				document.forms.paso3.clase_segmento2.value = '{ACTUAL_VUELTA_CLASE}';
				document.forms.paso3.vuelo_segmento2.value = '{ACTUAL_VUELTA_VUELO}';
				
				document.forms.paso3.action = 'paso3.cgi?session_id=' + session_id ;

				if ($('msg_continuar'))
					{
					$('msg_continuar').innerHTML = msg_continuar_upgrade;
					}
				if  ($('boton_continuar'))
					{
					$('boton_continuar').className = 'boton-secundario';
					$('boton_continuar').value = txt_boton_upgrade;
					}

				//alert("Upgrade ida");
				}
			else
				{
				if ($('familia_vuelta_upgrade') && $('familia_vuelta_upgrade').checked)
					{
					document.forms.paso3.clase_segmento1.value = '{ACTUAL_IDA_CLASE}';
					document.forms.paso3.vuelo_segmento1.value = '{ACTUAL_IDA_VUELO}';
					document.forms.paso3.clase_segmento2.value = '{UPSELL_VUELTA_CLASE}';
					document.forms.paso3.vuelo_segmento2.value = '{UPSELL_VUELTA_VUELO}';
					
					document.forms.paso3.action = 'paso3.cgi?session_id=' + session_id;

					if ($('msg_continuar'))
						{
						$('msg_continuar').innerHTML = msg_continuar_upgrade;
						}
					if  ($('boton_continuar'))
						{
						$('boton_continuar').className = 'boton-secundario';
						$('boton_continuar').value = txt_boton_upgrade;
						}

					//alert("Upgrade vuelta");
					}
				else
					{
					document.forms.paso3.action = window.std_action;

					if ($('msg_continuar'))
						{
						$('msg_continuar').innerHTML = msg_continuar_std;
						}
						
					if  ($('boton_continuar'))
						{
						$('boton_continuar').className = 'boton-destacado';
						$('boton_continuar').value = txt_boton_std;
						}

					//alert("No upgrade");
					}
				}
			}
		}
</script>

<!--<h4>{_FF_MAS_BENEF_TABLA}</h4>-->
<div style="float: left;">
	{LABEL_DESC_RESTRICCIONES}
</div>

<!-- 05sep11 upsell
<input type="hidden" name="clase_segmento1" value="">
<input type="hidden" name="vuelo_segmento1" value="">
<input type="hidden" name="clase_segmento2" value="">
<input type="hidden" name="vuelo_segmento2" value="">

<input type="hidden" name="currency_cotizacion" value="{CURRENCY_COTIZACION}">
<input type="hidden" name="rand_check" value="{+RAND}">

<table class="table" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td>
			{*IDA_VUELTA}
			<table id="panel_upgrade_familia" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
					<td style="width: 36%;" colspan="{COLSPAN_VIAJE_IDA}" class="titulo_segmento">
						{_LABEL_IDA_TABLA}
					</td>
					<td class="separador_vertical">&nbsp;</td>
					<td style="width: 36%;" colspan="{COLSPAN_VIAJE_VUELTA}" class="titulo_segmento">
						{_LABEL_REGRESO_TABLA}
					</td>
				</tr>
				<tr>
					<td style="padding: 0; line-height: 2px;">&nbsp;</td>
				</tr>
				<tr>
					<td class="titulo_familia titulo_nombre_item"></td>
					<td class="titulo_familia" style="width: 18%; background-color: {FF_BG_COLOR_IDA_ACTUAL_TITLE}; color: {FF_FG_COLOR_IDA_ACTUAL_TITLE}; cursor: {CURSOR_TITULO_IDA_ACTUAL};" onClick="$('familia_ida_actual').checked = true; check_sellup();">
						<b>{TITULO_TARIFA_IDA_ACTUAL}</b><br>
					</td>
					<td class="titulo_familia" style="width: 18%; background-color: {FF_BG_COLOR_IDA_UPGRADE_TITLE}; color: {FF_FG_COLOR_IDA_UPGRADE_TITLE}; display: {DISPLAY_UPGRADE_IDA}; cursor: pointer;" onClick="$('familia_ida_upgrade').checked = true; check_sellup();">
						<b>{TITULO_TARIFA_IDA_UPGRADE}</b><br>
						{_FF_POR_SOLO} {MONEDA_UPGRADE_IDA}{MONTO_UPGRADE_IDA} {_FF_POR_PERSONA}<br>
					</td>

					<td class="separador_vertical"></td>
					<td class="titulo_familia" style="width: 18%; background-color: {FF_BG_COLOR_VUELTA_ACTUAL_TITLE}; color: {FF_FG_COLOR_VUELTA_ACTUAL_TITLE}; cursor: {CURSOR_TITULO_VUELTA_ACTUAL};" onClick="$('familia_vuelta_actual').checked = true; check_sellup();">
						<b>{TITULO_TARIFA_VUELTA_ACTUAL}</b><br>
					</td>
					<td class="titulo_familia" style="width: 18%; background-color: {FF_BG_COLOR_VUELTA_UPGRADE_TITLE}; color: {FF_FG_COLOR_VUELTA_UPGRADE_TITLE}; display: {DISPLAY_UPGRADE_VUELTA}; cursor: pointer;" onClick="$('familia_vuelta_upgrade').checked = true; check_sellup();">
						<b>{TITULO_TARIFA_VUELTA_UPGRADE}</b><br>
						{_FF_POR_SOLO} {MONEDA_UPGRADE_VUELTA}{MONTO_UPGRADE_VUELTA} {_FF_POR_PERSONA}<br>
					</td>

				</tr>
				<tr>
					<td class="titulo_familia_radio titulo_nombre_item"></td>
					<td class="titulo_familia_radio" style="background-color: {FF_BG_COLOR_IDA_ACTUAL_TITLE}; color: {FF_FG_COLOR_IDA_ACTUAL_TITLE}; cursor: {CURSOR_TITULO_IDA_ACTUAL};" onClick="$('familia_ida_actual').checked = true; check_sellup();">
						<input type="radio" name="familia_ida" id="familia_ida_actual" value="" checked onClick="check_sellup();" style="display: {DISPLAY_RADIO_ACTUAL_IDA};">
					</td>
					<td class="titulo_familia_radio" style="background-color: {FF_BG_COLOR_IDA_UPGRADE_TITLE}; color: {FF_FG_COLOR_IDA_UPGRADE_TITLE}; display: {DISPLAY_UPGRADE_IDA}; cursor: pointer;" onClick="$('familia_ida_upgrade').checked = true; check_sellup();">
						<input type="radio" name="familia_ida" id="familia_ida_upgrade" value="upgrade" onClick="check_sellup();">
					</td>

					<td class="separador_vertical"></td>
					<td class="titulo_familia_radio" style="background-color: {FF_BG_COLOR_VUELTA_ACTUAL_TITLE}; color: {FF_FG_COLOR_VUELTA_ACTUAL_TITLE}; cursor: {CURSOR_TITULO_VUELTA_ACTUAL};" onClick="$('familia_vuelta_actual').checked = true; check_sellup();">
						<input type="radio" name="familia_vuelta" id="familia_vuelta_actual" value="" checked onClick="check_sellup();" style="display: {DISPLAY_RADIO_ACTUAL_VUELTA};">
					</td>
					<td class="titulo_familia_radio" style="background-color: {FF_BG_COLOR_VUELTA_UPGRADE_TITLE}; color: {FF_FG_COLOR_VUELTA_UPGRADE_TITLE}; display: {DISPLAY_UPGRADE_VUELTA}; cursor: pointer;" onClick="$('familia_vuelta_upgrade').checked = true; check_sellup();">
						<input type="radio" name="familia_vuelta" id="familia_vuelta_upgrade" value="upgrade" onClick="check_sellup();">
					</td>
				</tr>

				{*ITEM_IDA_VUELTA}
				<tr>
					<td class="nombre_item">{NOMBRE_ITEM}</td>
					<td class="valor_item" style="background-color: {FF_BG_COLOR_IDA_ACTUAL}; color: {FF_FG_COLOR_IDA_ACTUAL};">{VALOR_ACTUAL_IDA}</td>
					<td class="valor_item" style="background-color: {FF_BG_COLOR_IDA_UPGRADE}; color: {FF_FG_COLOR_IDA_UPGRADE}; display: {DISPLAY_UPGRADE_IDA};">{VALOR_UPGRADE_IDA}</td>
					<td class="separador_vertical"></td>
					<td class="valor_item" style="background-color: {FF_BG_COLOR_VUELTA_ACTUAL}; color: {FF_FG_COLOR_VUELTA_ACTUAL};">{VALOR_ACTUAL_VUELTA}</td>
					<td class="valor_item" style="background-color: {FF_BG_COLOR_VUELTA_UPGRADE}; color: {FF_FG_COLOR_VUELTA_UPGRADE}; display: {DISPLAY_UPGRADE_VUELTA};">{VALOR_UPGRADE_VUELTA}</td>
				</tr>
				{/ITEM_IDA_VUELTA}
			</table>
			{/IDA_VUELTA}


			{*SOLO_IDA}
			<table id="panel_upgrade_familia" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
					<td colspan="{COLSPAN_VIAJE_IDA}" class="titulo_segmento">
						{_LABEL_IDA}
					</td>
				</tr>
				<tr>
					<td style="padding: 0; line-height: 2px;">&nbsp;</td>
				</tr>
				<tr>
					<td class="titulo_familia titulo_nombre_item"></td>
					<td class="titulo_familia" style="width: 18%; background-color: {FF_BG_COLOR_IDA_ACTUAL_TITLE}; color: {FF_FG_COLOR_IDA_ACTUAL_TITLE}; cursor: {CURSOR_TITULO_IDA_ACTUAL};" onClick="$('familia_ida_actual').checked = true; check_sellup();">
						<b>{TITULO_TARIFA_IDA_ACTUAL}</b><br>
					</td>
					<td class="titulo_familia" style="width: 18%; background-color: {FF_BG_COLOR_IDA_UPGRADE_TITLE}; color: {FF_FG_COLOR_IDA_UPGRADE_TITLE}; display: {DISPLAY_UPGRADE_IDA}; cursor: pointer;" onClick="$('familia_ida_upgrade').checked = true; check_sellup();">
						<b>{TITULO_TARIFA_IDA_UPGRADE}</b><br>
						{_FF_POR_SOLO} {MONEDA_UPGRADE_IDA}{MONTO_UPGRADE_IDA} {_FF_POR_PERSONA}<br>
					</td>
				</tr>
				<tr>
					<td class="titulo_familia_radio titulo_nombre_item"></td>
					<td class="titulo_familia_radio" style="background-color: {FF_BG_COLOR_IDA_ACTUAL_TITLE}; color: {FF_FG_COLOR_IDA_ACTUAL_TITLE}; cursor: {CURSOR_TITULO_IDA_ACTUAL};" onClick="$('familia_ida_actual').checked = true; check_sellup();">
						<input type="radio" name="familia_ida" id="familia_ida_actual" value="" checked onClick="check_sellup();"  style="display: {DISPLAY_RADIO_ACTUAL_IDA};">   
					</td>
					<td class="titulo_familia_radio" style="background-color: {FF_BG_COLOR_IDA_UPGRADE_TITLE}; color: {FF_FG_COLOR_IDA_UPGRADE_TITLE}; display: {DISPLAY_UPGRADE_IDA}; cursor: pointer;" onClick="$('familia_ida_upgrade').checked = true; check_sellup();">
						<input type="radio" name="familia_ida" id="familia_ida_upgrade" value="upgrade" onClick="check_sellup();">
					</td>
				</tr>

				{*ITEM_SOLO_IDA}
				<tr>
					<td class="nombre_item">{NOMBRE_ITEM}</td>
					<td class="valor_item" style="background-color: {FF_BG_COLOR_IDA_ACTUAL}; color: {FF_FG_COLOR_IDA_ACTUAL};">{VALOR_ACTUAL_IDA}</td>
					<td class="valor_item" style="background-color: {FF_BG_COLOR_IDA_UPGRADE}; color: {FF_FG_COLOR_IDA_UPGRADE}; display: {DISPLAY_UPGRADE_IDA};">{VALOR_UPGRADE_IDA}</td>
				</tr>
				{/ITEM_SOLO_IDA}
			</table>
			{/SOLO_IDA}
		</td>
	</tr>
</table>
<p></p>
<table>
  <tr>
    <td colspan="5"> <p><img src="/images/common/ticket.gif" alt="lo permite" width="14" height="14"> {_TICKET_PERMITE}<br>
        <img src="/images/common/cruz.gif" alt="no lo permite" width="14" height="14"> {_TICKET_NO_PERMITE}</p>
      <p>
        <strong>&sup1; </strong>{_FF_CMP_MSG1}<br>
    <strong>&sup2; </strong> {_FF_CMP_MSG2}<br /></td>
  </tr></table>
{*MENSAJE_UPGRADE_EXITOSO}
	<h6>
		{MSG}
	</h6>
{/MENSAJE_UPGRADE_EXITOSO}
-->
