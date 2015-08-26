
<h1>{_MSG_SELF_NOTIFY_SELECCIONE_PAX_E_INGRESE_DATOS_CONTACTO}</h1>

<h2>{MENSAJE_USUARIO}</h2>

{*DATOS}

{*ITINERARIO}

<table class="table" cellspacing="0" width="100%">
	<tr>
		<th>{_LABEL_FECHA}</th>
		<th>{_LABEL_ORIGEN}</th>
		<th>{_LABEL_DESTINO}</th>
		<th>{_LABEL_SALIDA}</th>
		<th>{_LABEL_VUELO}</th>
	</tr>
	{*RESUMEN_SEGMENTO}
	<tr class="{CLASE_FILA}">
		<td>{FECHA}</td>
		<td>{CIUDAD_ORIGEN}</td>
		<td>{CIUDAD_DESTINO}</td>
		<td><strong>{HORA_SALIDA}</strong></td>
		<td>{VUELO}</td>
	</tr>
	{/RESUMEN_SEGMENTO}
</table>
{/ITINERARIO}
{/DATOS}
