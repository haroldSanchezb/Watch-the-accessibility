<h1> Modify agency</h1>
  
<form name='ff' action='adm_sucursal.cgi'>
	<div>
		<input type='hidden' name='accion' value='editar'>
		<input type='hidden' name='id_sucursal' value='{ID}'>
	</div>
	
	<table class="table" width="100%" cellspacing="0" cellpadding="0">
		<tr> 
			<td class="sub-titulo">Name</td>
			<td>
				<input type='text' name='nombre' value='{NOMBRE}' size='50' maxlength='255' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">IATA Code </td>
			<td>
				<input type='text' name='iata' value='{CODIGO_IATA}' size='50' maxlength='255' class="input">
			</td>
		</tr>
	</table>

	<p><input type='submit' value='Apply changes' class="button-page" onfocus="blur()" name="aplicar">
	</p>

</form>
