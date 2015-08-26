
<h4>Datos extra</h4>

<table class="table" width="100%">
	<colgroup>
		<col>
		<col width="85%">
	</colgroup>
	{*FIELD}
	<tr>
		<td style="white-space: nowrap;">{NOMBRE}</td>
		<td>
			{*LISTA}
			<select class="combo-box" name="{NAME}">
				<option value="">Seleccione</option>
				{*SELECT_OPTIONS}
				<option value="{VALUE}"{SELECTED}>{VALUE}</option>
				{/SELECT_OPTIONS}
			</select>
			{/LISTA}
			{*TEXTO}
				<input type="text" name="{NAME}" size='30' maxlength='30'>
			{/TEXTO}
		</td>
	</tr>
	{/FIELD}
</table>
