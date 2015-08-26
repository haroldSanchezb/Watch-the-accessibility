{*CAJA_RESERVA_TITLE}
<h4>{_LABEL_RESERVA}</h4>
{/CAJA_RESERVA_TITLE}
<table class="table" width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
  <td style='font-size:9pt;'>
  {*BLOQUE_LOGEADO}
  <input type="{TYPO}" name="{NOMBRE_RADIO_RESERVA}" id="id_RESERVA" value="RESERVA" onClick="if({ACTION}){disable_factura_on_reserva(this.form);}" onChange="if({ACTION}){disable_factura_on_reserva(this.form);}">
  <label for='id_RESERVA'>{_FORMA_PAGO_RESERVA}</label> {MSG_ASISTENCIA}
  {/BLOQUE_LOGEADO}
  
  {*BLOQUE_NO_LOGEADO}
  {_MSG_NO_LOGEADO_CAJA_RESERVA} <a title="{_LABEL_RESERVA}" href="javascript:showLightbox_reserva('caja_reserva');">{_MSG_NO_LOGEADO_CAJA_RESERVA_CONTINUACION}</a> 
  {/BLOQUE_NO_LOGEADO}
  </td>
 </tr>
</table>

