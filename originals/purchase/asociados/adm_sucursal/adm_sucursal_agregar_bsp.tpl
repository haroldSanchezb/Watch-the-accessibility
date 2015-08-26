<h1>Agregar sucursal</h1>
  
<form name='ff' action='adm_sucursal.cgi'>
	<div>
		<input type='hidden' name='accion' value='agregar'>
		<input type='hidden' name='iata' value='{CODIGO_IATA}'>
	</div>
	
	<table class="table" width="100%" cellspacing="0" cellpadding="0">
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
			<td>{CODIGO_IATA}</td>
		</tr>
		<tr> 
			<td class="sub-titulo">&nbsp;</td>
			<td>Debido a que la habilitaci&oacute;n 
			para BSP ya est&aacute; validada por LAN no es posible crear en l&iacute;nea 
			nuevas sucursales con nuevos c&oacute;digos IATA. Si desea modificar 
			este c&oacute;digo IATA contacte al Call Center de Asociados en el 526 
			3000.</td>
		</tr>
	</table>
	
	<p><input type='submit' value='Agregar' onfocus="blur()" name="aplicar" class="button-page"></p>
	
</form>
