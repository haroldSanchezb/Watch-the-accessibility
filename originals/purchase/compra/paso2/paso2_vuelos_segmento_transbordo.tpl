{*NO_LANPASS}
<br>{_LABEL_CONEXION_EN} {CITY_CODE} ({CITY_ISO})<br>
<span onMouseOver="activa_flight_info('{FLIGHT_STATS_QUERY}', '{FLIGHT_STATS_QUERY}', 'tooltip_flight_info', '{FLIGHT_STATS_QUERY}');" onMouseOut="desactiva_flight_info();">
	{IMAGEN_CONVENIO} {AIRLINE_CODE} {NUMERO_VUELO} {OPERADO_POR_INFO}
</span><br>
{ESCALAS} {MATERIAL_DE_VUELO}
{/NO_LANPASS}
{*LANPASS}
<tr>
	<td>{LANPASS_SEMAFORO}</td>
	<td>
		{_LABEL_CONEXION_EN} {CITY_CODE} ({CITY_ISO})<br>
		<span onMouseOver="activa_flight_info('{FLIGHT_STATS_QUERY}', '{FLIGHT_STATS_QUERY}', 'tooltip_flight_info', '{FLIGHT_STATS_QUERY}');" onMouseOut="desactiva_flight_info();">
			{AIRLINE_CODE} {NUMERO_VUELO} {OPERADO_POR_INFO}
		</span><br>
		{ESCALAS} {MATERIAL_DE_VUELO}
	</td>
</tr>
{/LANPASS}
