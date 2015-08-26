<script src="/js/common.js" type='text/javascript'></script>
<style type="text/css">
.table label {
	display:block;
	margin-right:3px;
	margin-top:2px;
	margin-bottom:1px;
	}
</style>
<script type='text/javascript'>

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
	f.num_cuotas.options.length = 0;
	for (var cuota in valor_cuotas[marca])
		{
		if (typeof(valor_cuotas[marca][cuota]) == 'function')
			{
			continue;
			}
		var valor = cuota;
		var texto = parseInt(cuota, 10) + " {_LABEL_CUOTAS_CON_INTERESES_JS}";
		if (valor_cuotas[marca][cuota]['tasa'] == '0')
			{
			texto = parseInt(cuota) + " {_LABEL_CUOTAS_SIN_INTERESES_JS}";
			}
		var optionOb = new Option (texto, valor);
		f.num_cuotas.options [f.num_cuotas.options.length] = optionOb;
		f.num_cuotas.id = "num_cuotas";
		}
	document.getElementById ('valor_cuota').innerHTML = valor_cuotas[marca][f.num_cuotas.value]['valor'] + " {NOMBRE_MONEDA}";
	document.getElementById ('cuotas').value = f.num_cuotas.value;
	}

function update_valor_cuotas (f, cuotas)
	{
	if (f.tipo_tarjeta.value != '' && cuotas != '')
		{
		document.getElementById ('valor_cuota').innerHTML = valor_cuotas[f.tipo_tarjeta.value][cuotas]['valor'] + " {NOMBRE_MONEDA}";
		document.getElementById ('cuotas').value = cuotas;
		}
	}
function valida_forma_pago(f)
	{
	var msg = '';
	change_bg_for_id("id_tipo_foid", "ok");
	
	//INICIO CODIGO DE RE_VERIFICACION
	if (f.tipo_foid.selectedIndex == 0 && f.no_mostrar_foid.value == 'false')
		{
		change_bg_for_id("id_tipo_foid", "dato-erroneo");
		msg += "--> {_LABEL_TIPO_DOCUMENTO_ID_JS}\n";
		}
	if (f.foid_pais_emisor.selectedIndex == 0 || f.foid_pais_emisor.value == '' && f.no_mostrar_foid.value == 'false')
		{
		change_bg_for_id("id_tipo_foid", "dato-erroneo");
		msg += "--> {_LABEL_PAIS_DOCUMENTO_ID_JS}\n";
		}
	if (f.rut_titular.value == "" && f.no_mostrar_foid.value == 'false')
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



</script>
<input type='hidden' name='no_mostrar_foid' value='{NO_MOSTRAR_FOID}'>
<table class=table width="100%" cellpadding="0" cellspacing="0">
	<!--<tr>
		<td colspan="4">{_MSG_CONFIANZA_ANULACIONES}</td>
	</tr> -->
	<tr class="sub-titulo">
		<td id="id_tipo_tarjeta" colspan="4">
			{_LABEL_TIPO_TARJETA}
		<b>{TIPO_TARJETA_NAME}</b>
		<input type="hidden" name="tipo_tarjeta" id="tipo_tarjeta" value="{TIPO_TARJETA}">
		</td>
	</tr>
	<tr>
		<td id="id_cuotas" style=" width:25%">
		<label>
			{_LABEL_NUMERO_CUOTAS}
		</label>
			<input type="hidden" name="cuotas" id=cuotas>
			<!--<select name="n_cuotas_ingresado" class=combo-box>
			{OPTION_CUOTAS}
			</select>-->

		{CONTENIDO_CUOTAS}
		</td>
		<td id="id_valor_cuota" style=" width:75%">
		<label>
			{_LABEL_CUOTAS_DE}
		</label>
		<span id="valor_cuota" style="display: block"></span>
		</td>
	</tr>
	<tr>
		{*BLOQUE_FOID}
		<td id="id_tipo_foid" colspan="3">
		<label>
			{_LABEL_DOCUMENTO_ID}
		</label>
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
	<td>&nbsp;
	<input type='hidden' name='rut_titular' value='{RUT_TITULAR}'>	
	<input type='hidden' name='foid_pais_emisor' value=''>
	<input type='hidden' name='tipo_foid' value='NI'>			
	</td>
	{/BLOQUE_NO_FOID}
	</tr>
		<input type='hidden' name='tarjeta_pais' id='tarjeta_pais' value='{TARJETA_PAIS}'>
</table>
<h4>{_LABEL_IMPORTANTE}</h4>
<table cellpadding="0" cellspacing="0" style="width: 100%;" class="table">
<tr><td>{_MSG_BOLDCRON_PASO5_TENER_PRESENTE}</td></tr>
</table>

<script type="text/javascript">
fill_cuotas (document.getElementById('tipo_tarjeta').form, "{TIPO_TARJETA}");
update_valor_cuotas(document.getElementById('tipo_tarjeta').form, document.getElementById('num_cuotas').value);
</script>
