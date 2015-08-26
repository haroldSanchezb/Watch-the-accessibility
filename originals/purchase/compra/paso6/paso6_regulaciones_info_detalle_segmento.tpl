<table class=table width="100%" cellpadding="0" cellspacing="0" style="margin-bottom: 0;">
	<col width="10%">
	<col width="90%">
	<tr>
		<th colspan="2" style="background:#f1f1f2; font: bold 14px Arial, Helvetica, sans-serif; color: #333; padding: 8px; text-align:left; border-top:0px;">
			<strong>{SEGMENTO}</strong>
		</th>
	</tr>
	<tr><td class=sub-titulo colspan=2 style="font: normal 11px Arial, Helvetica, sans-serif; color: #333; padding: 5px 8px 10px 8px; text-align:left;"><strong>{_LABEL_APLICABILIDAD}</strong></td></tr>
	<tr> 
		<td>&nbsp;</td>
		<td style="font: normal 11px Arial, Helvetica, sans-serif; color: #333; padding: 5px 8px 10px 8px; text-align:left;">
			<ul style="list-style-type:disc;">
				<li>{_LABEL_ANTICIPACION_MINIMA_COMPRA}: {AP}</li>
				<!-- <li class=txt-arial-11-negro>{_LABEL_ANTICIPACION_MAXIMA_COMPRA}: {APMAX}</li> -->
				<li>{_LABEL_ESTADIA_MINIMA}: {ESTADIAMIN}</li>
				<li>{_LABEL_ESTADIA_MAXIMA}: {ESTADIAMAX}</li>
			</ul>
		</td>
	</tr>
	<tr><td class=sub-titulo colspan=2 style="font: normal 11px Arial, Helvetica, sans-serif; color: #333; padding: 5px 8px 10px 8px; text-align:left;"><strong>{_LABEL_CAMBIOS_DE_FECHA_RUTA}</strong></td></tr>
	<tr> 
		<td>&nbsp;</td>
		<td style="font: normal 11px Arial, Helvetica, sans-serif; color: #333; padding: 5px 8px 10px 8px; text-align:left;">
			<ul style="list-style-type:disc;">
				<li>{FECHA}</li>
				<li>{FECHAMISMODIA}</li>
			</ul>
		</td>
	</tr>
{*BLOQUE_OTRAS_CONDICIONES}
	<tr><td class=sub-titulo colspan=2 style="font: normal 11px Arial, Helvetica, sans-serif; color: #333; padding: 5px 8px 10px 8px; text-align:left;"><strong>{_LABEL_OTRAS_CONDICIONES}</strong></td></tr>
	<tr> 
		<td>&nbsp;</td>
		<td style="font: normal 11px Arial, Helvetica, sans-serif; color: #333; padding: 5px 8px 10px 8px; text-align:left;">
			{OTRAS_CONDICIONES}
		</td>
	</tr>

{/BLOQUE_OTRAS_CONDICIONES}
	<tr><td class=sub-titulo colspan=2 style="font: normal 11px Arial, Helvetica, sans-serif; color: #333; padding: 5px 8px 10px 8px; text-align:left;"><strong>{_LABEL_DEVOLUCIONES}</strong></td></tr>
	<tr> 
		<td>&nbsp;</td>
		<td style="font: normal 11px Arial, Helvetica, sans-serif; color: #333; padding: 5px 8px 10px 8px; text-align:left;">
			<ul style="list-style-type:disc;">
				<li>{DEVOLUCIONES}</li>
			</ul>
		</td>
	</tr>
	<tr><td class=sub-titulo colspan=2 style="font: normal 11px Arial, Helvetica, sans-serif; color: #333; padding: 5px 8px 10px 8px; text-align:left;"><strong>{_LABEL_DESCUENTO_SEGUN_PAX}</strong></td></tr>
	<tr> 
		<td>&nbsp;</td>
		<td style="font: normal 11px Arial, Helvetica, sans-serif; color: #333; padding: 5px 8px 10px 8px; text-align:left;">
			<ul style="list-style-type:disc;">
				<li>{INF}</li>
				<li>{CHD}</li>
			</ul>
		</td>
	</tr>
	<tr><td class=sub-titulo colspan=2 style="font: normal 11px Arial, Helvetica, sans-serif; color: #333; padding: 5px 8px 10px 8px; text-align:left;"><strong>{_LABEL_OTRAS_REGULACIONES}</strong></td></tr>
	<tr> 
		<td>&nbsp;</td>
		<td style="font: normal 11px Arial, Helvetica, sans-serif; color: #333; padding: 5px 8px 10px 8px; text-align:left;">
			<ul>
				<li>{VALIDEZ}</li>
				<li>{ACUMULA_LANPASS}</li>
				<li>{UPG_LANPASS}</li>
				<li>{RESERVA_ASIENTO}</li>
				<li>{PRECHEQUEO}</li>
			</ul>
		</td>
	</tr>
</table>
