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

<div id="cabecera_acceso_clientes">
	<img src="/images/common/candado.gif" alt="sitio seguro" title="sitio seguro" width="16" height="16" style="float:right; vertical-align:top; margin-right:5px; "><h2>{_ACCESO_SOCIO_LP}</h2>	
</div>
					
<div id="cuerpo_acceso_clientes">
	<p>{_MSG_REVISA_CUENTA_Y_BENEFICIOS}</p>
	<div class="bloque">
		<input type="submit" class="btn_form" value="{_LABEL_INGRESAR}" tabindex="3" onclick="window.location='/lanpass/inicio_lp.html'">
	</div>
		<ul>
		<li><a href="{_URL_OLVIDO_CLAVE}">{_LABEL_FORGOT_PASSWORD}</a></li>
		<li><a href="/cgi-bin/profile/usuario.cgi">{_INSCRIPCION_LP}</a></li>
		</ul>

	<!--<form name="caja_socio" action="/no_js.html" method="POST" onSubmit="caja_socio_login_check_and_submit(this); return false;">-->
	<!--<form name="caja_socio" action="{LOGIN_CGI}" method="POST">

		<div class="bloque">
			<input type="hidden" name="cm_target_action" value="{HOME}">
			<input type="hidden" name="rand_check" value="">
			<label for="usuario"> {_LABEL_LOGIN} / {_LABEL_SOCIO_LANPASS} </label>
			<input type="text" class="text" name="login" id="usuario" tabindex="1">
	  </div>
							
		<div class="bloque">
			<a href="{_URL_OLVIDO_CLAVE}" class="flotar_der">{_LABEL_FORGOT_PASSWORD}</a>
			<label for="clave"> {_LABEL_PASSWORD} </label>
			<input type="password" class="text" name="password" id="clave" tabindex="2">
	  </div>

		<div class="bloque">
			<a href="/cgi-bin/profile/usuario.cgi" class="negrita flotar_izq inscripcion">{_INSCRIPCION_LP}</a>
			<input type="submit" class="btn_form flotar_der" value="{_LABEL_INGRESAR}" tabindex="3">
		</div>
	</form>-->
	<div class="clear_fix"></div>
</div>













