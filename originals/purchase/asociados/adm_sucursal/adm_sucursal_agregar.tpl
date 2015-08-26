<h1>Agregar sucursal</h1>
  
<form name='ff' action='adm_sucursal.cgi'>
	<div>
		<input type='hidden' name='accion' value='agregar'>
	</div>
	
	<table class="table" width="100%" cellspacing="0" cellpadding="2">
		<colgroup>
			<col width="25%">
			<col>
		</colgroup>
		<tr> 
			<td class="sub-titulo">Nombre</td>
			<td>
				<input type='text' name='nombre' value='{NOMBRE}' maxlength='255' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">C&oacute;digo IATA</td>
			<td>
				<input type='text' name='iata' value='{CODIGO_IATA}' maxlength='255' class="input">
			</td>
		</tr>
	</table>
	
	<p><input type='submit' value='Agregar' class="button-page" onfocus="blur()" name="agregar"></p>
	
</form>
