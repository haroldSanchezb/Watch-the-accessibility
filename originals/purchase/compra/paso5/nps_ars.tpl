<script src="/js/common.js" type='text/javascript'></script>
<script type='text/javascript'>
function valida_forma_pago(f)
	{
	var msg = '';
	change_bg_for_id("id_cuotas", "ok");
	change_bg_for_id("id_tipo_tarjeta", "ok");
	change_bg_for_id("id_foid", "ok");

	if (f.tipo_foid.selectedIndex == 0)
		{
		change_bg_for_id("id_tipo_foid", "dato-erroneo");
		msg += "--> {_LABEL_TIPO_DOCUMENTO_ID_JS}\n";
		}
	if (f.foid_pais_emisor.selectedIndex == 0 || f.foid_pais_emisor.value == '')
		{
		change_bg_for_id("id_tipo_foid", "dato-erroneo");
		msg += "--> {_LABEL_PAIS_DOCUMENTO_ID_JS}\n";
		}
	if (f.rut_titular.value == "")
		{
		change_bg_for_id("id_tipo_foid", "dato-erroneo");
		msg += "--> {_LABEL_NUMERO_DOCUMENTO_ID_JS}\n";
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

var valor_cuotas = new Array();
{*MARCAS}
valor_cuotas['{MARCA}'] = new Array();
{*CUOTAS}
valor_cuotas['{MARCA}']['{CUOTA}'] = new Array();
valor_cuotas['{MARCA}']['{CUOTA}']['valor'] = '{VALOR_CUOTA}';
valor_cuotas['{MARCA}']['{CUOTA}']['tasa'] = '{VALOR_TASA}';
{/CUOTAS}
{/MARCAS}

function fill_cuotas (f, marca)
	{
	f.cuotas.options.length = 0;
	for (var cuota in valor_cuotas[marca])
		{
		if (typeof(valor_cuotas[marca][cuota]) == 'function')
			{
			continue;
			}
		var valor = cuota;
		var texto = parseInt(cuota, 10) + " {_LABEL_CUOTAS_CON_INTERESES_JS}";
		if (valor == '01' && marca != 'TN')
			{
			texto = "{_LABEL_SIN_CUOTAS_JS}"
			}
		else if (valor_cuotas[marca][cuota]['tasa'] == '0')
			{
			texto = parseInt(cuota) + " {_LABEL_CUOTAS_SIN_INTERESES_JS}";
			}
		else if (valor == '11' && marca == 'TN')
			{
			texto = "Plan Z";
			}
		else if (valor == '01' && marca == 'TN')
			{
			texto = "Plan 1";
			}
		var optionOb = new Option (texto, valor);
		f.cuotas.options [f.cuotas.options.length] = optionOb;
		f.cuotas.id = "cuotas";
		}
	document.getElementById ('valor_cuota').innerHTML = valor_cuotas[marca][f.cuotas.value]['valor'] + " {NOMBRE_MONEDA}";
	}

function update_valor_cuotas (f, cuotas)
	{
	if (f.tipo_tarjeta.value != '' && cuotas != '')
		{
		if((cuotas == '11' || cuotas == '01') && f.tipo_tarjeta.value == 'TN')
			{
			document.getElementById ('valor_cuota').style.display = "none";
			}
		else
			{
			document.getElementById ('valor_cuota').style.display = "block";
			}
		document.getElementById ('valor_cuota').innerHTML = valor_cuotas[f.tipo_tarjeta.value][cuotas]['valor'] + " {NOMBRE_MONEDA}";
		}
	}

</script>
<input type='hidden' name='no_mostrar_foid' value='{NO_MOSTRAR_FOID}'>
<table>

    <tr>
      <td style="text-align:left; padding:7px; ">{_MSG_PASO5_TENER_PRESENTE}</td>
    </tr>

</table>

<table class=table width="100%" cellpadding="0" cellspacing="0">
	<tr>
		<col width="34%">
		<col width="33%">
		<col width="33%">
		<th>
		{_LABEL_TIPO_TARJETA}
		</th>
		<th>
			{_LABEL_NUM_CUOTAS}
		</th>
		<th>
			{_LABEL_VALOR_CUOTA}
		</th>
		<th>
			{_LABEL_FOID}
		</th>
	</tr>
	<tr>
		<td id="id_tipo_tarjeta">
		{TIPO_TARJETA_NAME}
		<input type='hidden' name="tipo_tarjeta" id="tipo_tarjeta" value="{TIPO_TARJETA}">
<!--
			<select name="tipo_tarjeta" class=combo-box onChange="fill_cuotas (this.form, this.value)">
				<option value = '' selected>
				{_LABEL_SELECCIONE}
				</option>
				<option value="VI">
				{_LABEL_VISA}
				</option>
				<option value="CA">
				{_LABEL_MASTERCARD}
				</option>
				<option value="DC">
				{_LABEL_DINERS}
				</option>
				<option value="AX">
				{_LABEL_AX}
				</option>
			</select>
-->
		</td>
		<td id="id_cuotas">
		{CONTENIDO_CUOTAS}
<!--		
			<select name="cuotas" class=combo-box onClick="update_valor_cuotas(this.form, this.value)">
				<option value=""> {_LABEL_SELECCIONE} </option>
			</select>
-->
		</td>
		<td>
		<span id="valor_cuota" style="display: block"></span>
		</td>	
{*BLOQUE_FOID}
		<td id="id_foid">
				<select name="tipo_foid" class=combo-box>
					<option selected>
					{_LABEL_SELECCIONE}
					</option>
					<option value="pp" {SELECTED_PP}>
					{_LABEL_PASAPORTE}
					</option>
					<option value="ni" {SELECTED_NI}>
					{_LABEL_C_ID}
					</option>
					{*DOCUMENTO_DL}
					<option value="dl" {SELECTED_DL}>
					{_LABEL_DL}
					</option>
					{/DOCUMENTO_DL}
				</select>
				<input type=text class=input name="rut_titular" size='12' value='{RUT_TITULAR_NO_PONER}'>
				<select name="foid_pais_emisor" class=combo-box>
					<option value=''>
					{_LABEL_SELECCIONE_PAIS}
					</option>
					{FULL_COUNTRIES_LIST}
				</select>
		</td>	
{/BLOQUE_FOID}
{*BLOQUE_NO_FOID}
    <input type='hidden' name='rut_titular' value='{RUT_TITULAR}'>
    <input type='hidden' name='tipo_foid' value='NI'>
    <input type='hidden' name='foid_pais_emisor' value=''>
{/BLOQUE_NO_FOID}
	</tr>
	<tr><td colspan="4">&nbsp;</td></tr>

<script type='text/javascript'>
if ("{TIPO_TARJETA}"=="VI")
document.write ('<tr><td colspan="3"><img src="/images/logos/verified_visa.jpg" width="80" height="40" alt="Verified by Visa"></td></tr>');
</SCRIPT>


</table>

<script type="text/javascript">
fill_cuotas (document.getElementById('tipo_tarjeta').form, "{TIPO_TARJETA}");
update_valor_cuotas(document.getElementById('tipo_tarjeta').form, document.getElementById('cuotas').value);
</script>
