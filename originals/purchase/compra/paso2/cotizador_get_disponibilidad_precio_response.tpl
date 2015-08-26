{*RESPONSE}
<cotizador_get_disponibilidad_precio_response>
	<Version>{ID_VERSION}</Version>
	<LinkBase>session_id={SESSION_ID}&amp;tipo_paso2={TIPO_PASO2}&amp;rand_check={RAND_CHECK}&amp;currency_cotizacion={ID_MONEDA}</LinkBase>	
	<SessionId>{SESSION_ID}-{HOME}</SessionId>
{*SEGMENTO}
	<SegmentoInfo segmentoIndex="{ID_SEGMENTO}">
		<OriginCity>{ORIGIN_CITY}</OriginCity> 
		<DestinationCity>{DESTINATION_CITY}</DestinationCity> 
		<OriginCityName>{ORIGIN_CITY_NAME}</OriginCityName> 
		<DestinationCityName>{DESTINATION_CITY_NAME}</DestinationCityName> 
		{*VUELO}	
			<VueloInfo vueloIndex="{ID_VUELO}">
				<DepartureTime>{DEPARTURE_TIME}</DepartureTime> 
				<ArrivalTime>{ARRIVAL_TIME}</ArrivalTime> 
				<Duration>{DURATION}</Duration> 
				<ETicketing>{ETICKETING}</ETicketing>
				<DepartureTimeSecs>{DEPARTURE_TIME_SECS}</DepartureTimeSecs>
				<ArrivalTimeSecs>{ARRIVAL_TIME_SECS}</ArrivalTimeSecs>
				{*LEG_INFO}	
					<LegInfo>	
					<FlightCode>
						<CarrierCode>{CARRIER_CODE}</CarrierCode>
						<FlightNumber>{FLIGHT_NUMBER}</FlightNumber>
					</FlightCode> 
					<OriginAirport>{ORIGIN_AIRPORT}</OriginAirport> 
					<DestinationAirport>{DESTINATION_AIRPORT}</DestinationAirport> 
					<OriginAirportName>{ORIGIN_AIRPORT_NAME}</OriginAirportName> 
					<DestinationAirportName>{DESTINATION_AIRPORT_NAME}</DestinationAirportName> 
					<OriginCity>{ORIGIN_CITY}</OriginCity> 
					<DestinationCity>{DESTINATION_CITY}</DestinationCity> 
					<OriginCityName>{ORIGIN_CITY_NAME}</OriginCityName> 
					<DestinationCityName>{DESTINATION_CITY_NAME}</DestinationCityName> 
					<DepartureTime>{DEPARTURE_TIME}</DepartureTime> 
					<ArrivalTime>{ARRIVAL_TIME}</ArrivalTime> 
					<Aircraft>{AIRCRAFT}</Aircraft> 
					<OperationalFlightCode>
						<CarrierCode>{CARRIER_CODE_OPERATIONAL}</CarrierCode>
						<CarrierName>{CARRIER_NAME_OPERATIONAL}</CarrierName>
					</OperationalFlightCode>
					<LinkStops>{LINK_STOPS}</LinkStops> 
					<NumStops>{NUM_STOPS}</NumStops> 
					</LegInfo>	
				{/LEG_INFO}
				{*TARIFAS}
					<Tarifa>
					<Type>{TYPE}</Type>
					<BookingCode>{BOOKING_CODE}</BookingCode>
					<Family>{ID_FAMILIA}</Family>
					<Currency>{CURRENCY}</Currency>
					<Amount>{AMOUNT}</Amount>
					<LinkVueloTarifa>vuelo_segmento{ID_SEGMENTO}={ID_VUELO}&amp;clase_segmento{ID_SEGMENTO}={BOOKING_CODE}&amp;familia_segmento{ID_SEGMENTO}={ID_FAMILIA}&amp;currency_segmento{ID_SEGMENTO}={CURRENCY}&amp;monto_segmento{ID_SEGMENTO}={AMOUNT}&amp;HORARIO_SEG{ID_SEGMENTO}_VUE{ID_VUELO}={DEPARTURE_TIME_SECS}%{ARRIVAL_TIME_SECS}&amp;{TIPO}=</LinkVueloTarifa>
					</Tarifa>
				{/TARIFAS}
				</VueloInfo>	
		{/VUELO}	
	</SegmentoInfo>
{/SEGMENTO}
{*FAMILIAS}
	<Familias>
		<Name>{NAME_FAMILY}</Name>
		<Family>{ID_FAMILIA}</Family>
		{*COMBINA}
			<CombinaCon>{ID_FAMILIA}</CombinaCon>
		{/COMBINA}
		<Regulacion>{REGULACION}</Regulacion>
	</Familias>
{/FAMILIAS}
</cotizador_get_disponibilidad_precio_response>
{/RESPONSE}
{*RESPONSE_ERROR}
<cotizador_get_disponibilidad_precio_response>
	<version>{ID_VERSION}</version>
	<ErrorCode>{ERROR_CODE}</ErrorCode>
</cotizador_get_disponibilidad_precio_response>
{/RESPONSE_ERROR}