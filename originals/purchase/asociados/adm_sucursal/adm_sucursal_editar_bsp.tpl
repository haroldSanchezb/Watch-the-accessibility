<h1>Modificar sucursal</h1>
  
<form name='ff' action='adm_sucursal.cgi'>
	<div>
		<input type='hidden' name='accion' value='editar'>
		<input type='hidden' name='id_sucursal' value='{ID}'>
		<input type='hidden' name='iata' value='{CODIGO_IATA}'>
	</div>

	<table class="table" width="100%" cellspacing="0" cellpadding="0">
		<colgroup>
			<col>
			<col>
		<colgroup>
		<tr> 
			<td class="sub-titulo">Nombre</td>
			<td>
				<input type='text' name='nombre' value='{NOMBRE}' size='50' maxlength='255' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">C&oacute;digo IATA</td>
			<td>{CODIGO_IATA}</td>
		</tr>
		<tr> 
			<td class="sub-titulo">&nbsp;</td>
			<td>Debido a que la habilitaci&oacute;n 
				para BSP ya fue validada por LAN, no es posible modificar en l&iacute;nea 
				el c&oacute;digo IATA de la Sucursal. Para modificar el c&oacute;digo 
				IATA por favor contacte al Call Center de agencias en el 526 3000. </td>
		</tr>
	</table>

	<p><input type='submit' value='Aplicar cambios' onfocus="blur()" name="aplicar" class="button-page"></p>

</form>
