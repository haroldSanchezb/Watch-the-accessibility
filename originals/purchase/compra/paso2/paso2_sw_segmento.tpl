<h4>{FROM_CITY} - {TO_CITY}</h4>
<table class=table cellspacing='0' cellpadding='0' width="100%" >
	<col width="4%">
	<col width="5%">
	<col width="12%">
	<col width="14%">
	<col width="15%">
	<tr> 
		<td colspan=5>{FLECHA_AYER} {FECHA_VUELO} {FLECHA_MANANA}</td>
		<td colspan={COLSPAN} class=sub-titulo>
			<table class=no-table cellspacing='0' cellpadding='0' width="100%" >
				<tr>
					<td class=left>{_MAYOR_FLEXIBILIDAD}</td>
					<td class=right>{_MENOR_FLEXIBILIDAD}</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr> 
		<th>{_LABEL_VUELOS}</th>
		<th>{_LABEL_AVION}</th>
		<th>{_LABEL_SALIDA}</th>
  		<th>{_LABEL_LLEGADA}</th>
  		<th>{_LABEL_DURACION}</th>
    	{TDS_HEAD2}
	</tr>
  	{TRS_VUELOS} 
</table>
<p>{MENSAJE_EXTRA}</p>
<input type='hidden' name='vuelo_segmento{ID_SEGMENTO}'> 
<input type='hidden' name='fb_segmento{ID_SEGMENTO}'>
<input type='hidden' name='clase_segmento{ID_SEGMENTO}'>
