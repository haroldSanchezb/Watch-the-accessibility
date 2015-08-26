<h1 class="titulo-principal">Eliminar Agencia</h1>

<form action='/cgi-bin/toolbox/asociados/elimina_agencia.cgi' name='form1'>
<input type='hidden' name='accion' value='eliminar_agencia'>

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
      <option value='{VALUE}' {SELECTED}>{COUNTRY_ISO} {NAME} ({RUT})</option>
      {/AGENCY_OPTION_LIST}
      </select>
    </td>
  </tr>
</table>
<input type='submit' name='go' value='Eliminar' onClick='elimina_agencia(this.form); return false;'>
</form>

<script type="text/javascript">
	function elimina_agencia(form)
		{
		if (!form.id_empresa.value)
			{
			alert('Debe seleccionar una agencia');
			return false;
			}
		
		var msg = 'Esta seguro que desea eliminar la agencia?';
		if (confirm(msg))
			{
			form.submit();
			}

		return false;
		}
		
</script>
