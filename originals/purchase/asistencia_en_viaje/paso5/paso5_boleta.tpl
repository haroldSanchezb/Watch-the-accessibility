<script type="text/javascript">
if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){ 
 var ieversion=new Number(RegExp.$1)
}

function valida_boleta(form)
    {
    var errores = '';
    
    change_bg_for_id('id_boleta_email_envio', 'ok');
    change_bg_for_id('id_boleta_nombre_envio', 'ok');
    change_bg_for_id('id_boleta_direccion_envio', 'ok');
    change_bg_for_id('id_boleta_comuna_envio', 'ok');
    change_bg_for_id('id_boleta_ciudad_envio', 'ok');
    
    if (Empty(form.elements["boleta_email_envio"].value))
        {
        change_bg_for_id('id_boleta_email_envio', 'dato-erroneo');
        errores += '--> {_ERROR_INGRESAR_EMAIL_JS}\n';
        }
 
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
    
    if (Empty(form.elements["boleta_ciudad_envio"].value))
        {
        change_bg_for_id('id_boleta_ciudad_envio', 'dato-erroneo');
        errores += '--> {_ERROR_INGRESAR_CIUDAD_DIRECCION_PARA_ENVIAR_BOLETA_JS}\n';
        }
    if (!form.elements["terminos_condiciones_asist"].checked)
        {
        errores += "--> {_MSG_ACEPTA_CONDICIONES_MHS_JS}" + "\n";
        }
    return errores;
     }
 </script>
<div id = "prueba_toggle_boleta">
<form action="#" id = "boleta_asistencia_" name = "boleta_asistencia_">
<h4>{_LABEL_DATOS_BOLETA}</h4>
<table class=table width="100%" cellspacing="0" cellpadding="0">
    <tr>
      <td colspan=4>{_PARRAFO_PASO_5_BOLETA_ASISTENCIA}</td></tr>   
    <tr><td colspan=4>{_MSG_NOMBRE_PARA_ENVIAR_BOLETA}</td></tr>
    <tr>
        <td>{_LABEL_NOMBRE_Y_APELLIDO}</td>
        <td id="id_boleta_nombre_envio">
            <input type=text class=input name='boleta_nombre_envio' value ='{BOLETA_NOMBRE_ENVIO}' maxlength='50'>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
      <td  colspan=4>{_MSG_DIRECCION_PARA_ENVIAR_BOLETA}</td></tr>
    <tr> 
        <td>{_LABEL_DIRECCION}</td>
        <td id="id_boleta_direccion_envio">
            <input type=text class=input name='boleta_direccion_envio' value ='{BOLETA_DIRECCION_ENVIO}' maxlength='50'>
        </td>
        <td>{_LABEL_COMUNA}</td>
        <td id="id_boleta_comuna_envio">
            <input type=text class=input name='boleta_comuna_envio' value ='{BOLETA_COMUNA_ENVIO}' maxlength='50'>
        </td>
    </tr>
    <tr> 
        <td>{_LABEL_CIUDAD}</td>
        <td id="id_boleta_ciudad_envio">
            <input type=text class=input name='boleta_ciudad_envio' value ='{BOLETA_CIUDAD_ENVIO}' maxlength='50'>
        </td>
        <td>{_LABEL_CORREO_ELECTRONICO}</td>
        <td id="id_boleta_email_envio">
            <input type=text class=input name='boleta_email_envio' value ='{CORREO_ELECTRONICO_ENVIO}' maxlength='50'>
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
</form>
</div>