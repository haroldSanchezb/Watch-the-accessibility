{LAYER_ESCALAS}

{*POPUPS_ASIENTOS}
	{POPUP_VER_ASIENTO}
{/POPUPS_ASIENTOS}
<table id="id_tabla_itinerario" cellspacing="0" cellpadding="0" style="border: 1px solid #CCC; margin: 0 auto; margin-top: 15px; margin-bottom: 15px; width:100%;">
  <tr style="height: 26px; background: #DCE0EE; font: 14px Arial, Helvetica, sans-serif; color: #363636; text-align: left;">
    <td colspan="7" style="width: 25%; font-weight: bold; padding: 4px 0 0 5px; border-bottom: 1px solid #ccc;">{_LABEL_ITINERARIO}</td>
  </tr>
  {*HEAD_ITINERARIO}
  <tr style="height: 22px; background: #f3f4f9; font: 11px Arial, Helvetica, sans-serif; color: #003e7e; text-align: left;">
    <td style="font-weight: bold; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">{TRAMO} {*LINK_DETALLE_ESCALA}<a href="javascript:showLightbox_escalas('layer_escalas_{ID_LAYER}');">{_LABEL_MAS_INFO}</a>{/LINK_DETALLE_ESCALA}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px;">{_LABEL_SALIDA}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">&nbsp;</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px;">{_LABEL_LLEGADA}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">&nbsp;</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">{_LABEL_VUELO}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">{_LABEL_CABINA}</td>
  </tr>
  {/HEAD_ITINERARIO}
  {*HEAD2}
  <tr style="height: 22px; background: #f3f4f9; font: 11px Arial, Helvetica, sans-serif; color: #003e7e; text-align: left;">
    <td style="font-weight: bold; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">{TRAMO} {*LINK_DETALLE_ESCALA}<a href="javascript:showLightbox_escalas('layer_escalas_{ID_LAYER}');">{_LABEL_MAS_INFO}</a>{/LINK_DETALLE_ESCALA}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px;">{_LABEL_SALIDA}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">&nbsp;</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px;">{_LABEL_LLEGADA}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">&nbsp;</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">{_LABEL_VUELO}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">{_LABEL_CABINA}</td>
  </tr>
  {/HEAD2}
  {*LINEAS_ITINERARIO}
  <tr style="height: 22px; background: #fff; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left; vertical-align: text-top;">
    <td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #ccc;">{FECHA_SALIDA}&nbsp;</td>
    <td style="font-weight: normal; padding: 4px 0 5px 5px;">{HORA_SALIDA}</td>
    <td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #ccc;">{CIUDAD_ORIGEN} ({CODIGO_AEROPUERTO_ORIGEN})</td>
    <td style="font-weight: normal; padding: 4px 0 5px 5px;">{HORA_LLEGADA} {DIA_LLEGADA}</td>
    <td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #ccc;">{CIUDAD_DESTINO} ({CODIGO_AEROPUERTO_DESTINO})</td>
    <td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #ccc;">{AIRLINE_CODE}{NUMERO_VUELO}<br>
      {OPERADO_POR}</td>
    <td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #ccc;">{CABINA_TXT}-{CLASE}
     </td>
  </tr>
  {/LINEAS_ITINERARIO}
</table>
{LINEAS_MENSAJES}


{INFO_EQUIPAJE_ONEWORLD}

{*MSG_RUTA_LOCAL_BLOQUE}
<p style="font: normal 11px Arial, Helvetica, sans-serif; color: #666; padding: 0 12px 0 12px; text-align:left;">{_MSG_RUTA_LOCAL}</p>
{/MSG_RUTA_LOCAL_BLOQUE}

