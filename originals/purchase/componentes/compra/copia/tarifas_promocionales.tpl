<div id="asistencia">
<h3>{_LABEL_BUSCADOR_TARIFA_ECONOMICA}</h3>
<table id='tabla_promociones' width="100%" border="0" cellspacing="0" cellpadding="0" class="buscador_tarifas">
  <tr style="margin:0px; padding: 0px;">
    <td style="width:15%; padding: 10px 0px 0px 0px; margin:0px; text-align:center;"><img width="74" height="74" src='http://www.lan.com/images/common/icono_tarifa_economica.gif' alt='' border='0' ></td>
    <td style="width:85%; padding:0px; margin:0px; vertical-align:top;"><table width="100%" border="0" cellspacing="0" cellpadding="0" >
      <tr>
        <td><p>{_MSG_BUSCADOR_TARIFA_1}</p></td>
      </tr>
      <tr>
        <td style="padding:0px 15px 0px 15px;"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="listado_tarifas">
  <tr>
  {*BLOQUE_FILA_PROMOCION}
    	<td style="padding:5px;"><a id='link_promocion_{ID_PROMOCION}' href="javascript:check_and_submit_tarifas_promocionales('form_tarifas_promocionales' , '{ID_PROMOCION}', '{FECHA_CALENDARIO_IDA}', '{FECHA_CALENDARIO_VUELTA}', '{ID_FAREBASIS_TARIFA_PROMOCIONAL}')">{TARIFA}</a></td>
	<td style="background-color:#FFFFFF; border:1px solid #FFFFFF; width:15px;">&nbsp;</td>
 
	{/BLOQUE_FILA_PROMOCION}
  </tr>
</table></td>
      </tr>
    </table></td>
  </tr>
</table>

</div>




