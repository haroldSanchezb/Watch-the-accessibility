{*POPUPS_ASIENTOS}
	{POPUP_VER_ASIENTO}
{/POPUPS_ASIENTOS}
<table cellspacing="0" cellpadding="0" style="width: 600px; border: 1px solid #CCC; margin: 0 auto; margin-top: 15px; margin-bottom: 15px;">
  <tr style="background: #DCE0EE; font: 14px Arial, Helvetica, sans-serif; color: #363636; text-align: left;">
    <td colspan="7" style="font-weight: bold; padding: 4px 0 0 5px; border-bottom: 1px solid #ccc; background: #DCE0EE;">{_LABEL_ITINERARIO}</td>
  </tr>
  {*HEAD_ITINERARIO}
  <tr>
    <td style="font-weight: bold; padding: 4px 2px 3px 5px; border-right: 1px solid #ccc; background-color:#f3f4f9; font: 11px Arial, Helvetica, sans-serif; color: #003e7e; text-align: left;">{TRAMO}</td>
    <td style="padding: 4px 2px 3px 5px; border-right: 1px solid #ccc; background-color:#f3f4f9; font: 11px Arial, Helvetica, sans-serif; color: #003e7e; text-align: left;">{_LABEL_SALIDA}</td>
    <td style="padding: 4px 2px 3px 5px; border-right: 1px solid #ccc; background-color:#f3f4f9; font: 11px Arial, Helvetica, sans-serif; color: #003e7e; text-align: left;">&nbsp;</td>
    <td style="padding: 4px 2px 3px 5px; border-right: 1px solid #ccc; background-color:#f3f4f9; font: 11px Arial, Helvetica, sans-serif; color: #003e7e; text-align: left;">{_LABEL_LLEGADA}</td>
    <td style="padding: 4px 2px 3px 5px; border-right: 1px solid #ccc; background-color:#f3f4f9; font: 11px Arial, Helvetica, sans-serif; color: #003e7e; text-align: left;">&nbsp;</td>
    <td style="padding: 4px 2px 3px 5px; border-right: 1px solid #ccc; background-color:#f3f4f9; font: 11px Arial, Helvetica, sans-serif; color: #003e7e; text-align: left;">{_LABEL_VUELO}</td>
    <td style="padding: 4px 2px 3px 5px; border-right: 1px solid #ccc; background-color:#f3f4f9; font: 11px Arial, Helvetica, sans-serif; color: #003e7e; text-align: left;">{_LABEL_CABINA}</td>
  </tr>
  {/HEAD_ITINERARIO}
  <!--{*HEAD2}
  <tr style="height: 22px; background: #f3f4f9; font: 11px Arial, Helvetica, sans-serif; color: #003e7e; text-align: left;">
    <td style="font-weight: bold; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">{TRAMO}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px;">{_LABEL_SALIDA}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">&nbsp;</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px;">{_LABEL_LLEGADA}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">&nbsp;</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">{_LABEL_VUELO}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">{_LABEL_CABINA}</td>
  </tr>
  {/HEAD2}-->
  {*LINEAS_ITINERARIO}
  <tr>
    <td style="padding: 4px 2px 3px 5px; border-right: 1px solid #ccc; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left;">{FECHA_SALIDA}</td>
    <td style="padding: 4px 2px 3px 5px; border-right: 1px solid #ccc; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left;">{HORA_SALIDA}</td>
    <td style="padding: 4px 2px 3px 5px; border-right: 1px solid #ccc; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left;">{CIUDAD_ORIGEN} ({CODIGO_AEROPUERTO_ORIGEN})</td>
    <td style="padding: 4px 2px 3px 5px; border-right: 1px solid #ccc; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left;">{HORA_LLEGADA} {DIA_LLEGADA}</td>
    <td style="padding: 4px 2px 3px 5px; border-right: 1px solid #ccc; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left;">{CIUDAD_DESTINO} ({CODIGO_AEROPUERTO_DESTINO})</td>
    <td style="padding: 4px 2px 3px 5px; border-right: 1px solid #ccc; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left;">{AIRLINE_CODE}{NUMERO_VUELO}<br>
      {OPERADO_POR}</td>
    <td style="padding: 4px 2px 3px 5px; border-right: 1px solid #ccc; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left;">{CABINA_TXT}-{CLASE}
      {*LINKS_VER_ASIENTO}
      {/LINKS_VER_ASIENTO}</td>
  </tr>
  {/LINEAS_ITINERARIO}
</table>
<p style="padding: 0 12px 0 12px; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left;">{LINEAS_MENSAJES}</p>
<p style="font: normal 10px Arial, Helvetica, sans-serif; color: #666; padding: 0 12px 0 12px; text-align:left;">{_MSG_RUTA_LOCAL}</p>
