<h1>Configuraci&oacute;n de Flex Fields</h1>

<script type="text/javascript">

function has_invalid_chars(texto,tipo)
	{
	var i;

	for (i=0; i<texto.length; i++)
		{
		if ( (texto.charAt(i) < '0' || texto.charAt(i) > '9') &&
			(texto.charAt(i) < 'A' || texto.charAt(i) > 'Z') && (texto.charAt(i) < 'a' || texto.charAt(i) > 'z') && 
			(texto.charAt(i) != ' ') &&
			(texto.charAt(i) != '_') &&
			(texto.charAt(i) != '.') &&
			(texto.charAt(i) != ',') &&
			(texto.charAt(i) != '(') &&
			(texto.charAt(i) != ')') &&
			(texto.charAt(i) != '-') &&
			(texto.charAt(i) != '\n') &&
			(texto.charAt(i) != '\r')
			)
			{
			return true;
			}
		}
	return false;
	}


function check_form(f)
	{
	var i;
	for (i=0; i<f.length; i++)
		{
		if (f.elements[i].type == 'text' || f.elements[i].type == 'textarea')
			{
			if (has_invalid_chars(f.elements[i].value,f.elements[i].type))
				{
				alert('Los valores s&oacute;lo pueden contener caracteres en el rango [-_ .,)(a-zA-Z0-9]')
				f.elements[i].focus();
				return false
				}
			}
		}
	return true;
	}
</script>

<form name='form1' id="form1" action='' onSubmit='return(check_form(this))'>
	<div>
		<input type='hidden' name='accion' value='editar'>
	</div>
	
	{*FLEX_FIELDS_ITEMS}
	
	<h4>Campo {NUM_CAMPO}</h4>
	
	<table class="table" width="100%" cellpadding="0" cellspacing="0">
		<tr>
			<td class="sub-titulo">Nombre</td>
			<td>
				<input name='nombre_{SEQ}' type='text' id="nombre_{SEQ}" value='{NOMBRE}' size='30' maxlength='30'>
			</td>
		</tr>
		<tr>
			<td class="sub-titulo">Tipo</td>
			<td>
				<select name='tipo_{SEQ}'>
					<option value='libre' {LIBRE_SELECTED}>Texto libre</option>
					<option value='lista' {LISTA_SELECTED}>Lista de valores</option>
				</select>
			</td>
		</tr>
		<tr>
			<td class="sub-titulo">Valores para la lista</td>
			<td><textarea name='lista_{SEQ}' rows='5' cols='40'>{LISTA}</textarea></td>
		</tr>
	</table>
	{/FLEX_FIELDS_ITEMS}
	
	<p><input class="boton-destacado" type='submit' value='Aplicar cambios' name="aplicar"></p>

</form>
