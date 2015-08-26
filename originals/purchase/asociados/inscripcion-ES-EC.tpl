
{ERROR}

<script	src="/asociados/js/inc.global.js" type="text/javascript"></script> 

<script type="text/javascript">

function has_invalid_chars(texto, tipo)
  {
	var i;
	for (i=0; i<texto.length; i++)
    {
		if ((texto.charAt(i) < '0' || texto.charAt(i) > '9') && (texto.charAt(i) < 'a' || texto.charAt(i) > 'z') && 
			(texto.charAt(i) != ' ') && (texto.charAt(i) != '_') && (texto.charAt(i) != '.') && (texto.charAt(i) != ',') &&
			(texto.charAt(i) != '(') && (texto.charAt(i) != ')') && (texto.charAt(i) != '-') && (texto.charAt(i) != '\n') &&
			(texto.charAt(i) != '\r'))
			{
			return true;
			}
		}
	return false;
	}

function ValidacionFomulario(form)
  {
 	if (Empty(form.elements["nombre_agente"].value))
    {
		alert('Debe ingresar su nombre');
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
		alert('Debe ingresar un nombre de usuario');
		form.elements["login_agente"].focus();
		return false;
    }
	if (has_invalid_chars(form.elements["login_agente"].value, form.elements["login_agente"].type))
    {
		alert('Los valores solo pueden contener caracteres en minusculas y numeros');
		form.elements["login_agente"].focus();
		return false;
    }
	if (Empty(form.elements["password"].value))
    {
		alert('Debe ingresar una clave (minimo 8 caracteres)');
		form.elements["password"].focus();
		return false;
    }
	if (form.elements["password"].value.length < 8)
    {
    alert('Su Password debe tener al menos 8 caracteres');
    form.password.focus();
    return false;
    }
	if (Empty(form.elements["password2"].value))
    {
		alert('Debe ingresar una clave (minimo 8 caracteres)');
		form.elements["password2"].focus();
		return false;
    }
	if (form.elements["password2"].value.length < 8)
    {
    alert('Su Password debe tener al menos 8 caracteres');
    form.password2.focus();
    return false;
    }
  if (form.elements["password2"].value != form.elements["password"].value)
    {
    alert('El pasword de confirmacion es incorrecto.');
    form.password2.focus();
    return false;
    }
  }
</script>

<h1>Datos del nuevo Administrador de la empresa</h1>

{DATOS_EMPRESA}

<form name="formulario" method="post" action="inscripcion.cgi" onsubmit="return ValidacionFomulario(this)">
	<div>
		<input type='hidden' name='accion' value='agregar'>
		<input type='hidden' name='id_empresa' value='{ID_EMPRESA}'>
	</div>


	
  <p>Para quedar habilitado como un Administrador de esta empresa debe digitar 
    su nombre completo, un nombre de usuario y una clave secreta personal. Una 
    vez registrada la informaci&oacute;n podr&aacute; ingresar a nuestro sistema. 
   </p>
	
	<table class="table" width="100%" border="0" cellspacing="0" cellpadding="0">
		<colgroup>
			<col width="30%">
			<col>
		</colgroup>
		<tr> 
			
      <td class="sub-titulo">CI del agente de ventas</td>
			<td><input name="rut_agente" type="text" class="input" value="{RUT_AGENTE}"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Nombre completo del agente de ventas</td>
			<td><input name="nombre_agente" type="text" class="input" value="{NOMBRE_AGENTE}"></td>
		</tr>
		<tr>
			<td class="sub-titulo">e-mail</td>
			<td><input name="email" type="text" class="input" value="{EMAIL}"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Nombre de usuario</td>
			<td><input name="login_agente" type="text" class="input" value="{LOGIN}"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Clave (m&iacute;nimo 8 caracteres)</td>
			<td><input name="password" type="password" class="input"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Confirmar clave</td>
			<td><input name="password2" type="password" class="input"></td>
			
		</tr>
	</table>

	<p><input name="Submit" type="submit" value="Enviar"></p>

</form>
