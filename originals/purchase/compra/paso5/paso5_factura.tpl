<script type="text/javascript">
 function valida_factura(form)
 	{
 	var errores = '';
	
	change_bg_for_id('id_factura_razon_social', 'ok');
	change_bg_for_id('id_factura_rut', 'ok');
	change_bg_for_id('id_factura_direccion_legal', 'ok');
	change_bg_for_id('id_factura_comuna', 'ok');
	change_bg_for_id('id_factura_giro', 'ok');
	change_bg_for_id('id_factura_telefono', 'ok');
	change_bg_for_id('id_factura_nombre_envio', 'ok');
	change_bg_for_id('id_factura_direccion_envio', 'ok');
	change_bg_for_id('id_factura_comuna_envio', 'ok');
	change_bg_for_id('id_factura_ciudad_envio', 'ok');
	
 	if (Empty(form.elements["factura_razon_social"].value))
 		{
		change_bg_for_id('id_factura_razon_social', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_RAZON_SOCIAL_EMPRESA_JS}\n';
 		}
	else if(valida_largo_minimo(form.elements["factura_razon_social"].value))
		{
		change_bg_for_id('id_factura_razon_social', 'dato-erroneo');
		errores += '--> {_ERROR_LARGO_MINIMO_RAZON_SOCIAL_EMPRESA_JS}\n';
		}
	else if (!valida_razon_social(form.elements["factura_razon_social"].value))
		{
		change_bg_for_id('id_factura_razon_social', 'dato-erroneo');
		errores += '--> {_ERROR_FORMATO_RAZON_SOCIAL_EMPRESA_JS}\n'; 
		}
	if (valida_largo_rut(form.elements["factura_rut"].value))
		{
  		if(!IsRut(form.elements["factura_rut"].value))
 			{
			change_bg_for_id('id_factura_rut', 'dato-erroneo');
 			errores += '--> {_ERROR_INGRESAR_RUT_VALIDO_EMPRESA_JS}\n';
 			}
		}
	else
		{
		change_bg_for_id('id_factura_rut', 'dato-erroneo');
		errores += '--> {_ERROR_LARGO_RUT_VALIDO_EMPRESA_JS}\n';
		}
	
 	if (Empty(form.elements["factura_direccion_legal"].value))
 		{
		change_bg_for_id('id_factura_direccion_legal', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_DIRECCION_EMPRESA_JS}\n';
 		}
 	else if(valida_largo_minimo(form.elements["factura_direccion_legal"].value))
		{
		change_bg_for_id('id_factura_direccion_legal', 'dato-erroneo');
		errores += '--> {_ERROR_LARGO_MINIMO_DIRECCION_EMPRESA_JS}\n';
		}
 
 	if (Empty(form.elements["factura_comuna"].value))
 		{
		change_bg_for_id('id_factura_comuna', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_COMUNA_JS}\n';
 		}
	else if(valida_largo_minimo(form.elements["factura_comuna"].value))
		{
		change_bg_for_id('id_factura_comuna', 'dato-erroneo');
		errores += '--> {_ERROR_LARGO_MINIMO_COMUNA_JS}\n';
		}

 	if (Empty(form.elements["factura_giro"].value))
 		{
		change_bg_for_id('id_factura_giro', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_GIRO_EMPRESA_JS}\n';
 		}
	else if(valida_largo_minimo(form.elements["factura_giro"].value))
		{
		change_bg_for_id('id_factura_giro', 'dato-erroneo');
		errores += '--> {_ERROR_LARGO_MINIMO_GIRO_EMPRESA_JS}\n';
		}
		
	if (!Empty(form.elements["factura_telefono"].value))
		{
 		if (!isInteger(form.elements["factura_telefono"].value))
 			{
			change_bg_for_id('id_factura_telefono', 'dato-erroneo');
 			errores += '--> {_ERROR_INGRESAR_TELEFONO_EMPRESA_JS}\n';
 			}
		else if(valida_largo_minimo(form.elements["factura_telefono"].value))
			{
			change_bg_for_id('id_factura_telefono', 'dato-erroneo');
			errores += '--> {_ERROR_LARGO_MINIMO_TELEFONO_EMPRESA_JS}\n';
			}
		}
	else
		{
		change_bg_for_id('id_factura_telefono', 'dato-erroneo');
		errores += '--> {_ERROR_INGRESAR_TELEFONO_EMPRESA_JS}\n';
		}
 
 	if (Empty(form.elements["factura_nombre_envio"].value))
 		{
		change_bg_for_id('id_factura_nombre_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_NOMBRE_PARA_ENVIAR_FACTURA_JS}\n';
 		}
	else if (valida_largo_minimo(form.elements["factura_nombre_envio"].value))
		{
		change_bg_for_id('id_factura_nombre_envio', 'dato-erroneo');
		errores += '--> {_ERROR_LARGO_MINIMO_NOMBRE_PARA_ENVIAR_FACTURA_JS}\n';
		}
 
 	if (Empty(form.elements["factura_direccion_envio"].value))
 		{
		change_bg_for_id('id_factura_direccion_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_DIRECCION_PARA_ENVIAR_FACTURA_JS}\n';
 		}
	else if (valida_largo_minimo(form.elements["factura_direccion_envio"].value))
		{
		change_bg_for_id('id_factura_direccion_envio', 'dato-erroneo');
		errores += '--> {_ERROR_LARGO_MINIMO_DIRECCION_PARA_ENVIAR_FACTURA_JS}\n';
		}
	else if (form.elements["factura_direccion_envio"].value.match(/casilla/i))
		{
		change_bg_for_id('id_factura_direccion_envio', 'dato-erroneo');
		errores += '--> {_ERROR_INGRESAR_DIRECCION_ENVIO_CON_CASILLA_JS}\n';
		}
	
 	if (Empty(form.elements["factura_comuna_envio"].value))
 		{
		change_bg_for_id('id_factura_comuna_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_COMUNA_DIRECCION_PARA_ENVIAR_FACTURA_JS}\n';
		}
	else if (valida_largo_minimo(form.elements["factura_comuna_envio"].value))
		{
		 change_bg_for_id('id_factura_comuna_envio', 'dato-erroneo');
		 errores += '--> {_ERROR_LARGO_MINIMO_COMUNA_DIRECCION_PARA_ENVIAR_FACTURA_JS}\n';
		}
	
 	if (Empty(form.elements["factura_ciudad_envio"].value))
 		{
		change_bg_for_id('id_factura_ciudad_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_CIUDAD_DIRECCION_PARA_ENVIAR_FACTURA_JS}\n';
 		}
	else if (valida_largo_minimo(form.elements["factura_ciudad_envio"].value))
		{
		change_bg_for_id('id_factura_ciudad_envio', 'dato-erroneo');
		errores += '--> {_ERROR_LARGO_MINIMO_CIUDAD_DIRECCION_PARA_ENVIAR_FACTURA_JS}\n';
		}
 	return errores;
	 }
	
function valida_largo_minimo(campo)
	{
	if(campo.length < 4)
	 	{
		return true; 
	 	}
	else
		{
		return false;
		}
	}

function valida_razon_social(razon)
	{
	var pattern = new RegExp("^[0-9A-Za-z\.][0-9A-Za-z\. ]+$");
	return razon.match(pattern);
	}

function valida_largo_rut(rut)
	{
	var tmpstr = "";
	var largo = rut.length;
	for ( i=0; i < largo; i++ )
		{
		if ( rut.charAt(i) != ' ' && rut.charAt(i) != '.' && rut.charAt(i) != '-' )
			{
			tmpstr = tmpstr + rut.charAt(i);
			}
		}
	rut = tmpstr;
	largo = rut.length;
	if (largo < 8 || largo > 10)
		{
		return false;
		}
	else
		{
		return true;
		}
	}
	
 </script>

<h4>{_LABEL_DATOS_FACTURACION}</h4>
<table class=table width="100%" cellspacing="0" cellpadding="0">
	<tr><td colspan=4>{_PARRAFO_PASO_5_FACTURA_EMITIDA}</td></tr>	
	<tr><td class=sub-titulo colspan=4>{_LABEL_INFORMACION_EMPRESA}</td></tr>
	<tr>
		<td>{_LABEL_RAZON_SOCIAL}</td>
		<td id="id_factura_razon_social"> 
			<input type=text class=input name='factura_razon_social' value ='{FACTURA_RAZON_SOCIAL}' maxlength='50'>
		</td>
		<td>{_LABEL_RUT}</td>
		<td id="id_factura_rut">
			<input type=text class=input name='factura_rut' value ='{FACTURA_RUT}' maxlength='50'>
		</td>
	</tr>
	<tr> 
		<td>{_LABEL_DIRECCION_LEGAL}</td>
		<td id="id_factura_direccion_legal">
			<input type=text class=input name='factura_direccion_legal' value ='{FACTURA_DIRECCION_LEGAL}' maxlength='50'>
		</td>
		<td>{_LABEL_COMUNA}</td>
		<td id="id_factura_comuna">
			<input type=text class=input name='factura_comuna' value ='{FACTURA_COMUNA}' maxlength='50'>
		</td>
	</tr>
	<tr> 
		<td>{_LABEL_GIRO}</td>
		<td id="id_factura_giro">
			<input type=text class=input name='factura_giro' value ='{FACTURA_GIRO}' maxlength='50'> 
		</td>
		<td>{_LABEL_TELEFONO}</td>
		<td id="id_factura_telefono">
			<input type=text class=input name='factura_telefono' value ='{FACTURA_TELEFONO}' maxlength='50'>
		</td>
	</tr>
	<tr><td class=sub-titulo colspan=4>{_MSG_NOMBRE_PARA_ENVIAR_FACTURA}</td></tr>
	<tr>
		<td>{_LABEL_NOMBRE_Y_APELLIDO}</td>
		<td id="id_factura_nombre_envio">
			<input type=text class=input name='factura_nombre_envio' value ='{FACTURA_NOMBRE_ENVIO}' maxlength='50'>
		</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr><td class=sub-titulo colspan=4>{_MSG_DIRECCION_PARA_ENVIAR_FACTURA}</td></tr>
	<tr> 
		<td>{_LABEL_DIRECCION}</td>
		<td id="id_factura_direccion_envio">
			<input type=text class=input name='factura_direccion_envio' value ='{FACTURA_DIRECCION_ENVIO}' maxlength='50'>
		</td>
		<td>{_LABEL_COMUNA}</td>
		<td id="id_factura_comuna_envio">
			<input type=text class=input name='factura_comuna_envio' value ='{FACTURA_COMUNA_ENVIO}' maxlength='50'>
		</td>
	</tr>
	<tr> 
		<td>{_LABEL_CIUDAD}</td>
		<td id="id_factura_ciudad_envio">
			<input type=text class=input name='factura_ciudad_envio' value ='{FACTURA_CIUDAD_ENVIO}' maxlength='50'>
		</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
</table>
