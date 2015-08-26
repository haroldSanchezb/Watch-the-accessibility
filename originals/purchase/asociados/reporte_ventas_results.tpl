<h1>Reporte de ventas</h1>


<div style="width: 500px;">
<h4>Filtros</h4>

<table class="table" width="100%" cellspacing="0" cellpadding="0">
	<colgroup span="4" width="25%"></colgroup>
	<tr> 
		<td class="sub-titulo">Fecha desde</td>
		<td>{FILTRO_FECHA_DESDE}</td>
		<td class="sub-titulo">Fecha hasta</td>
		<td>{FILTRO_FECHA_HASTA}</td>
	</tr>
	<tr> 
		<td class="sub-titulo">Sucursal</td>
		<td>{FILTRO_SUCURSAL}</td>
		<td class="sub-titulo">Agente</td>
		<td>{FILTRO_AGENTE}</td>
	</tr>
</table>
</div>

<table class="table" width="100%" cellspacing="0" cellpadding="0">
	<tr> 
		<th>Vendedor</th>
		<th>PNR</th>
		<th>Fecha<br>de venta</th>
		<th>Pasajeros</th>
		<th>Tickets(cupones/status)</th>
		<th>Moneda</th>
		<th>Tarifa</th>
		<th>Tax</th>
		<th>Comisi&oacute;n</th>
		{*EXTRA_HEADERS}
		<th>{NAME}</th>
		{/EXTRA_HEADERS} 
	</tr>
        <tr>
		<th>&nbsp;</th>
		<th>Itinerario</th>
		<th>&nbsp;</th>
		<th>&nbsp;</th>
		<th>&nbsp;</th>
		<th>Equivalencia</th>
		<th>Tarifa USD</th>
		<th>Tax USD</th>
		<th>Comisi&oacute;n USD</th>
        </tr>
	{*REGISTROS_VENTA}
	<tr>
		<td style="white-space: nowrap;">{NOMBRE_VENDEDOR}</td>
		<td style="white-space: nowrap;">{PNR}</td>
		<td style="white-space: nowrap;">{FECHA}</td>
		<td style="white-space: nowrap;">{*NOMBRES}{NOMBRE}<br>{/NOMBRES}</td>
		<td style="white-space: nowrap;">{*TICKETS}{TICKET_NUMBER} ({STATUS_CUPONES}/{STATUS_TICKET})<br>{/TICKETS}</td>
		<td style="white-space: nowrap;">{FARE_CURRENCY}</td>
		<td style="white-space: nowrap; text-align: right;">{FARE_WOT}</td>
		<td style="white-space: nowrap; text-align: right;">{FARE_TAX}</td>
		<td style="white-space: nowrap; text-align: right;"><strong>{COMISION}</strong></td>
		{*EXTRA_FIELDS}
		<td>{VALUE}</td>
		{/EXTRA_FIELDS}
	</tr>
        <tr>
		<td style="white-space: nowrap;">{RUT_VENDEDOR}</td>
		<td style="white-space: nowrap;">{SEGMENTO}</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td style="white-space: nowrap;">eq USD</td>
		<td style="white-space: nowrap; text-align: right;">{FARE_WOT_USD}</td>
		<td style="white-space: nowrap; text-align: right;">{FARE_TAX_USD}</td>
		<td style="white-space: nowrap; text-align: right;"><strong>{COMISION_USD}</strong></td>
        </tr>
        <tr>
		<td>&nbsp;</td>
        </tr>

	{/REGISTROS_VENTA}
	<tr> 
</table>
		
<form action='reporte_ventas.cgi' method='POST' name="form2">
	<input type="submit" value="Bajar a Excel" class="boton-destacado" onfocus="blur()" onclick="document.form2.submit();" name="download_button">
	<input type='hidden' name='accion' value='download'>
	<input type='hidden' name='csv_data' value='{CSV_DATA}'>
</form>


