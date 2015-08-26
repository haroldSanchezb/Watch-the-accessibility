
{ERROR}

<script	src="/asociados/js/inc.global.js" type="text/javascript"></script> 

<script type="text/javascript">

function has_invalid_chars(texto, tipo)
  {
	var i;
	for (i=0; i<texto.length; i++)
    {
		if ((texto.charAt(i) < '0' || texto.charAt(i) > '9') && (texto.charAt(i) < 'a' || texto.charAt(i) > 'z') && 
			(texto.charAt(i) != '_') && (texto.charAt(i) != '.') )
			{
			return true;
			}
		}
	return false;
	}

function ValidacionFomulario(form)
  {
 	if(!IsRut(form.elements["rut_agente"].value))
    {
		alert('You must enter a valid ID');
		form.elements["rut_agente"].focus();
		return false;
    }
	if (Empty(form.elements["nombre_agente"].value))
    {
		alert('You must enter a name');
		form.elements["nombre_agente"].focus();
		return false;
    }
	//if (!isMail(form.elements["email"].value))
    //{
		//alert('Email invalido');
		//form.elements["email"].focus();
		//return false;
    //}
	if (Empty(form.elements["login_agente"].value))
    {
		alert('You must enter a username');
		form.elements["login_agente"].focus();
		return false;
    }
	if (has_invalid_chars(form.elements["login_agente"].value, form.elements["login_agente"].type))
    {
		alert('You must enter only letters and numbers');
		form.elements["login_agente"].focus();
		return false;
    }
	if (Empty(form.elements["password"].value))
    {
		alert('You must enter a password (8-digit required)');
		form.elements["password"].focus();
		return false;
    }
	if (form.elements["password"].value.length < 8)
    {
    alert('You must enter a valid password');
    form.password.focus();
    return false;
    }
	if (Empty(form.elements["password2"].value))
    {
		alert('You must enter a password (8-digit required)');
		form.elements["password2"].focus();
		return false;
    }
	if (form.elements["password2"].value.length < 8)
    {
    alert('You must enter a valid password');
    form.password2.focus();
    return false;
    }
  if (form.elements["password2"].value != form.elements["password"].value)
    {
    alert('Your confirmation password is incorrect');
    form.password2.focus();
    return false;
    }
  }
</script>

<h1>Travel administrator information</h1>

{DATOS_EMPRESA}

<form name="formulario" method="post" action="inscripcion.cgi" onsubmit="return ValidacionFomulario(this)">
	<div>
		<input type='hidden' name='accion' value='agregar'>
		<input type='hidden' name='id_empresa' value='{ID_EMPRESA}'>
	</div>


	<p>To become an administrator of this company you must enter your name and surname, username and a personal password. Once entered you may become a user of this system.</p>
	
	<table class="table" width="100%" border="0" cellspacing="0" cellpadding="0">
		<colgroup>
			<col width="30%">
			<col>
		</colgroup>
		<tr> 
			<td class="sub-titulo">Travel agent ID</td>
			<td><input name="rut_agente" type="text" class="input" value="{RUT_AGENTE}"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Travel agent name and surname </td>
			<td><input name="nombre_agente" type="text" class="input" value="{NOMBRE_AGENTE}"></td>
		</tr>
		<tr>
			<td class="sub-titulo">e-mail</td>
			<td><input name="email" type="text" class="input" value="{EMAIL}"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Username</td>
			<td><input name="login_agente" type="text" class="input" value="{LOGIN}"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Password (8 digit required)</td>
			<td><input name="password" type="password" class="input"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Confirm password </td>
			<td><input name="password2" type="password" class="input"></td>
			
		</tr>
	</table>

	<p><input name="Submit" type="submit" value="Send">
	</p>

</form>
