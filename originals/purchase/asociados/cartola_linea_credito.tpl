<div style="text-align: center">
<h1> Reporte de Ventas </h1>
<form action="#">
<table class="tabla2" style="width: 520px">
<tr class="impar">
<td style="vertical-align:middle">Venta desde</td>
<td>
	{+CALENDARIO(nc='1', fecha_iso_desde='2005-01-01', fecha_iso_hasta='2030-12-12', fecha_iso_inicio='2005-01-01', pedir_hora=1)}
	(Hora local)
</td>
</tr>
<tr class="par">
<td style="vertical-align:middle">Venta hasta</td>
<td>
	{+CALENDARIO(nc='2', fecha_iso_desde='2005-01-01', fecha_iso_hasta='2030-12-12', fecha_iso_inicio='2005-01-01', pedir_hora=1)}
	(Hora local)
</td>
</tr>
<tr class="impar">
<td>Sucursal</td>
<td>
<select name='id_sucursal' id='id_sucursal'>
<option value=""> Seleccione una sucursal </option>
{LISTADO_SUCURSALES}
</select>
</td>
</tr>
<tr class="par">
<td>Agente</td>
<td>
<select name='id_asociado' id='id_asociado'>
<option value=""> Todos </option>
{LISTADO_AGENTES}
</select>
</td>
</tr>
<tr class="impar">
<td colspan='2' style="text-align: center"><input type="submit" class="boton-destacado" name="buton1" id="buton1" value="Consultar"></td>
</tr>
</table>
</form>
<br>
<table class="tabla2">
<thead>
<tr>
<td class="first"> Id Movimiento </td>
<td class="first"> Fecha y hora (GMT) </td>
<td class="first"> Vendedor </td>
<td class="first"> Concepto </td>
<td class="first"> PNR </td>
<td class="first"> Pasajeros </td>
<td class="first"> Forma de pago </td>
<td class="first"> Total (USD) </td>

<td class="first" style="display: {COMISION_EXTRA_VISIBLE};"> Comisi&oacute;n est&aacute;ndar (USD) </td>
<td class="first"> Comisi&oacute;n <span style="display: {COMISION_EXTRA_VISIBLE};">adicional </span>(USD) </td>

<td class="first"> Total a pagar (USD) </td>
<td class="first"> Cargo </td>
<td class="first"> Abono </td>
</tr>
</thead>
<tbody>
{*MOVIMIENTO}
<tr>
<td> {ID_MOVIMIENTO}</td>
<td> {FECHA} </td>
<td> {VENDEDOR} ({USUARIO})</td>
<td> {CONCEPTO} </td>
<td> {PNR} </td>
<td>
	<ul style="margin: 0; padding-left: 0;">
	{*PASAJEROS}
		<li>
			<b>{TITULO}{PRIMER_APELLIDO}&nbsp;{SEGUNDO_APELLIDO},&nbsp;{NOMBRE}</b><br>
			TICKETS:<br>  {*TICKETS}{NUMERO_TICKET}({ESTADO_TICKET})<br>{/TICKETS}
			FOID: {FOID_NUMERO}<br>
			DT: {DOCUMENTO_TRIBUTARIO_NUMERO}<br>
		</li>
	{/PASAJEROS}
	</ul>
</td>
<td> {FORMA_DE_PAGO} </td>
<td> {TOTAL} </td>

<td style="display: {COMISION_EXTRA_VISIBLE};"> {COMISION_STANDARD} </td>
<td> {COMISION} </td>

<td> {TOTAL_A_PAGAR} </td>
<td> {CARGO} </td>
<td> {ABONO} </td>
</tr>
{/MOVIMIENTO}
<tr>
<td> <b>TOTALES</b> </td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td> <b>{TOTAL_TOTAL}</b> </td>

<td style="display: {COMISION_EXTRA_VISIBLE};"> <b>{TOTAL_COMISION_STANDARD}</b> </td>
<td> <b>{TOTAL_COMISION}</b> </td>

<td> <b>{TOTAL_TOTAL_A_PAGAR}</b> </td>
<td> <b>{TOTAL_CARGO}</b> </td>
<td> <b>{TOTAL_ABONO}</b> </td>
</tr>
</tbody>
</table>
<br>
<table class="tabla2" style="width: 250px">
<thead>
<tr>
<td class="first" colspan='2'> Resumen de l&iacute;nea de cr&eacute;dito</td>
</tr>
</thead>
<tbody>
<tr>
<td> Monto autorizado: </td>
<td style="text-align: right"> {MONTO_AUTORIZADO} </td>
</tr>
<tr>
<td> Monto disponible: </td>
<td style="text-align: right"> {MONTO_DISPONIBLE} </td>
</tr>
</tbody>
</table>

</div>
