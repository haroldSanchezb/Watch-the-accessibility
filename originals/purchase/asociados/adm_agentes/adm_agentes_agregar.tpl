<script type="text/javascript">
 
function has_invalid_chars(texto, tipo)
	{
	var i;
	for (i=0; i<texto.length; i++)
		{
		if ((texto.charAt(i) < '0' || texto.charAt(i) > '9') && (texto.charAt(i) < 'a' || texto.charAt(i) > 'z') && (texto.charAt(i) != ' ') && (texto.charAt(i) != '_') && (texto.charAt(i) != '.') && (texto.charAt(i) != ',') && (texto.charAt(i) != '(') && (texto.charAt(i) != ')') && (texto.charAt(i) != '-') && (texto.charAt(i) != '\n') && (texto.charAt(i) != '\r'))
			{
			return true;
			}
		}
		return false;
	}

function check_form_agregar_agente(f)
	{
	if (f.elements['rut'].value.length<=0)
		{
		alert('Debe indicar el DNI')
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

	if (has_invalid_chars(f.elements['login'].value, f.elements['login'].type))
		{
		alert('Los valores solo pueden contener caracteres en minusculas y numeros');
		f.elements['login'].focus();
		return false;
		}

	if (f.elements['passwd'].value.length<=0)
		{
		alert('Debe indicar la contrasena')
		f.elements['passwd'].focus();
		return false;
		}
	if (f.elements['passwd'].value != f.elements['passwd2'].value)
		{
		alert('Las contrasenas no coinciden')
		f.elements['passwd'].focus();
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

<h1>Agregar agente</h1>


<form action='adm_agentes.cgi' onsubmit='return(check_form_agregar_agente(this))'>
	<div>
		<input type='hidden' name='accion' value='agregar'>
	</div>

<table class="table" width="100%" cellspacing="0" cellpadding="2">
	<colgroup>
		<col width="25%">
		<col>
	</colgroup>
	<tr> 
		<td class="sub-titulo">DNI</td>
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
			<input type='text' name='login' value='{LOGIN}' maxlength='20' class="input">
		</td>
	</tr>
	<tr> 
		<td class="sub-titulo">Contrase&ntilde;a</td>
		<td> 
			<input type='password' name='passwd' class="input">
		</td>
	</tr>
	<tr> 
		<td class="sub-titulo">Repetir contrase&ntilde;a</td>
		<td> 
			<input type='password' name='passwd2' class="input">
		</td>
	</tr>
	<tr> 
		<td class="sub-titulo">Sucursal</td>
		<td> 
			<select name='id_sucursal'>
				<option value=''>Seleccione</option>
				{LISTA_SUCURSALES}
			</select>
		</td>
	</tr>
	{ADMIN_SUCURSAL}
	{ADMIN_EMPRESA}
	{FIRMA_MAESTRA}
</table>

<p><input type='submit' class="boton-destacado" value='Agregar' onfocus="blur()" name="agregar"></p>

</form>
