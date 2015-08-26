
<tr>
	<td class="sub-titulo">Firma Maestra</td>
	<td>
		<select name='firma_maestra' onChange='firma_maestra_update_combos(this.form)'>
			<option value='N' {SELECTED_N}>No</option>
			<option value='Y' {SELECTED_Y}>S&iacute;</option>
		</select>
	</td>
</tr>
<script type="text/javascript">

function firma_maestra_update_combos(f)
	{
	if (f.firma_maestra.value == 'Y')
		{
		if (f.admin_empresa && f.admin_empresa.value == 'Y')
			{
			f.admin_empresa.value = 'N';
			}
		if (f.admin_sucursal && f.admin_sucursal.value == 'Y')
			{
			f.admin_sucursal.value = 'N';
			}
		}
	}

</script>
