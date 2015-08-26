<script type="text/javascript">
if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){ 
 var ieversion=new Number(RegExp.$1)
}
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
	if (Empty(form.elements["factura_email_envio"].value))
 		{
		change_bg_for_id('id_factura_email_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_EMAIL_JS}\n';
 		}
	if (Empty(form.elements["factura_telefono"].value))
 		{
		change_bg_for_id('id_factura_telefono', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_TELEFONO_JS}\n';
 		}
		
  	if(!IsRut(form.elements["factura_rut"].value))
 		{
		change_bg_for_id('id_factura_rut', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_RUT_VALIDO_EMPRESA_JS}\n';
 		}
	
 	if (Empty(form.elements["factura_direccion_legal"].value))
 		{
		change_bg_for_id('id_factura_direccion_legal', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_DIRECCION_EMPRESA_JS}\n';
 		}
 
 	if (Empty(form.elements["factura_comuna"].value))
 		{
		change_bg_for_id('id_factura_comuna', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_COMUNA_JS}\n';
 		}

 	if (Empty(form.elements["factura_giro"].value))
 		{
		change_bg_for_id('id_factura_giro', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_GIRO_EMPRESA_JS}\n';
 		}
	
 	if (!isInteger(form.elements["factura_telefono"].value))
 		{
		change_bg_for_id('id_factura_telefono', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_TELEFONO_EMPRESA_JS}\n';
 		}
 
 	if (Empty(form.elements["factura_nombre_envio"].value))
 		{
		change_bg_for_id('id_factura_nombre_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_NOMBRE_PARA_ENVIAR_FACTURA_JS}\n';
 		}
 
 	if (Empty(form.elements["factura_direccion_envio"].value))
 		{
		change_bg_for_id('id_factura_direccion_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_DIRECCION_PARA_ENVIAR_FACTURA_JS}\n';
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
	
 	if (Empty(form.elements["factura_ciudad_envio"].value))
 		{
		change_bg_for_id('id_factura_ciudad_envio', 'dato-erroneo');
 		errores += '--> {_ERROR_INGRESAR_CIUDAD_DIRECCION_PARA_ENVIAR_FACTURA_JS}\n';
 		}
 	return errores;
	 }

function showLightbox(layer) {
	document.getElementById(layer).style.display='block';
	document.getElementById('fade').style.display='block';
	window.scrollTo(0,0);
	if (/MSIE (\d+\.\d+);/.test(navigator.userAgent))
	{
		if (ieversion>=6)
		selects = document.getElementsByTagName("select");
		for (i = 0; i != selects.length; i++) {
			selects[i].style.visibility = "hidden";
		}
	}
}
function hideLightbox(layer) {
	document.getElementById(layer).style.display='none';
	document.getElementById('fade').style.display='none';
	if (/MSIE (\d+\.\d+);/.test(navigator.userAgent))
	{
	
		selects = document.getElementsByTagName("select");
		for (i = 0; i != selects.length; i++) {
			selects[i].style.visibility = "visible";
		}
	}
}  
 </script>
<style type="text/css">
<!--
/**************COMIENZO DE CSS DE LIGHT_BOX; PORFAVOR NO BORRAR DEL TPL*******************/
.fadebox {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 1200px;
	background-color: black;
	z-index:1001;
	-moz-opacity: 0.30;
	opacity:.30;
	filter: alpha(opacity=30);
}
.overbox {
	display: none;
	position: absolute;
	top: 25%;
	left: 25%;
	width: 50%;
	height: 50%;
	z-index:1002;
	overflow: auto;
	overflow-x: hidden;
}
#content {
	background: #FFFFFF;
	border: solid 8px #CCCCCC;
	/*padding: 10px;*/
	width:600px;
	margin:0px auto 0px auto;
	overflow-x: hidden;
	overflow:hidden;	
}
.texto_lightbox{
	background: #ffffff;
	padding: 10px;
	width:560px;
	margin:0px;
	z-index:1008;
	overflow:hidden;
}
.cerrar{
	background: #CCCCCC;
	padding: 5px 0px 0px 254px;
	width:600px;
	margin:0px;
	text-align:right;
	height:20px;
}

.texto_cerrar{
	background: #CCCCCC;
	padding: 0px;
	width:320px;
	margin:0px;
	float:left;
	text-align:right;
}
.texto_cerrar a:link{
	padding: 0px;
	margin:0px;
	color:#333333;
	text-decoration:none;
}
.texto_cerrar a:hover{
	padding: 0px;
	margin:0px;
	color:#333333;
	text-decoration:underline;
}
.imagen_cerrar{
	padding: 0px 4px 0px 0px;
	margin:0px;
	text-align:right;
	border:0;
	float:left;
	width:16px;
}
.imagen_cerrar a:link img{
	padding: 0px;
	margin:0px;
	text-align:right;
	border:0;

}
/**************FIN DE CSS DE LIGHT_BOX; PORFAVOR NO BORRAR DEL TPL*******************/

-->
</style>


<h4>{_LABEL_DATOS_FACTURACION}</h4>
<table class=table width="100%" cellspacing="0" cellpadding="0">
	<tr><td colspan=4>{_PARRAFO_PASO5_ASISTENCIA_FACTURA}</td></tr>
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
		<td>{_LABEL_CORREO_ELECTRONICO}</td>
		<td id="id_factura_email_envio">
			<input type=text class=input name='factura_email_envio' value ='{CORREO_ELECTRONICO_ENVIO}' maxlength='50'>
		</td>
	</tr>
    <tr> 
		<td colspan="4"><input type="checkbox" name="terminos_condiciones_asist" id="terminos_condiciones_asist" value =""/> 
			<label for= "label_asistencia_en_viajes">{_LABEL_ASISTENCIA_TERMINOS_DECLARO}</label>
			<a href="javascript:MM_openBrWindow('/cgi-bin/compra/terminos_y_condiciones.cgi?tipo_producto={TIPO_PRODUCTO}','','location=no,scrollbars=yes,width=750, height=520 ,screenX=0,screenY=0');">{_MSG_CONDICIONES_MHS_2}</a> 
	
			<label for= "label_asistencia_en_viajes">{_LABEL_ASISTENCIA_TERMINOS_PLAN}</label>
		</td>
	</tr>
</table>

