<!--
  <tr>
    <td class="sub-titulo" colspan="8" style="padding-left:8px; padding-bottom:2px; padding-top:2px;">{PAX_TYPE_TXT}&nbsp;{PAX_SELECT}</td>
  </tr>
-->
  <tr>
    <th colspan="8">{_LABEL_FECHA_NACIMIENTO}</th>
  </tr>
  <tr>
    <td colspan="8" id="id_fecha_nacimiento_{PAX_TYPE}_{NUM_PAX}">
{+COMBO_FECHA(fecha_desde='{FROM_DATE}', fecha_hasta='', fecha_default='{BIRTHDATE}', nombre_base='pax_{PAX_TYPE}_{NUM_PAX}_fecha_nacimiento', tipo='past', search='0', split_mesano='1', venta_asistencia='0')}
    </td>
  </tr>

