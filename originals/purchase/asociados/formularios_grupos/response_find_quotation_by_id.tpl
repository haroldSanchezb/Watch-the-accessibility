<!--
AUTH: ASOCIADOS
-->

<h1>Cotizaci&oacute;n de Grupo</h1>

<h4>Informaci&oacute;n de la Cotizaci&oacute;n</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>
<tr>
<td class="sub-titulo">ID Cotizaci&oacute;n</td>
<td>{ID_QUOTATION} </td>
</tr>
<tr>
<td class="sub-titulo">Fecha Cotizaci&oacute;n</td>
<td>{QUOTATION_DATE}
</td>
</tr>
</table>
<br>
<br>


<h4>Informaci&oacute;n Agencia</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>
<tr>
<td class="sub-titulo">Agencia</td>
<td>{NAME_AGENCY} </td>
</tr>
<tr>
<td class="sub-titulo">C&oacute;digo IATA / RUT</td>
<td>{IDENTIFIER}
</td>
</tr>
<tr>
<td class="sub-titulo">Pais</td>
<td>{COUNTRY}</td>
</tr>
</table>
<br>
<br>

<h4>Agente</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="sub-titulo">Nombre Agente</td>
<td>{NAME_EXECUTIVE} 
</td>
</tr>
<tr>
<td class="sub-titulo">Email</td>
<td>{EMAIL_EXECUTIVE}</td>	
</tr>
</table>
<br>
<br>


<h4>Informaci&oacute;n del Grupo</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="sub-titulo">Cantidad de Pasajeros</td>
<td>{TOTAL_PAX}</td>
</tr>
<tr>
<td class="sub-titulo">Cabina</td>
<td>{COMPARTMENT}</td>
</tr>
<tr>
<td class="sub-titulo">Tarifa Cotizada</td>
<td>{FARE_OFFERED}</td>
</tr>
</table>
<br>
<br>

<h4>Segmentos de Vuelo</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
<th>Origen</th>
<th>Destino</th>
<th>Fecha Salida</th>
<th>Vuelo</th>
<th>Clase</th>
</tr>

{*VUELO}
<td>{ORIGIN}</td>
<td>{DESTINATION}</td>
<td>{DEPARTURE_DATE}</td>
<td>{CARRIER}{FLIGHT_NUMBER}</td>
<td>{BOOKING_CLASS}</td>
</tr>
{/VUELO}
</table>

<input type="button" class="boton-destacado flotar_der" onClick="window.location='/cgi-bin/asociados/formularios_grupos.cgi?form_name=create_request_mundolan&amp;id_quotation={ID_QUOTATION}&amp;quotation_date={QUOTATION_DATE}&amp;total_pax={TOTAL_PAX}&amp;compartment={COMPARTMENT}&amp;fare_neta={FARE_OFFERED}{VUELOS_PARAMS}&amp;source=quotation'" value="Aceptar Cotizaci&oacute;n">

