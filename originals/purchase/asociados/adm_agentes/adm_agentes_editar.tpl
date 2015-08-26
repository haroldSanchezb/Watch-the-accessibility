<script type="text/javascript">

function check_form_editar_agente(f)
	{
	if (f.elements['rut'].value.length<=0)
		{
		alert('Debe indicar el RUT')
		f.elements['rut'].focus();
		return false;
		}
	if (f.elements['nombre'].value.length<=0)
		{
		alert('Debe indicar el nombre')
		f.elements['nombre'].focus();
		return false;
		}
	if (f.elements['email'].value.length<=0)
		{
		alert('Debe indicar el email')
		f.elements['email'].focus();
		return false;
		}
	if (f.elements['login'].value.length<=0)
		{
		alert('Debe indicar el login')
		f.elements['login'].focus();
		return false;
		}
	if (f.elements['id_sucursal'].selectedIndex<=0)
		{
		alert('Debe indicar la sucursal')
		f.elements['id_sucursal'].focus();
		return false;
		}
	return true
	}

</script>

<h1>Editar informaci&oacute;n de agente</h1>

<form action='adm_agentes.cgi' onsubmit='return(check_form_editar_agente(this))'>
	<div>
		<input type='hidden' name='accion' value='editar'>
		<input type='hidden' name='id_agente' value='{ID}'>
	</div>
	
	<table class="table" width="100%" cellspacing="0" cellpadding="2">
		<colgroup>
			<col width="25%">
			<col>
		</colgroup>
		<tr> 
			<td class="sub-titulo">{_LABEL_RUT_AGENTE}</td>
			<td> 
				<input type='text' name='rut' value='{RUT}' maxlength='18' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Nombre</td>
			<td> 
				<input type='text' name='nombre' value='{NOMBRE}' maxlength='80' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Email</td>
			<td> 
				<input type='text' name='email' value='{EMAIL}' maxlength='100' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Login</td>
			<td> 
				<input type='text' name='login' value='{LOGIN}' maxlength='20' class="input" readonly>
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Sucursal</td>
			<td> 
				<select name='id_sucursal' class="input">
					<option value=''>Seleccione</option>
					{LISTA_SUCURSALES}
				</select>
			</td>
		</tr>
		{ADMIN_SUCURSAL}
		{ADMIN_EMPRESA}
		{FIRMA_MAESTRA}
		{PUEDE_BSP}
		{PUEDE_EMITIR} 
		{PUEDE_LCA}
		<tr> 
			<td class="sub-titulo">Agent sign-in</td>
			<td> 
				<input type='text' name='agent_signin' value='{AGENT_SIGNIN}' maxlength='9' class="input" {DISABLED_AS}>
			</td>
		</tr>
	</table>
	
	<p><input type='submit' class="boton-destacado" value='Aplicar cambios' onfocus="blur()" name="aplicar"></p>
	
</form>
