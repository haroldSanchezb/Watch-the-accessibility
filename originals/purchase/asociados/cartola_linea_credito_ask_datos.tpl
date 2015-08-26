<h1 class="titulo-principal">Cartola l&iacute;nea de cr&eacute;dito</h1>

<form action='/cgi-bin/toolbox/cartola_linea_credito.cgi' name='cartola'>
<input type='hidden' name='accion' value='results'>
<table border='0' cellpadding="2">
  <tr class="item-fondo-gris">
    <th>Pa&iacute;s</th>
    <td><select name='country_iso' onChange="this.form.accion.value='ask_datos'; this.form.submit();">
      <option value=''>Seleccione</option>
      {*COUNTRY_OPTION_LIST}
      <option value='{VALUE}' {SELECTED}>{NAME}</option>
      {/COUNTRY_OPTION_LIST}
      </select>
    </td>
  </tr>
  <tr class="item-fondo-gris">
    <th>Agencia</th>
    <td><select name='id_empresa'>
      <option value=''>Seleccione</option>
      {*AGENCY_OPTION_LIST}
      <option value='{VALUE}' {SELECTED}>{NAME} ({RUT})</option>
      {/AGENCY_OPTION_LIST}
      </select>
    </td>
  </tr>
  <tr class="item-fondo-gris">
    <th>Desde</th>
    <td>
		{+CALENDARIO(nc='1', fecha_iso_desde='2005-01-01', fecha_iso_hasta='2010-01-01', fecha_iso_inicio='2005-01-01', pedir_hora=1)}
		(Hora local)
    </td>
  </tr>
  <tr class="item-fondo-gris">
    <th>Hasta</th>
    <td>
		{+CALENDARIO(nc='2', fecha_iso_desde='2005-01-01', fecha_iso_hasta='2010-01-01', fecha_iso_inicio='2005-01-01', pedir_hora=1)}
		(Hora local)
    </td>
  </tr>
</table>
<input type='submit' name='go' value='Seguir'>
</form>
