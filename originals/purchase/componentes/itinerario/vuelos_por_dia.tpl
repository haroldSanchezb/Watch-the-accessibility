<script type="text/javascript" src="/js/prototype.js"></script>
<!--<script type="text/javascript" src="/js/json.js"></script>
<script type="text/javascript" src="/js/json_services.js"></script>
<script type="text/javascript" src="/js/dynamic_components.js"></script>-->

<script type="text/javascript">
var Dynamic_App_{CONTAINER} =
	{
	postload: function()
		{
		if ($('loading_{CONTAINER}'))
			{
			$('loading_{CONTAINER}').style.visibility = 'hidden';
			}
		},
	postfailure: function()
		{
		if ($('loading_{CONTAINER}'))
			{
			$('loading_{CONTAINER}').style.visibility = 'hidden';
			}
		if ($('botones_{CONTAINER}'))
			{
			$('botones_{CONTAINER}').style.visibility = 'visible';
			}
		},
	reload: function(fecha)
		{
		var splitedFecha = fecha.split("-");
		var anoMes = splitedFecha[0] + "-" + splitedFecha[1];
		var dia = splitedFecha[2];
		var params = 'accion=paso2&OriVuelo={ARG_ORIGEN}&DesVuelo={ARG_DESTINO}&fecha1_anomes=' + anoMes + '&fecha1_dia=' + dia;

		$('loading_{CONTAINER}').style.visibility = 'visible';
		$('botones_{CONTAINER}').style.visibility = 'hidden';

		/*Dynamic_Components.refresh_component(
			"{CONTAINER}", 
			"97", 
			"origen='{ARG_ORIGEN}',destino='{ARG_DESTINO}',fecha='" + fecha + "'",
			Dynamic_App_{CONTAINER}.postload,
			Dynamic_App_{CONTAINER}.postfailure
			);*/

//		window.location = "/cgi-bin/itinerario/itinerario.cgi?" + params;
		window.location = "{FORM_ACTION}?" + params;
		}
	}
</script>
<div id='omniture_override' style='visibility: hidden; display: none'>
<form action='#'>
<input type="hidden" name="omniture_override_pagename" id = "omniture_override_pagename" value='consulta_itinerario_paso2_por_dia'>
</form>
</div>
<h2>{ORIGEN} - {DESTINO}, {FECHA}</h2>

	<table class="tabla_itinerario" cellspacing="0" cellpadding="0" width="100%" style="padding: 0">
		{*ENCABEZADO}
		<tr class="titulo_tabla_itinerario">
			<th class="info" style="">{_LABEL_VUELO}</th> 
			<th class="info" style="">{_LABEL_AVION}*</th>
			<th class="info" style="">{_LABEL_RUTA}</th>
			<th class="info" style="">{_LABEL_SALIDA}</th>
			<th class="info" style="">{_LABEL_LLEGADA}</th>
			<th class="info" style="">{_LABEL_OPERADO_POR}</th>
			<th class="info" style="">{_LABEL_ESCALAS}</th> 
			<th class="info" style="">{_LABEL_DURACION}</th>
		</tr>
		{/ENCABEZADO}
		{*VUELOS}
		<tr class="{TIPO}"> 
			<td class="info">{VUELO}</td>
			<td class="info" style="text-align: center;">{AVION}</td>
			<td class="info">{RUTA}</td>
			<td class="info">{HORA_SALIDA}</td>
			<td class="info">{HORA_LLEGADA}</td>
			<td class="info">{OPERADOR} {PALABRA_PARA} {AIRLINE_MKT}</td>
			<td class="info" style="text-align: center;">{ESCALAS}</td>
			<td class="info" style="text-align: center;">{TIEMPO_VUELO}</td>
		</tr>
		{/VUELOS}
        <tr>
        <td colspan="8"><p class="nota">{_MSG_AVION_PUEDE_VARIAR}</p></td>
        </tr>
	</table>

{*SIN_ELEMENTOS}
{_MSG_PASO2_SIN_VUELOS}<br>
<br>
{/SIN_ELEMENTOS}

<table width="100%">
	<tr>
		<td>
			<div id="botones_{CONTAINER}" style="width:300px">
				<input type="button" class="button-process-small-back bluegrey-back" value="{_LABEL_DIA_ANTERIOR}" onClick="Dynamic_App_{CONTAINER}.reload('{ARG_FECHA_PREVIA}');">
				<input type="button" class="button-page" value="{_LABEL_DIA_SIGUIENTE}" onClick="Dynamic_App_{CONTAINER}.reload('{ARG_FECHA_SIGUIENTE}');">
			</div>
		</td>
		<td>
			<div id="loading_{CONTAINER}" style="width: 100%; font-size: 0.9em; visibility: hidden;">
				<table style="float: right;">
					<tr>
						<td>
							<img src="/images/html/indicator.gif" width="16" height="16" alt="{_LABEL_LOADING}">
						</td>
						<td style="vertical-align: middle;">
							{_LABEL_LOADING}
						</td>
					</tr>
				</table>
			</div>
		</td>
	</tr>
</table>
