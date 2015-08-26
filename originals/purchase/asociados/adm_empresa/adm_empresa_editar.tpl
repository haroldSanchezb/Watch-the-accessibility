<h1>Modificar perfil</h1>

<p>{ERROR}</p>

<form name='ff' action='adm_empresa.cgi' enctype='multipart/form-data' method='POST'>
	<div>
		<input type='hidden' name='accion' value='editar'>
	</div>

	<table class="table" width="100%" cellspacing="0" cellpadding="0">
		<colgroup>
			<col width="25%">
			<col>
		</colgroup>
		<tr> 
			<td class="sub-titulo">{_LABEL_RUT}</td>
			<td> 
				<input type='text' name='rut' value='{RUT}' maxlength='18' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Raz&oacute;n Social</td>
			<td> 
				<input type='text' name='name' value='{NAME}' maxlength='80' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Nombre de Fantas&iacute;a</td>
			<td> 
				<input type='text' name='name_fantasia' value='{NAME_FANTASIA}' maxlength='80' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Giro</td>
			<td> 
				<input type='text' name='giro' value='{GIRO}' maxlength='100' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Direcci&oacute;n</td>
			<td> 
				<input type='text' name='direccion' value='{DIRECCION}' maxlength='100' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Comuna</td>
			<td> 
				<input type='text' name='comuna' value='{COMUNA}' maxlength='30' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Ciudad</td>
			<td> 
				<input type='text' name='ciudad' value='{CIUDAD}' maxlength='30' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Tel&eacute;fono</td>
			<td> 
				<input type='text' name='telefono' value='{TELEFONO}' maxlength='15' class="input">
			</td>
		<tr> 
			<td class="sub-titulo">Fax</td>
			<td> 
				<input type='text' name='fax' value='{FAX}' maxlength='15' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Emisi&oacute;n diferida</td>
			<td> 
				<select name='emision_diferida'>
					<option value='N' {EMISION_DIFERIDA_SELECTED_N}>No</option>
					<option value='Y' {EMISION_DIFERIDA_SELECTED_Y}>S&iacute;</option>
				</select>
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Versi&oacute;n Archivos de interfaz</td>
			<td> 
				<select name='version_air'>
					<option value='205' {VERSION_AIR_205}>205</option>
					<option value='206' {VERSION_AIR_206}>206</option>
				</select>
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Control de acceso a PNRs</td>
			<td> 
				<select name='access_level'>
					<option value='agente' {ACCESS_LEVEL_AGENTE}>agente</option>
					<option value='sucursal' {ACCESS_LEVEL_SUCURSAL}>sucursal</option>
					<option value='empresa' {ACCESS_LEVEL_EMPRESA}>empresa</option>
				</select>
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Logo (imagen 105x48)</td>
			<td> 
				<table class="no-table" width="100%">
					<tr> 
						<td><input type='radio' name='accion_logo' value='mantener' checked> Mantener</td>
						
            <td><img alt='Logo Agencia' src='/images/asociados/logos_agencias/{LOGO_EMPRESA}' width="105" height="48"></td>
					</tr>
					<tr> 
						<td><input type='radio' name='accion_logo' value='cambiar'> Cambiar por </td>
						<td><input type='file' name='archivo_logo'></td>
					</tr>
					<tr> 
						<td><input type='radio' name='accion_logo' value='eliminar'> Eliminar </td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

	<p><input type='submit' value='Aplicar cambios' class="button-page" onfocus="blur()" name="aplicar"></p>

</form>
