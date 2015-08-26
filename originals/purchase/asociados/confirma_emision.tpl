<p><H1>Listado de viajes</H1></p>

        
<table width="100%"  border="1" cellspacing="0" cellpadding="3"> 
  <tr> 
	<th>&nbsp;</th>
    <th class="txt-tablas-bco" scope="col">Fecha</th> 
    <th class="txt-tablas-bco" scope="col">C&oacute;digo de reserva</th> 
    <th class="txt-tablas-bco" scope="col">Routing</th> 
  </tr> 
  {*FILA_VIAJE}
  <tr class="contenido-tablas-datos"> 
	<td width="150" align="center"><a class='sin-underline' href="javascript:location.search='?accion=emitir&id_venta={ID_VENTA}'">Emitir</a></td>
    <td>&nbsp;{FECHA}</td> 
    <td>&nbsp;{PNR}</td> 
    <td>&nbsp;{ROUTING}</td> 
  </tr> 
  {/FILA_VIAJE}
</table>
