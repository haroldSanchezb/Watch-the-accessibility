<h1>{_FRASE_TITULO_LOGIN}</h1>  
<!--<div class="warning-info" id="msg-op"><p>--><!--{_MENSAJE_STAFFTRAVEL_DESHABILITADO}--><!--</p></div>-->
<p> {_FRASE_ACCESO_TROTAMUNDO}
<br>{_FRASE_ACCESO_TROTAMUNDO_AYUDA}</p>
<p></p>	
<br>

</p>
<p><strong>{ERROR}</strong></p>
<div id="contenedor_pago_reserva">
	<h2>{_FRASE_INGRESO_FUNCIONARIO}</h2>
    <div id="box-content">
        <div id="box-int-border">
            <div class="interior_caja_proceso">
                <form action="/cgi-bin/login.cgi" method="post" name="login_form" id="login_form">
                    <input type=hidden name=cm_target_action value="{ACTION}">
                    <div style="width:50%; margin:0 auto;">
                    <table class="tabla_form_proceso" cellspacing="0" cellpadding="0" width="100%">
                        <tr>
                            <td class="dato_tabla_form_proceso">{_FRASE_LOGIN_RED}</td>
                            <td class="campo_tabla_form_proceso"><input name="login" type="text" class="input-normal" value="" tabindex='1'></td>
                        </tr>
                        <tr>
                            <td class="dato_tabla_form_proceso">{_FRASE_PASSWORD_RED}</td>
                            <td class="campo_tabla_form_proceso"><input name="password" type="password" class="input-normal" tabindex='2'></td>
                        </tr>
                    </table>
					<input type="submit" class="button-page float_right" name='enter' value="{_LABEL_INGRESAR}" tabindex='3' style="margin-right:22px;">

                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
