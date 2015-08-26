<!--
AUTH: ASOCIADOS
-->

<h1>Solicitud de Grupo</h1>

<h4>Informaci&oacute;n Agencia</h4>

<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>

<tr>
<td class="sub-titulo">Nombre Agencia</td>
<td>{NAME_AGENCY} 
</td>
</tr>

<tr>
<td class="sub-titulo">IATA Agencia / RUT</td>
<td>{IDENTIFIER}
</td>
</tr>
</table>
<br>
<br>

<h4>Agente Viaje</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>

<tr>
<td class="sub-titulo">Agente</td>
<td>{NAME_EXECUTIVE} 
</td>
</tr>
<tr>
<td class="sub-titulo">email</td>
<td>{EMAIL_EXECUTIVE}</td>
</tr>
</table>
<br>
<br>

<h4>Tipo Solicitud</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>

<tr>
<td class="sub-titulo">Segmento</td>
<td>
{SEGMENT}
</td>
</tr>
<tr>
<td class="sub-titulo">Motivaci&oacute;n de Viaje</td>
<td>
{TRAVEL_REASON}
</td>
</tr>
<tr>
<td class="sub-titulo">Producto</td>
<td>
{PRODUCT}
</td>
</tr>
<tr>
<td class="sub-titulo">Empresa</td>
<td>{COMPANY}
</td>
</tr>
</table>
<br>
<br>

<h4>Informaci&oacute;n del Grupo</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>

<tr>
<td class="sub-titulo">Nombre del Grupo</td>
<td>{GROUP_NAME}
</td>
</tr>


<tr>
<td class="sub-titulo">Tipo</td>
<td>
{TYPE_PAX}
</td>
</tr>


<tr>
<td class="sub-titulo">Cantidad de Pasajeros</td>
<td>{TOTAL_PAX}
</td>
</tr>

<tr>
<td class="sub-titulo">Cabina</td>
<td>
{COMPARTMENT}
</td>
</tr>

<tr>
<td class="sub-titulo">Pasajeros Adultos</td>
<td>{PAX_FULL_FARE}
</td>
</tr>
<tr>
<td class="sub-titulo">Pasajeros Child</td>
<td>{PAX_CHILD}
</td>
</tr>

<tr>
<td class="sub-titulo">Tarifa TRG</td>
<td>{FARE_NETA}
</td>
</tr>

<tr>
<td class="sub-titulo">Fare Basis</td>
<td>{FARE_BASIS}
</td>
</tr>
</table>

<br>
<br>

<h4>Segmentos de Vuelo</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="14%">
<col width="14%">
<col width="30%">
<col width="14%">
<col width="14%">
<col width="14%">
<tr>

<th>Carrier</th>
<th>Nro.Vuelo</th>
<th>Fecha Salida</th>
<th>Origen</th>
<th>Destino</th>
<th>Clase</th>
</tr>

{*VUELO}
<tr>
<td>
{CARRIER}
</td>
<td>
{FLIGHT_NUMBER}
</td>
<td>
{DEPARTURE_DATE}
</td>
<td>
{ORIGIN}
</td>
<td>
{DESTINATION}
</td>
<td>
{BOOKING_CLASS}
</td>
</tr>
{/VUELO}

</table>

<br>
<br>

<h4>Informaci&oacute;n  Complementaria</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col>
<col width="20%">
<col width="20%">

<tr>
<td class="sub-titulo">Es posible dividir el Grupo?</td>
<td>{FLAG_DIVIDE_GROUP}</td>
</tr>

<tr>
<td class="sub-titulo">Acepta Alternativas?</td>
<td>{FLAG_ACCEPT_ALTERNATIVE}</td>
</tr>

<tr><td>&nbsp;</td></tr>

<tr>
<td class="sub-titulo">El Grupo transporta equipaje especial?</td>
<td>{FLAG_SPECIAL_BAGGAGE}</td>
</tr>
<tr>
<td class="sub-titulo">Cual?</td>
<td>{DETAIL_BAGGAGE}
</td>
</tr>

</table>

<p><input type="submit" name="Submit" value="Enviar" class="boton-destacado flotar_der"></p>

</form>

