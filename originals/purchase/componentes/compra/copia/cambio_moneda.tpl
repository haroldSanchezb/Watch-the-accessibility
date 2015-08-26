<h4>{_LABEL_VER_OTRA_MONEDA}</h4>
<table class="table" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td>
			<select id="otra_moneda" onchange='actualizar_moneda(this.value);'>
				<option value=''>{_LABEL_SELECCIONE}</option>
				<option value='{VALOR_USD}'>{_LABEL_MONEDA_USD} (USD)</option>
				<option value='{VALOR_EUR}'>{_LABEL_MONEDA_EUR} (EUR)</option>
				<option value='{VALOR_PEN}'>{_LABEL_MONEDA_PEN} (PEN)</option>
				<option value='{VALOR_ARS}'>{_LABEL_MONEDA_ARS} (ARS)</option>
				<option value='{VALOR_CLP}'>{_LABEL_MONEDA_CLP} (CLP)</option>
				<option value='{VALOR_BRL}'>{_LABEL_MONEDA_BRL} (BRL)</option>
				<option value='{VALOR_GBP}'>{_LABEL_MONEDA_GBP} (GBP)</option>
				<option value='{VALOR_CAD}'>{_LABEL_MONEDA_CAD} (CAD)</option>
				<option value='{VALOR_COP}'>{_LABEL_MONEDA_COL} (COP)</option>
			</select>
		</td>
	</tr>
	<tr>
		<td><div id='actualiza_moneda'></div>
		</td>
	</tr>
</table>
