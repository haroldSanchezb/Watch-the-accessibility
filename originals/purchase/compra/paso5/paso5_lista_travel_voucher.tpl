<script type="text/javascript">

var suma_monto_seleccionado_tvs = {TOTAL_TRAVEL_VOUCHER_SELECCIONADOS_SIN_FORMATO};
//var travel_vouchers_seleccionados = 0;
function submit_travel_vouchers(f)
	{
	
	var travel_vouchers_seleccionados = document.getElementById("travel_vouchers_seleccionados").value;
	
	var cant_travel_vouchers = document.getElementById("cantidad_travel_vouchers").value;
	var todo_ok = true;
	var chequeado = false;
	var hay_un_no_vacio = false;
	for (var i = 0; i < cant_travel_vouchers; i++)
		{
		var element = document.getElementById("usar_este_travel_voucher" + i);
		var numero_tv = document.getElementById("numero_completo_travel_voucher" + i);
		if (!Empty(numero_tv.value))
			{
			hay_un_no_vacio = true;
			}
		
		if (!element.disabled && element.checked)
			{
			chequeado = true;
			if (Empty(numero_tv.value))
				{
				todo_ok = false;
				}
			}
		}
	
	if ((todo_ok && chequeado) || (!hay_un_no_vacio && !chequeado))
		{
		f.paso5b.value = 0;
		f.action = 'paso5.cgi?session_id={SESSION_ID}';
		apagar_flag_encuesta();
		f.submit();
		return;
		}

	if (!todo_ok)
		{
		alert("{_MSG_NO_HA_ESCRITO_NUMERO_TRAVEL_VOUCHER_JS}");
		}
	
	if (!chequeado)
		{
		alert("{_MSG_NO_HA_SELECCIONADO_UN_TRAVEL_VOUCHER_JS}");
		}
	return;
	}

function calcular_monto_disponible(monto_convertido, id)
	{
	var element = document.getElementById("usar_este_travel_voucher" + id);
	var travel_vouchers_seleccionados = document.getElementById("travel_vouchers_seleccionados");
	var cantidad_travel_vouchers_utilizables = document.getElementById("cantidad_travel_vouchers_utilizables");
	var suma_aux = suma_monto_seleccionado_tvs;
	
	if (element.checked)
		{
		suma_aux += parseFloat(monto_convertido);
		travel_vouchers_seleccionados.value++;
		}
	else if (!element.checked)
		{
		suma_aux -= parseFloat(monto_convertido);
		travel_vouchers_seleccionados.value--;
		}
		
	if (travel_vouchers_seleccionados.value > parseInt(cantidad_travel_vouchers_utilizables.innerHTML))
		{
		element.checked = false;
		travel_vouchers_seleccionados.value--;
		alert("{_NO_PUEDE_SELECCIONAR_MAS_DE_TVS_JS}: " + cantidad_travel_vouchers_utilizables.innerHTML);
		return (false);
		}
	
	suma_monto_seleccionado_tvs = suma_aux;
	
	if (suma_monto_seleccionado_tvs < 0)
		{
		suma_monto_seleccionado_tvs = 0;
		}

	document.getElementById("label_monto_total_seleccionado").innerHTML = currency_format(suma_monto_seleccionado_tvs, '{MONEDA_CONVERTIDA}');
	}


</script>














<br>
<h4>{_LABEL_TRAVEL_VOUCHERS}</h4>
<input type='hidden' name='cantidad_travel_vouchers' value='{CANTIDAD_TRAVEL_VOUCHERS}' id="cantidad_travel_vouchers">
<input type='hidden' name='travel_vouchers_seleccionados' value="{CANTIDAD_TRAVEL_VOUCHERS_SELECCIONADOS}" id="travel_vouchers_seleccionados">
	<table class="table" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td colspan="2">{_MSG_EXPLICATIVO_TRAVEL_VOUCHER}</td>
		</tr>
		<tr>
			<td style="text-align:left">
				<table class="table" cellspacing="0" cellpadding="0" width="100%">
					<tr>
						<td style="text-align:left">{_LABEL_TRAVEL_VOUCHERS_UTILIZABLES}: <strong><label id="cantidad_travel_vouchers_utilizables">{NRO_TRAVEL_VOUCHERS_UTILIZABLES}</label></strong></td>
					</tr>
					<tr>
						<td style="text-align:left">{_LABEL_MONTO_MAXIMO_PERMITIDO_PARA_PAGAR}({MONEDA_CONVERTIDA}): <strong>{MONTO_MAXIMO_PERMITIDO_PARA_PAGAR}</strong></td>
					</tr>
				</table>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td colspan="2">
				<table class="table" cellpadding='0' cellspacing='0' width="100%">
					<tr> 
						<th style="text-align:center">{_LABEL_LFD_TRAVEL_VOUCHER}</th>
						<th style="text-align:center">{_LABEL_FECHA_VENCIMIENTO}</th>
						<th style="text-align:center">{_LABEL_MONTO_ORIGINAL}</th>
						<th style="text-align:center">{_LABEL_MONTO_CONVERTIDO}</th>
						<th style="text-align:center">{_LABEL_NUMERO_COMPLETO_TRAVEL_VOUCHER}</th>
						<th style="text-align:center">{_LABEL_CHECK_TRAVEL_VOUCHER}</th>
						<th style="text-align:center">{_LABEL_TRAVEL_VOUCHER_APLICADO}</th>
					</tr>
					{*FILA_TRAVEL_VOUCHER}
					<tr class="{PAR_IMPAR}"> 
						<td class=left>{LFD_TRAVEL_VOUCHER}</td>
						<td class=left>{FECHA_VENCIMIENTO}</td>
						<td class=right>{MONTO_ORIGINAL} ({MONEDA_ORIGINAL})</td>
						<td class=right>{MONTO_CONVERTIDO} ({MONEDA_CONVERTIDA})</td>
						<td class=center>
							<input type='text' size='20' maxlength='45' name='numero_completo_travel_voucher{ID}' id='numero_completo_travel_voucher{ID}' value="{TRAVEL_VOUCHER_VALUE}">
						</td>
						<td class=center>
							<input type='checkbox' name='usar_este_travel_voucher{ID}' id="usar_este_travel_voucher{ID}" value='{ID}' onclick='calcular_monto_disponible({MONTO_CONVERTIDO_SIN_FORMATO}, {ID})' {TRAVEL_VOUCHER_CHECKEADO}>
						</td>
						<td style="text-align:center"><img src="/images/common/{TRAVEL_VOUCHER_IMG_ESTADO}" width="14" height="14" alt=""></td>
					</tr>
					{/FILA_TRAVEL_VOUCHER}
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2">{_MSG_NO_ENCONTRO_TV_PASO5}</td>
		</tr>
		<tr>
			<td colspan="2">
				<div id="contenedor_total_ezrez">
					<div class="total_tv">{_LABEL_TRAVEL_VOUCHERS_MONTO_TOTAL_SELECCIONADO}: <label id="label_monto_total_seleccionado">{TOTAL_TRAVEL_VOUCHER_SELECCIONADOS}</label> ({MONEDA_CONVERTIDA})</div>
				</div>
			</td>	
		</tr>
		<tr>
			<td class=right colspan="2">
				<input type='button' class="button-page blue" onclick='submit_travel_vouchers(this.form)' name='boton_validar' value='{_LABEL_UTILIZAR_TV}'>
			</td>
		</tr>
	</table>
<br>
