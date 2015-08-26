{LAYER_ESCALAS}

{*POPUPS_ASIENTOS}
	{POPUP_VER_ASIENTO}
{/POPUPS_ASIENTOS}
<h4 style="background-color: #033D7D; border: 0 none; color: #FFFFFF; font-size: 1.2em; font-weight: bold; margin: 0px; padding: 6px 4px 6px 8px; font-family:Arial, Helvetica, sans-serif">{_LABEL_ITINERARIO}</h4>
<table id="id_tabla_itinerario" cellspacing="0" cellpadding="0" style="border: 1px solid #CCC; margin: 0 auto; margin-top: 0px; margin-bottom: 15px; width:100%;">
  {*HEAD_ITINERARIO}
  <tr style="height: 22px; background: #f3f4f9; font: 11px Arial, Helvetica, sans-serif; color: #003e7e; text-align: left;">
    <td style="font-weight: bold; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">{TRAMO}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px;">{_LABEL_SALIDA}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">&nbsp;</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px;">{_LABEL_LLEGADA}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">&nbsp;</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">{_LABEL_VUELO}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">{_LABEL_CABINA}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px;">{_LABEL_EQUIPAJE}</td>
  </tr>
  {/HEAD_ITINERARIO}
  {*HEAD2}
  <tr style="height: 22px; background: #f3f4f9; font: 11px Arial, Helvetica, sans-serif; color: #003e7e; text-align: left;">
    <td style="font-weight: bold; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">{TRAMO}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px;">{_LABEL_SALIDA}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">&nbsp;</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px;">{_LABEL_LLEGADA}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">&nbsp;</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">{_LABEL_VUELO}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #ccc;">{_LABEL_CABINA}</td>
    <td style="font-weight: normal; padding: 4px 0 0 5px;">{_LABEL_EQUIPAJE}</td>
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
    <td style="font-weight: normal; padding: 4px 0 5px 5px;">{EQUIPAJE}</td>
  </tr>
  {/LINEAS_ITINERARIO}
</table>

{LINEAS_MENSAJES}
{INFO_EQUIPAJE_ONEWORLD}
{*MSG_RUTA_LOCAL_BLOQUE}
{/MSG_RUTA_LOCAL_BLOQUE}
