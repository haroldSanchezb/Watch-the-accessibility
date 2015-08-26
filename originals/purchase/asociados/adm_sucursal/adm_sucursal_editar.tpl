<h1> Modificar sucursal</h1>
  
<form name='ff' action='adm_sucursal.cgi'>
	<div>
		<input type='hidden' name='accion' value='editar'>
		<input type='hidden' name='id_sucursal' value='{ID}'>
	</div>
	
	<table class="table" width="100%" cellspacing="0" cellpadding="0">
		<tr> 
			<td class="sub-titulo">Nombre</td>
			<td>
				<input type='text' name='nombre' value='{NOMBRE}' size='50' maxlength='255' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">C&oacute;digo IATA</td>
			<td>
				<input type='text' name='iata' value='{CODIGO_IATA}' size='50' maxlength='255' class="input">
			</td>
		</tr>
	</table>

	<p><input type='submit' value='Aplicar cambios' class="button-page" onfocus="blur()" name="aplicar"></p>

</form>
