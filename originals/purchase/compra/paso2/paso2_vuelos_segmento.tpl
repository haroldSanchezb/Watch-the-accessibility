<tr onMouseDown="javascript:sched_set_ratio({ID_SEGMENTO}, {ID_RADIO_BUTTON});javascript:redirect_paso2_manana('{RELOAD}', '{LINK_PASO2_MANANA_VUELTA}', '{ID_RADIO_BUTTON}', '0', '{OVERNIGHT}');" style="cursor:'hand'" class="{ES_PAR}">
	<td>
		<input type='radio' name='vuelo_segmento{ID_SEGMENTO}' id='{ID_RADIO_BUTTON}' value='{ID_VUELO}' {CHECKED} {DISABLED}>
		<input type='hidden' name='HORARIO_SEG{ID_SEGMENTO}_VUE{ID_RADIO_BUTTON}' value='{HORARIO_SECS_SALIDA}|{HORARIO_SECS_LLEGADA}'>
		<input type='hidden' name='CPLP_VALID_SEG{ID_SEGMENTO}_VUE{ID_VUELO}' value='{CPLP_VALID}'>
	</td>
	<td>
		{*LANPASS}
		<table class=no-table>
			<tr >
				<td>{LANPASS_SEMAFORO}</td>
				<td>
					<span onMouseOver="activa_flight_info('{FLIGHT_STATS_QUERY}', '{FLIGHT_STATS_QUERY}', 'tooltip_flight_info', '{FLIGHT_STATS_QUERY}');" onMouseOut="desactiva_flight_info();">
						{AIRLINE_CODE} {NUMERO_VUELO} {OPERADO_POR_INFO}
					</span>
					<br>
					{ESCALAS} {MATERIAL_DE_VUELO}
					<br>
					{INFO_TRANSBORDO}
				</td>
			</tr>
		</table>
		{/LANPASS}
		{*NO_LANPASS}
		<span onMouseOver="activa_flight_info('{FLIGHT_STATS_QUERY}', '{FLIGHT_STATS_QUERY}', 'tooltip_flight_info', '{FLIGHT_STATS_QUERY}');" onMouseOut="desactiva_flight_info();">
			{IMAGEN_CONVENIO} {AIRLINE_CODE} {NUMERO_VUELO} {OPERADO_POR_INFO}
		</span>
			<br> {ESCALAS}
			 {MATERIAL_DE_VUELO} 
			<br>{INFO_TRANSBORDO}
		{/NO_LANPASS}
	</td>
	<td>{HORA_SALIDA}
	<br/>
	<span style="font-weight:bold;text-decoration:underline" onMouseOver="if (typeof(activa_ttip) != 'undefined') activa_ttip('ttip_aeropuerto_{AEROPUERTO_SALIDA}', 'tooltip_aeropuerto');" onMouseOut="if (typeof(desactiva_ttip) != 'undefined') desactiva_ttip();">({AEROPUERTO_SALIDA})
		<div id="ttip_aeropuerto_{AEROPUERTO_SALIDA}" style="display: none;">
		<div class="top"></div>
		<div class="middle">
		{NOMBRE_AEROPUERTO_SALIDA}
		</div>
		<div class="bottom"></div>
		</div>
	</span>
	</td>
	<td>
	{HORA_LLEGADA}
	<br/>
	<span style="font-weight:bold;text-decoration:underline" onMouseOver="if (typeof(activa_ttip) != 'undefined') activa_ttip('ttip_aeropuerto_{AEROPUERTO_LLEGADA}', 'tooltip_aeropuerto');" onMouseOut="if (typeof(desactiva_ttip) != 'undefined') desactiva_ttip();">({AEROPUERTO_LLEGADA})
		<div id="ttip_aeropuerto_{AEROPUERTO_LLEGADA}" style="display: none;">
		<div class="top"></div>
		<div class="middle">
		{NOMBRE_AEROPUERTO_LLEGADA}
		</div>
		<div class="bottom"></div>
		</div>
	</span>
	</td>
	<td>{DURACION} hrs.</td>
	<td>
	{CABINA}<br/>
	{LINK_VER_CABINA}
	</td>
</tr>
