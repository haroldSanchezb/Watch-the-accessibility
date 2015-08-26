<script type="text/javascript" src="/js/proceso_compra.js"></script>
<script type="text/javascript">
	function caja_socio_login_check_and_submit(f)
		{
		var errores = '';

		change_bg_for_id("usuario", 'ok');
		change_bg_for_id("clave", 'ok');

		f.login.value = Trim(f.login.value);
		f.password.value = Trim(f.password.value);

		if (f.login.value == '')
			{
			errores += "{_ERROR_SIN_LOGIN_JS}\n";
			change_bg_for_id("usuario", 'dato-erroneo');
			}

		if (f.password.value == '')
			{
			errores += "{_ERROR_PASSWORD_CORTO_JS}\n";
			change_bg_for_id("clave", 'dato-erroneo');
			}

		if (errores.length > 0)
			{
			alert("{_ENCABEZADO_ERROR_JS}\n\n" + errores);
			return false;
			}

		f.action='{LOGIN_CGI}';

		f.elements['rand_check'].value = Math.random() * 10000;
		
		f.submit();
		}
</script>

<div id="box_acceso_lp">
  <div class="img_logo_lp"></div>
  <!--<form name="caja_socio" action="/no_js.html" method="POST" onSubmit="caja_socio_login_check_and_submit(this); return false;">-->
  <form name="caja_socio" action="https://ssl.lan.com/cgi-bin/login.cgi" method="post">
    <div class="bloque1_2">
      <input type="hidden" name="cm_target_action" value="/lanpass/index.html">
      <input type="hidden" name="rand_check" value="">
      <label for="usuario"> {_LABEL_LOGIN} / {_LABEL_SOCIO_LANPASS} </label>
      <br>
      <input class="text" name="login" id="usuario" tabindex="1" type="text" style="width: 125px">
      <p><a href="/cgi-bin/profile/forgot_login.cgi">{_LABEL_FORGOT_SOCIO}</a></p>
    </div>
    <div class="bloque1_2">
      <label for="clave"> {_LABEL_PASSWORD} </label>
      <br>
      <input class="text" name="password" id="clave" tabindex="2" type="password"  style="width: 125px">
      <p><a href="{_URL_OLVIDO_CLAVE}">{_LABEL_FORGOT_PASSWORD}</a></p>
    </div>
    <div class="boton_rojo_lanpass"><img src="/images/common/borde_der_boton_rojo.jpg" alt="" width="6" height="20">
      <input class="btn_rojo" value="{_LABEL_INGRESAR}" tabindex="3" type="submit">
      <img src="/images/common/borde_izq_boton_rojo.jpg" alt="" width="6" height="20"></div>
    
  </form>
</div>
<div class="separador_corto"></div>
<div id="box_inscripcion_lp">
  <p class="tab_left">{_MSG_INSCRIPCION_LANPASS}</p>
  <div class="boton_rojo_lanpass"><img src="/images/common/borde_der_boton_rojo.jpg" alt="" width="6" height="20"><a href="/cgi-bin/profile/usuario.cgi" class="btn_rojo">{_LABEL_INSCRIPCION}</a><img src="/images/common/borde_izq_boton_rojo.jpg" alt="" width="6" height="20"></div>
  <div class="clear_fix"></div>
</div>
