<script src="/js/common.js" type="text/javascript"></script>
<script src="/js/prototype.js" type="text/javascript"></script>
<script src="/js/json.js" type="text/javascript"></script>
<script src="/js/json_services.js" type="text/javascript"></script>
<script type="text/javascript">
function check_and_submit_compra_cajero()
	{
	
	if (!document.getElementById('chk_ok').checked)
		{
		alert('{_MSG_ACEPTA_CONDICIONES_MHS_JS}');
		return false;
		}
	if (document.getElementById("form_facturacion") && document.getElementById("boleta_asistencia_"))
		{
		var form = document.getElementById("form_facturacion");
		if (getRadioValue(form.desea_factura) == 'N')
			{
			var errores = valida_boleta(document.boleta_asistencia_);
			if (errores)
				{
				alert(errores);
				return false;
				}
			}
		}
	procesa_pago();
	
	}
</script>

{DATA_LAYER_LOCAL_DEFINITION}

<h1>{_TITULO_PASO_5}</h1>
<p>{_BAJADA_PASO_5}</p>
{AVISO_CAMBIO_MONEDA}
{AVISO_TRAVEL_VOUCHER}
{*PNR}
  	<h1 style="font-size: 1.6em; margin: 0px">{_LABEL_CODIGO_RESERVA}: <span id="pnr_id_paso6">{PNR}</span></h1>
{/PNR}

{ITINERARIO}
<br />
{TARIFA}
{TABLA_ASISTENCIA}
{TABLA_PRECIO_FINAL}
{AVISO_IGV_IQT}
{TARIFA_RESUMEN_TRAVEL_VOUCHER}
{AVISO_TRAVEL_VOUCHER_SERVICIO}
{BIENVENIDO}
{INSTRUCCIONES_ERROR}
{COMPONENTE}
{DATOS_FACTURA}
{DATOS_FACTURA_LANTOURS}
<br />
{*BOLETA_ASISTENCIA}
{DATOS_BOLETA}
{/BOLETA_ASISTENCIA}
{*SHOW_CONDICIONES}
<div id="boton_continuar" style="display: {DISPLAY_BOTON_CONTINUAR}">
<table cellspacing="0" cellpadding="0" id="barra-continuar">
	<tr>
		<td class="first" id='id_checkbox'><input type="checkbox" name="checkbox" id="chk_ok" value="checkbox">
			<label for="chk_ok">
				<a title="{_LABEL_VER_CONDICIONES_COMPRA}" href="javascript:MM_openBrWindow('/cgi-bin/compra/show_condiciones.cgi','nombre','width=745,height=520,scrollbars=yes,resizable=yes');">
					{_MSG_ACEPTO_CONDICIONES_COMPRA}
				</a>
			</label>
		</td>
		<td class="last">&nbsp;&nbsp;</td>
		<td>
			<input type='button' class="button-process" onclick='check_and_submit_compra_cajero()' name='next_step' value='{_LABEL_CONTINUAR}'>
		</td>
	</tr>
	<tr>
			<td colspan="2" class="nota">{_MSG_NO_RETRACTO}</td>
		</tr>
</table>
</div>
{/SHOW_CONDICIONES}
