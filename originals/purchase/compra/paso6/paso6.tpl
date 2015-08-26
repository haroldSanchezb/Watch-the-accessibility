{ESTILOS_CAJERO}
<script type="text/javascript">
function check_and_submit(f)
	{
	var errores = '';
	f.action = '{_URL_HOME}';
	if (typeof ClickTaleRegisterFormSubmit == 'function') {
		ClickTaleRegisterFormSubmit(f); 
		ClickTaleTag("form_submit_success");
	}
	f.submit();
	}
function imprimir(f)
	{
	var errores = '';
	f.action = 'javascript:window.print()';
	if (typeof ClickTaleRegisterFormSubmit == 'function') {
		ClickTaleRegisterFormSubmit(f); 
		ClickTaleTag("form_submit_success");
	}
	f.submit();
	}
</script>

<div>
<h2 id="qa_h2_estado_compra" >{MENSAJE_STATUS}</h2>
{MENSAJE_PAGO}
	<h1>{_LABEL_CODIGO_RESERVA}: <span id="pnr_id">{PNR}</span></h1>
<br>
{ITINERARIO}

<div id="application_message_div"></div>


<script type="text/javascript">
var from_city = "{FROM_CITY}";
var to_city = "{TO_CITY}";
</script>

<script type="text/javascript">
function setCountryCode(code) {
    document.getElementById('phone_country_code').value = code;
}

function checkDataAndSubmit(f){
    document.getElementById('nameError').style.display = 'none';
    document.getElementById('phoneError').style.display = 'none';
    document.getElementById('emailError').style.display = 'none';
    if (document.getElementById('name').value == '') {
        document.getElementById('nameError').style.display = 'block';
        return false;
    }

    if (document.getElementById('phone_contact').checked && document.getElementById('phone_number').value == '') {
        document.getElementById('phoneError').style.display = 'block';
        return false;
    }
    
    if (document.getElementById('email_contact').checked && document.getElementById('email').value == '') {
        document.getElementById('emailError').style.display = 'block';
        return false;
    }
    callBackAjax(f);
    
    return false;
}

function callBackAjax(f) {
    if (document.getElementById('phone_contact').checked) {
        contact = f.elements['phone_country_code'].value + '-' + f.elements['phone_city_code'].value + '-' + f.elements['phone_number'].value;
    }
    else {
        contact = f.elements['email'].value;
    }
    
    var url = '/cgi-bin/callback/confirmation.cgi';
    var ajaxRequest = new Ajax.Request(
        url, {
            method      : 'get',
            parameters  : 'name=' + f.elements['name'].value + '&contact=' + contact + '&pnr=' + f.elements['pnr'].value + '&home=' + f.elements['home'].value,
            onComplete  : showResponse
        }
    );
    hideLightbox_espera_procesa_pago('layer_general');
}

function showResponse(http_request) {
    var response = http_request.responseText;
    if(response.match('NOOK')) {
        alert("{_LABEL_CALLBACK_ERROR_JS}");
    }
}

</script>
<!-- Click To Call -->
<form name="estara_form" action="">
<input type="hidden" name="country" value="{_FRASE_HOME}" />
<input type="hidden" name="currency" value="USD" />
<input type="hidden" name="fare" value="{FARE_USD_CLICK_TO_CALL}" />
<input type="hidden" name="portal" value="{PORTAL_CLICK_TO_CALL}" />
</form>

<script type='text/javascript' src='//static.atgsvcs.com/js/atgsvcs.js'></script>

<script type='text/javascript'>
  ATGSvcs.setUOID(200106299774);
</script>

{PASAJEROS}
{ACCION_PAGO}
{TICKETS}
{INVITACION_CHECKIN}
{INVITACION_SELECCION_ASIENTO}
{INFORMACION_TRAVEL_VOUCHER}
{INFORMACION_PAGO}
{PROGRAMAS}
{ASISTENCIA_EN_VIAJE}
{INFORMACION_ENTREGA}
{REGULACIONES}
{RECOMENDACIONES}
{FACTURACION}
{PIXEL_PROVEEDOR}
{PIXEL_WORLD_MEDIA}
{GOOGLE_ANALYTICS}
<script type="text/javascript">
  ApplicationMessage.show("{APPLICATION_MESSAGES}");
</script>

{DATA_LAYER_LOCAL_DEFINITION}

</div>
<br>
{CALLCENTERS}
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
	<input type="hidden" name="status_reserva" id = "status_reserva" value='{STATUS_RESERVA}'>
	<input type="hidden" name="monto_reserva" id = "monto_reserva" value='{MONTO_RESERVA}'>
	<input type="hidden" name="monto_asistencia" id = "monto_asistencia" value='{MONTO_ASISTENCIA}'>
	<input type="hidden" name="descuento" id = "descuento" value='{DESCUENTO}'>
	<table width="100%" cellpadding="0" cellspacing="0" id="barra-continuar">
		<tr>
			<td class="left">
				<input type='button' class="boton-secundario" onclick='check_and_submit(this.form)' value='{_LABEL_VOLVER_AL_HOME}' name="home">
			</td>
			<td class="right">
				<input type='button' class="boton-secundario" onclick='imprimir(this.form)' value='{_LABEL_IMPRIMIR_PAGINA}' name="boton_imprimir">
			</td>
		</tr>
	</table>
</form>
