<script type="text/javascript">
function caja_socio_login_check_and_submit()
                {

                var errores = '';

                document.getElementById("usuario").style.backgroundColor = '#ffffff';
                document.getElementById("clave").style.backgroundColor = '#ffffff';

                if (document.getElementById("usuario").value == '')
                        {
                        errores += "{_ERROR_SIN_LOGIN_JS}\n";
                        document.getElementById("usuario").style.backgroundColor = '#eedddd';
                        }

                if (document.getElementById("clave").value == '')
                        {
                        errores += "{_ERROR_PASSWORD_CORTO_JS}\n";
                        document.getElementById("clave").style.backgroundColor = '#eedddd';
                        }

                if (errores.length > 0)
                        {
                        alert("{_ENCABEZADO_ERROR_JS}\n\n" + errores);
                        return false;
                        }

                document.getElementById("form_caja_socio").action='{LOGIN_CGI}';
                document.getElementById("form_caja_socio").elements['rand_check'].value = Math.random() * 10000;
                document.getElementById("form_caja_socio").submit();

                }

</script>


<div id="acceso_clientes">
        <img src="../../images/common/bg_acceso_clientes.jpg" alt="" width="187" height="3" class="bg_top">
        <div id="cabecera_acceso_clientes">
                <h2>{_LOGIN_AGENCIAS}</h2>
        </div>

        <div id="cuerpo_acceso_clientes">
                <form id="form_caja_socio" name="caja_socio" action="/no_js.html" method="POST"  onSubmit="caja_socio_login_check_and_submit(); return false;">

            <input type="hidden" name="cm_target_action" value="{HOME}">
               <input type="hidden" name="rand_check" value="">

                        <div class="bloque">
                                <label for="usuario">Usu&aacute;rio</label>
                                <input type="text" class="text" name="login" id="usuario" tabindex="1">
                        </div>

                        <div class="bloque">
                               <a href="/asociados/forgot_passwd.html" class="flotar_der obtener_clave">{_LABEL_FORGOT_PASSWORD}</a>
                                <label for="clave">Senha</label>
                                <input type="password" class="text" name="password" id="clave" tabindex="2">
                        </div>

                        <div class="bloque">
                                <input type="submit" class="btn_form flotar_der" value="Ingressar" >
                        </div>

                        <div id="maximo">
                                <input name="guardar_cambios" id="guardar_cambios" type="checkbox">
                        </div>

                        <p class="guardar_cambios">Salvar dados</p>
                </form>

        </div><!-- "cuerpo_acceso_clientes" -->


{+ASOCIADOS::INFO_REGISTRO}</div> <!-- acceso_clientes -->
                                                                           
