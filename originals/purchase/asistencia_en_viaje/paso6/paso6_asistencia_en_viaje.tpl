{*TRAVEL_ASSIST}
	<h4>{_TITULO_TARIFA_ASISTENCIA_TABLA} {_IMG_ASISTENCIA_VIAJE}</h4>
{/TRAVEL_ASSIST}
{*PERU}
	<h4>{_TITULO_TARIFA_ASISTENCIA_TABLA} <img src="/images/asistencia_viaje/logo-seguros-68x23.gif" width="50" height="19" alt="Seguros Pacifico"></h4>
{/PERU}	
<table class="table" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th>{_LABEL_ASISTENCIA_NOMBRE_PRODUCTO}</th>
    <th>{_LABEL_ASISTENCIA_TIPO_PLAN}</th>
    <th>{_LABEL_ASISTENCIA_INTEGRANTES}</th>
    <th>{_LABEL_ASISTENCIA_POLIZA}</th>
  </tr>
  <tr>
    <td>{NOMBRE_PRODUCTO}</a></td>
    <td>{TIPO_PLAN}</td>
    <td>{INTEGRANTES}</td>
    <td><a href="{LINK_VER_POLIZA}">{NRO_POLIZA}</a></td>
  </tr>
    <tr>
		<td colspan="4">
			<label for= "label_asistencia_en_viajes">{_LABEL_ASISTENCIA_TERMINOS_DECLARO}</label>
			<a href="javascript:MM_openBrWindow('/cgi-bin/compra/terminos_y_condiciones.cgi?tipo_producto={TIPO_PRODUCTO}','','location=no,scrollbars=yes,width=750, height=520 ,screenX=0,screenY=0');">{_MSG_CONDICIONES_MHS_2}</a> 
			<label for= "label_asistencia_en_viajes">{_LABEL_ASISTENCIA_TERMINOS_PLAN}</label>
		</td>
	</tr>
</table>
<br>