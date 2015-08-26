
<h1>Buscar reserva</h1>

<table class="table" width="100%" cellpadding="0" cellspacing="0">
  <tr> 
    <th>PNR</th>
    <th>PAX</th>
    <th>Fecha de vuelo</th>
    <th>Origen / Destino</th>
    <th>Forma <br>
      de Pago</th>
    <th>Acciones</th>
    <th>Time<br>
      Limit</th>
  </tr>
  {*DETALLE} 
  <tr> 
    <td style="white-space: nowrap;"><a href='/cgi-bin/asociados/edit_pnr.cgi?pnr={PNR}'>{PNR}</a></td>
    <td style="white-space: nowrap;">{PAX}</td>
    <td style="white-space: nowrap;">{FECHA_VENTA}</td>
    <td style="white-space: nowrap;">{FROM_CITY}/{TO_CITY}</td>
    <td style="white-space: nowrap;">{PNR_FP}{*TKT_VOID}/Etkt void{/TKT_VOID}</td>
    <td style="white-space: nowrap;"> <a href='/cgi-bin/asociados/ied.cgi?pnr={PNR}&mp;id_venta={ID_VENTA}'>Itinerario</a> 
      {*EMITIR}<br>
      <a href=emitereserva.html?accion=emitir&amp;base%5Brl1a%5D={PNR}&amp;Submit=Emitir>Emitir 
      reserva</a>{/EMITIR} {*CHECKIN}<br>
      <a href='/cgi-bin/checkinweb/paso2.cgi?tipo_busqueda=pnr&amp;rl1a={PNR}'>Checkin</a>{/CHECKIN} 
      <br>
      <a href='/cgi-bin/asociados/pnr_history.cgi?pnr={PNR}'>Historia del PNR</a> 
    </td>
    <td style="white-space: nowrap;"> <a href='/cgi-bin/asociados/adm_aviso_tl.cgi?id_venta={ID_VENTA}&amp;accion=mostrar'>Recordar 
      TL</a> </td>
  </tr>
  {/DETALLE} 
</table>

{MSG}

