<script type="text/javascript">
if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){ 
 var ieversion=new Number(RegExp.$1)
}

function valida_boleta(form)
	{
 	var errores = '';
	
	change_bg_for_id('id_boleta_nombre_envio', 'ok');
	change_bg_for_id('id_boleta_direccion_envio', 'ok');
	change_bg_for_id('id_boleta_departamento_envio', 'ok');
	change_bg_for_id('id_boleta_comuna_envio', 'ok');
	change_bg_for_id('id_boleta_apellido_paterno_envio', 'ok');
	change_bg_for_id('id_boleta_apellido_materno_envio', 'ok');
	change_bg_for_id('id_boleta_provincia_envio', 'ok');
	change_bg_for_id('id_boleta_tipo_envio', 'ok');
	change_bg_for_id('id_boleta_numero_envio', 'ok');
	
 	if (Empty(form.elements["boleta_nombre_envio"].value))
 		{
		change_bg_for_id('id_boleta_nombre_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_NOMBRE_PARA_ENVIAR_BOLETA_JS}\n';
 		}
 
 	if (Empty(form.elements["boleta_direccion_envio"].value))
 		{
		change_bg_for_id('id_boleta_direccion_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_DIRECCION_PARA_ENVIAR_BOLETA_JS}\n';
 		}
	
 	if (Empty(form.elements["boleta_comuna_envio"].value))
 		{
		change_bg_for_id('id_boleta_comuna_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_COMUNA_DIRECCION_PARA_ENVIAR_BOLETA_JS}\n';
		}
	
 	if (Empty(form.elements["boleta_departamento_envio"].value))
 		{
		change_bg_for_id('id_boleta_departamento_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_DEPARTAMENTO_PARA_ENVIAR_BOLETA_JS}\n';
 		}
 		
 	if (Empty(form.elements["boleta_apellido_paterno_envio"].value))
 		{
		change_bg_for_id('id_boleta_apellido_paterno_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_APELLIDO_PATERNO_PARA_ENVIAR_BOLETA_JS}\n';
 		}
 
 	if (Empty(form.elements["boleta_apellido_materno_envio"].value))
 		{
		change_bg_for_id('id_boleta_apellido_materno_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_APELLIDO_MATERNO_PARA_ENVIAR_BOLETA_JS}\n';
 		}
	
 	if (Empty(form.elements["boleta_tipo_envio"].value))
 		{
		change_bg_for_id('id_boleta_tipo_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_TIPO_PARA_ENVIAR_BOLETA_JS}\n';
		}
	
 	if (Empty(form.elements["boleta_provincia_envio"].value))
 		{
		change_bg_for_id('id_boleta_provincia_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_PROVINCIA_PARA_ENVIAR_BOLETA_JS}\n';
 		} 		
 	if (Empty(form.elements["boleta_numero_envio"].value) || isNaN(form.elements["boleta_numero_envio"].value))
 		{
		change_bg_for_id('id_boleta_numero_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_NUMERO_PARA_ENVIAR_BOLETA_JS}\n';
		}
	
	if (!form.elements["terminos_condiciones_asist"].checked)
		{
		errores += "--> {_MSG_ACEPTA_CONDICIONES_MHS_JS}" + "\n";
		}
 	return errores;
	 }
 </script>
<br><div id = "prueba_toggle_boleta">
<form action="#" id = "boleta_asistencia_" name = "boleta_asistencia_">
<h4>{_COMPRA_PASO5_TITULO_SEGURO_MODULOCOMPROBANTE}</h4>
<table class=table width="100%" cellspacing="0" cellpadding="0">
	<tr>
	  <td colspan=4>{_COMPRA_PASO5_BAJADA_SEGURO_MODULOCOMPROBANTE}</td></tr>	
	<tr>
		<td style="font-weight: bold;" colspan=2>{_LABEL_INFORMACION_PERSONAL}
			<hr style="width: 71%; margin-right:138px\9;">
		</td>
		<td style="font-weight: bold;" colspan=4>{_LABEL_DATOS_DOMICILIO}
			<hr style="width: 68%; margin-right:138px\9;">
		</td>
	</tr>
	<tr>
		<td>{_LABEL_NOMBRE}:</td>
		<td id="id_boleta_nombre_envio">
			<input type=text class=input name='boleta_nombre_envio' value ='{BOLETA_NOMBRE_ENVIO}' maxlength='30'>
		</td>
		<td>{_LABEL_DIRECCION}:</td>
		<td id="id_boleta_direccion_envio">
			<input type=text class=input name='boleta_direccion_envio' value ='{BOLETA_DIRECCION_ENVIO}' maxlength='250'>
		</td>
	<tr>	
		<td>{_LABEL_APELLIDO_PATERNO}:</td>
		<td id="id_boleta_apellido_paterno_envio">
			<input type=text class=input name='boleta_apellido_paterno_envio' value ='{BOLETA_APELLIDO_PATERNO_ENVIO}' maxlength='30'>
		</td>
		<td>{_LABEL_DEPARTAMENTO}:</td>
		<td id="id_boleta_departamento_envio">
			<input type=text class=input name='boleta_departamento_envio' value ='{BOLETA_DEPARTAMENTO_ENVIO}' maxlength='250'>
		</td>
	</tr>
	<tr>
		<td>{_LABEL_APELLIDO_MATERNO}:</td>
		<td id="id_boleta_apellido_materno_envio">
			<input type=text class=input name='boleta_apellido_materno_envio' value ='{BOLETA_APELLIDO_MATERNO_ENVIO}' maxlength='30'>
		</td>
		<td>{_LABEL_PROVINCIA}:</td>
		<td id="id_boleta_provincia_envio">
			<input type=text class=input name='boleta_provincia_envio' value ='{BOLETA_PROVINCIA_ENVIO}' maxlength='250'>
		</td>
	</tr>
	<tr>
		<td></td>
		<td></td>
		<td>{_LABEL_COMUNA}:</td>
		<td id="id_boleta_comuna_envio">
			<input type=text class=input name='boleta_comuna_envio' value ='{BOLETA_COMUNA_ENVIO}' maxlength='250'>
		</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td style="font-weight: bold;" colspan=4>{_LABEL_DOCUMENTO_DE_IDENTIDAD}
	  		<hr style="width: 36%; margin-right:660px\9;">	
	  	</td>
	</tr>
	<tr> 
		<td>
		 {_LABEL_TIPO}:
		</td>
		<td>
			<select id="id_boleta_tipo_envio" name="boleta_tipo_envio" type="text" class="input-txt" style=" width:132px; height:20px; font-size:10px;">
		                <option value="P" selected>{_LABEL_PASAPORTE}</option>
	                	<option value="L">{_LABEL_DNI_SIGLA}</option>
	        	</select>
       		</td>
    	</tr>
	<tr> 
		<td>{_LABEL_NUMERO}:</td>
		<td id="id_boleta_numero_envio">
			<input type=text class=input name='boleta_numero_envio' value ='{BOLETA_NUMERO_ENVIO}' maxlength='20'>
		</td>
	</tr>
	<tr>
    	<td colspan="4">
    		<br><hr style="width: 85%; margin-right:138px\9"><br>
    		<input type="checkbox" name="terminos_condiciones_asist" id="terminos_condiciones_asist" value =""/>
			<label for= "label_asistencia_en_viajes">{_LABEL_ASISTENCIA_TERMINOS_DECLARO}</label>
			<a href="javascript:MM_openBrWindow('/cgi-bin/compra/terminos_y_condiciones.cgi?tipo_producto={TIPO_PRODUCTO}','','location=no,scrollbars=yes,width=750, height=520 ,screenX=0,screenY=0');">{_MSG_CONDICIONES_MHS_2}</a> 
			<label for= "label_asistencia_en_viajes">{_LABEL_ASISTENCIA_TERMINOS_PLAN}</label>
		</td>
	</tr>
	<tr>	
		<input type="hidden" name="boleta_fisica_assist" id="boleta_fisica_assist" value ="N"/>
		<td colspan="4"><input type="checkbox" name="boleta_fisica_assist" id="boleta_fisica_assist" value ="S"/> 
			<label for= "label_asistencia_en_viajes_boleta_fisica">{_COMPRA_PASO5_INFO_SEGURO_MODULOCOMPROBANTE_BOLETAFISICA}</label>
		</td>	
	</tr>
</table>
</form>
</div>
