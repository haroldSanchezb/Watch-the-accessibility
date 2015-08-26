<script type="text/javascript" src="/js/cajas_servicios/caja_mis_reservas.js"></script>

<form action="/no_js.html" name="form_vuelos">
{*BLOQUE_VUELOS_ACTIVOS}
{*LISTA_VUELOS}
<div class="separador_corto">
	<p class="flotar_der">{_LABEL_FECHA_COMPRA}: <strong>{FECHA_COMPRA}</strong></p>
	<label class="especial">{_LABEL_CODIGO_RESERVA}</label>
	<p><a href="/cgi-bin/profile/mis_viajes.cgi?accion=ver_detalle&amp;id_venta={ID_VENTA}">{PNR}</a></p>

	<label class="especial no_negrita">{_LABEL_PASAJERO}</label>
	<p>
		{PASAJERO}
		{*OTROS_PASAJEROS}
		<a href="/cgi-bin/profile/mis_viajes.cgi?accion=otros_pasajeros&amp;pnr={PNR}">(+)</a>
		{/OTROS_PASAJEROS}
	</p>

	<label class="especial no_negrita">{_LABEL_TICKET}</label>
	<p>{TICKET}</p>

	<div class="boton_azul">
		<img src="/images/common/borde_der_boton_azul.jpg" alt="" width="6" height="20">
		<input type="submit" class="btn_azul" value="{_PALABRA_IR}" onClick="mis_reservas_go_service_vuelos('{PNR}', '{ID_VENTA}', '{POS}'); return false;">
	<img src="/images/common/borde_izq_boton_azul.jpg" alt="" width="6" height="20">	</div>
							
	<label for="servicio_{POS}" class="especial no_negrita">{_LABEL_SELECCIONE_SERVICIO}</label>
	<select name="servicio_{POS}" id="servicio_{POS}">
		{*BLOQUE_PAGO_RESERVA}
			<option value='pago_reserva'>
			{_LABEL_PAGO_RESERVA}
			</option>
		{/BLOQUE_PAGO_RESERVA}
		{*BLOQUE_CHECKINWEB}
			<option value='checkinweb'>
			{_LABEL_CHECKIN}
			</option>
		{/BLOQUE_CHECKINWEB}
		{*BLOQUE_ANULACIONES}
			<option value='anulaciones'>
			{_LABEL_ANULACIONES}
			</option>
		{/BLOQUE_ANULACIONES}
		{*BLOQUE_DEVOLUCIONES}
			<option value='devoluciones'>
			{_LABEL_DEVOLUCIONES}
			</option>
		{/BLOQUE_DEVOLUCIONES}
		{*BLOQUE_ASIENTO}
			<option value='seleccionar_asiento'>
			{_LABEL_SELECCIONAR_ASIENTO}
			</option>
		{/BLOQUE_ASIENTO}
		<!--{*BLOQUE_COMIDA_ESPECIAL}
			<option value='seleccionar_comida'>
			{_LABEL_SELECCIONAR_COMIDA}
			</option>
		{/BLOQUE_COMIDA_ESPECIAL}
		{*BLOQUE_SERVICIO_ESPECIAL}
			<option value='seleccionar_servicio'>
			{_LABEL_SELECCIONAR_SERVICIO}
			</option>
		{/BLOQUE_SERVICIO_ESPECIAL}-->
	</select>
</div>
{/LISTA_VUELOS}

{*MAS_VUELOS}
<div class="separador_corto no_bg">
	<!--<div class="clear_fix"></div>
	<br>-->
	<div class="flotar_der">
		<a href="/cgi-bin/profile/mis_viajes.cgi">+ {_FRASE_MAS_RESERVAS}</a>
	</div>
</div>
{/MAS_VUELOS}

{/BLOQUE_VUELOS_ACTIVOS}
</form>

{*BLOQUE_NO_EXISTEN_VUELOS_ACTIVOS}
<div class="separador_corto">
	{_MSG_SIN_COMPRAS_ACTIVAS}
</div>
{/BLOQUE_NO_EXISTEN_VUELOS_ACTIVOS}