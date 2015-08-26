<script type="text/javascript">
function check_and_submit(f)
	{
	var errores = '';
	f.action = '{_URL_HOME}';
	f.submit();
	}
function imprimir(f)
	{
	var errores = '';
	f.action = 'javascript:window.print()';
	f.submit();
	}

var from_city = "{FROM_CITY}";
var to_city = "{TO_CITY}";
</script>

<div>

<h1>{_LABEL_CODIGO_RESERVA}: <span id="pnr_id">{PNR}</span></h1>
<br>
<h2>{MENSAJE_STATUS}</h2>
{ACCION_PAGO}
{ITINERARIO}
<div id="application_message_div"></div>
<script type="text/javascript">
  ApplicationMessage.show("{APPLICATION_MESSAGES}");
hide_layer('espera');
show_layer('espera2');
</script>
{INFORMACION_TRAVEL_VOUCHER}
{INFORMACION_PAGO}
{PROGRAMAS}
{ASISTENCIA_EN_VIAJE}
{INVITACION_CHECKIN}
{INVITACION_SELECCION_ASIENTO}
{INVITACION_CHECKIN_Y_SELECCION_ASIENTO}
{CUV}
{MSG_PROMOCIONAL_AUTO_HOTEL}
{PIXEL_PROVEEDOR}
{PIXEL_WORLD_MEDIA}
<form action="#">
	<input type="hidden" name="status_pago_p6" id = "status_pago_p6" value='{STATUS_PAGO}'>
	<input type="hidden" name="fare" id = "fare" value='{FARE}'>
	<input type="hidden" name="id_venta" id = "id_venta" value='{ID_VENTA}'>
	<input type="hidden" name="currency" id = "currency" value='{CURRENCY}'>
	<input type="hidden" name="impuestos" id = "impuestos" value='{IMPUESTOS}'>
	<input type="hidden" name="total_kms" id = "total_kms" value='{TOTAL_KMS}'>
	<input type="hidden" name="count_tickets" id = "count_tickets" value='{COUNT_TICKETS}'>
	<input type="hidden" name="vuelos_omniture" id = "vuelos_omniture" value='{VUELOS_OMNITURE}'>	
	<input type="hidden" name="status_cobro_premio" id = "status_cobro_premio" value='{STATUS_COBRO_PREMIO}'>
	<input type="hidden" name="clase_familia" id = "clase_familia" value='{CLASE_FAMILIA}'>	
	<input type="hidden" name="monto_asistencia" id = "monto_asistencia" value='{MONTO_ASISTENCIA}'>	
	<input type="hidden" name="descuento" id = "descuento" value='{DESCUENTO}'>	

	
</form>
{GOOGLE_ANALYTICS}
<script type="text/javascript">
hide_layer('espera');
hide_layer('espera2');
</script>

{DATA_LAYER_LOCAL_DEFINITION}

{WIDGET_EZPLUS}
<br>
<table width="100%" cellpadding="0" cellspacing="0" id="barra-continuar">
		<tr>
			<td class="left">
				<input type='button' class="button-process-blue-back" onclick="location.replace('{_URL_HOME}')" value='{_LABEL_VOLVER_AL_HOME}' name="home">
			</td>
			<td class="right">
				<input type='button' class="button-process-print" onclick='javascript:window.print()' value='{_LABEL_IMPRIMIR_PAGINA}' name="boton_imprimir">
			</td>
  		</tr>
	</table>
</div>


