<h1>Modify profile </h1>

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
			<td class="sub-titulo">ID</td>
			<td> 
				<input type='text' name='rut' value='{RUT}' maxlength='18' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Name</td>
			<td> 
				<input type='text' name='name' value='{NAME}' maxlength='80' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Company Name </td>
			<td> 
				<input type='text' name='name_fantasia' value='{NAME_FANTASIA}' maxlength='80' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Services</td>
			<td> 
				<input type='text' name='giro' value='{GIRO}' maxlength='100' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Address</td>
			<td> 
				<input type='text' name='direccion' value='{DIRECCION}' maxlength='100' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">State</td>
			<td> 
				<input type='text' name='comuna' value='{COMUNA}' maxlength='30' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">City</td>
			<td> 
				<input type='text' name='ciudad' value='{CIUDAD}' maxlength='30' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Telephone</td>
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
			<td class="sub-titulo">Differed issuing </td>
			<td> 
				<select name='emision_diferida'>
					<option value='N' {EMISION_DIFERIDA_SELECTED_N}>No</option>
					<option value='Y' {EMISION_DIFERIDA_SELECTED_Y}>Yes</option>
				</select>
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Interface archives </td>
			<td> 
				<select name='version_air'>
					<option value='205' {VERSION_AIR_205}>205</option>
					<option value='206' {VERSION_AIR_206}>206</option>
				</select>
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Access to  PNRs</td>
			<td> 
				<select name='access_level'>
					<option value='agente' {ACCESS_LEVEL_AGENTE}>agente</option>
					<option value='sucursal' {ACCESS_LEVEL_SUCURSAL}>sucursal</option>
					<option value='empresa' {ACCESS_LEVEL_EMPRESA}>empresa</option>
				</select>
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Logo (105x48)</td>
			<td> 
				<table class="no-table" width="100%">
					<tr> 
						<td><input type='radio' name='accion_logo' value='mantener' checked> 
						Keep </td>
						
                        <td><img alt='Logo Agencia' src='/images/asociados/logos_agencias/{LOGO_EMPRESA}' width="105" height="48"></td>
					</tr>
					<tr> 
						<td><input type='radio' name='accion_logo' value='cambiar'> 
						Change </td>
						<td><input type='file' name='archivo_logo'></td>
					</tr>
					<tr> 
						<td><input type='radio' name='accion_logo' value='eliminar'> 
						Erase </td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

	<p><input type='submit' value='Apply changes' class="button-page" onfocus="blur()" name="aplicar">
	</p>

</form>
