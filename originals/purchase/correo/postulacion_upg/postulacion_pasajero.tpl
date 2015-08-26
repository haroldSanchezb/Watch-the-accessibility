<table cellspacing="0" cellpadding="0" style="width: 100%; border: 1px solid #CCCCCC; margin:0 auto;">
<tr style="background: #F3F4F9; font: 11px Arial, Helvetica, sans-serif;">
<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_PASAJERO} </td>
<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_SEGMENTO}</td>
<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_CODIGO_RESERVA}</td>
<td style="font-weight: normal; padding: 4px 10px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: right;">{_LABEL_UPG_CABINA_POSTULAR}</td>
<td style="font-weight: normal; padding: 4px 10px 0 5px; color: #003e7e; text-align: right;">{_LABEL_UPG_CUPONES_REQUERIDOS_PASAJEROS}</td>
</tr>
{*LINEA_PASAJERO}
	<tr style="background: #fff; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left; vertical-align: text-top;">
	<td rowspan="{N_SEGMENTOS}" style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{NOMBRE} {APELLIDO} {LABEL_TITULAR}</td>
	<td style="font-weight: normal; padding: 4px 5px 5px 5px; border-right: 1px solid #CCCCCC;">{ORIGEN} - {DESTINO} </td>
	<td style="font-weight: normal; padding: 4px 5px 5px 5px; border-right: 1px solid #CCCCCC;">{PNR}</td>
	<td style="font-weight: normal; padding: 4px 10px 5px 5px; border-right: 1px solid #CCCCCC;">{CABINA_UPG}</td>
	<td style="font-weight: normal; padding: 4px 10px 5px 5px; text-align:right; ">{NUM_CUPONES}</td>
	</tr>
	{SEGMENTOS}
{/LINEA_PASAJERO}	
</table>

{*SEGMENTOS_PASAJERO}
	<tr style="background: #fff; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left; vertical-align: text-top;">
	<td style="font-weight: normal; padding: 4px 5px 5px 5px; border-right: 1px solid #CCCCCC;">{ORIGEN} - {DESTINO} </td>
	<td style="font-weight: normal; padding: 4px 5px 5px 5px; border-right: 1px solid #CCCCCC;">{PNR}</td>
	<td style="font-weight: normal; padding: 4px 10px 5px 5px; border-right: 1px solid #CCCCCC;">{CABINA_UPG}</td>
	<td style="font-weight: normal; padding: 4px 10px 5px 5px; text-align:right;">{NUM_CUPONES}</td>
	</tr>
{/SEGMENTOS_PASAJERO}

