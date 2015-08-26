<script type="text/javascript" src="/js/sorttable.js"></script>
<script type="text/javascript">

check_and_submit = function (f) 
	{
	if (f.year.value)
		{
		var year = f.year.value;
		var prev_content;

		// mensaje de cargando
		if (document.getElementById("estado_cuenta_loading"))
			{
			prev_content = document.getElementById("estado_cuenta").innerHTML;
			document.getElementById("estado_cuenta").innerHTML = document.getElementById("estado_cuenta_loading").innerHTML;
			}

		// cargo la componente
		Dynamic_Components.refresh_component(
			"estado_cuenta",
			"101",
			"year=" + year,
			null,
			function()
				{
				//alert('Error al cargar Estado de cuenta');
				if (prev_content)
					{
					document.getElementById("estado_cuenta").innerHTML = prev_content;
					}
				}
			);
		}
	}

</script>

<form name="form_cartola" id="form_cartola" action='#'>
<input type="hidden" name="base[mbr_username]" value="{USER}">
<input type='hidden' name'numero_socio'>

<div id="bloque_horizontal_lanpass_1">

	<table class="detalles">
		<tr>
			<td class="tipo">{_LABEL_NUMERO_SOCIO}</td>
			<td>: <strong>{MBR_NBR}</strong></td>
		</tr>
		<tr>
			<td>{_LABEL_NOMBRE_SOCIO}</td>
			<td>: {MBR_NAME}</td>
		</tr>
		<tr>
			<td>{_LABEL_FECHA_CONSULTA}</td>
			<td>: {QUERY_DATE}</td>
		</tr>
		<tr>
			<td>{_LABEL_PERIODO_CONSULTA}</td>
			<td><p class="flotar_izq">:</p>
			<select class="flotar_izq" name="year" size="1">
				{YEAR_OPTIONS}
			</select>
			<div class="boton_azul btn_especial">
			<img src="/images/common/borde_der_boton_azul.jpg" alt="" width="6" height="20">
				<a href="javascript:check_and_submit(document.form_cartola);" class="btn_azul">{_PALABRA_IR}</a>
				<img src="/images/common/borde_izq_boton_azul.jpg" alt="" width="6" height="20">
				</div>
			</td>
		</tr>
		<tr>
			<td>{_LABEL_TOTAL} {_LABEL_KMS_ACUMULADOS}</td>
			<td>: {TOTAL_KM}</td>
		</tr>
	</table>
	
	<table class="detalles">
		<tr>
			<td class="especial negrita" style=" text-align:left; padding-left: 10px;">{_LABEL_EXPIRACION_KMS}</td>
			<td class="especial">{EXPIRATION_DATE}</td>
			<td class="especial ultimo">{EXPIRATION_KM}</td>
		</tr>
	</table>
	</div>
	<div id="bloque_boton">
	<div class="boton_rojo">
		<img src="/images/common/borde_der_boton_rojo.jpg" alt="" width="6" height="20">
		<a href="/cgi-bin/lanpass/cartola.cgi" class="btn_rojo">{_FRASE_KMS_ACUMULADOS}</a>
		<img src="/images/common/borde_izq_boton_rojo.jpg" alt="" width="6" height="20">
		</div>
		</div>
	
	<div id="bloque_horizontal_lanpass_2">
	<table class="detalles">
		<tr>
			<td colspan="3" class="negrita">{_TOTAL_KMS}{YEAR}</td>
		</tr>
		<tr>
			<td class="especial">{_LABEL_VOLADOS}: {FLIGHT_KM}</td>
			<td class="especial">{_LABEL_BONIFICADOS}: {BONUS_KM}</td>
			<td class="especial">{_LABEL_ASOCIADOS}: {ASSOCIATED_KM}</td>
			<!--<td class="especial">{_LABEL_DEDUCIDOS}: {DEDUCED_KM}</td>-->
		</tr>
	</table>
	</div>
	<div id="bloque_boton">
	<div class="boton_rojo">
		<img src="/images/common/borde_der_boton_rojo.jpg" alt="" width="6" height="20">
		<a href="/cgi-bin/lanpass/upg_chart.cgi" class="btn_rojo">{_LABEL_TITULO_CARTOLA}</a>
		<img src="/images/common/borde_izq_boton_rojo.jpg" alt="" width="6" height="20">
	</div>
	</div>

</form>
