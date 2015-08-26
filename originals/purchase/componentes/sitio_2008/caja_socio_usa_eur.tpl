<script type="text/javascript">
	caja_socio_check_and_submit = function(f)
		{
		var errores = '';

		//change_bg_for_id("socio_email", 'ok');
		//change_bg_for_id("socio_ciudad_embarque", 'ok');

		f.email.value      = Trim(f.email.value);
		f.ciudad_embarque.value = Trim(f.ciudad_embarque.value);

		if (f.email.value == '' || !valida_email(f.email.value))
			{
			errores += "{_ERROR_EMAIL_INVALIDO_JS}\n";
			//change_bg_for_id("socio_email", 'dato-erroneo');
			}

		if (f.ciudad_embarque.value == '')
			{
			errores += "{_ERROR_CIUDAD_DE_ORIGEN_FALTANTE_JS}\n";
			//change_bg_for_id("socio_ciudad_embarque", 'dato-erroneo');
			}

		if (errores.length > 0)
			{
			alert("{_ENCABEZADO_ERROR_JS}\n\n" + errores);
			return false;
			}

		f.action='/cgi-bin/profile/usuario.cgi';

		f.elements['rand_check'].value = Math.random() * 10000;
		
		f.submit();
		}
</script>

<div id="cabecera_acceso_clientes">
	<h2>{_LABEL_RECIBA_OFERTAS}</h2>
</div>
					
<div id="cuerpo_acceso_clientes">
	<form action="/no_js.html" method="POST" onSubmit="caja_socio_check_and_submit(this); return false;">
		<input type="hidden" name="cm_target_action" value="{HOME}">
		<input type="hidden" name="rand_check" value="">

		<div class="bloque">
			<label for="email">{_LABEL_EMAIL}</label><br>
			<input type="text" class="text" name="email" id="socio_email" tabindex="1">
	  </div>
							
		<div class="bloque">
			<label for="clave"> {_CIUDAD_EMBARQUE} </label><br>
			<select name="ciudad_embarque" id="socio_ciudad_embarque" tabindex="2">
				<option value="">{_LABEL_SELECCIONE}</option>
				{LISTA_ORIGENES}
			</select>
	  </div>

		<div class="bloque">
			<input type="submit" class="btn_form flotar_der" value="{_LABEL_ACEPTAR}" tabindex="3">
		</div>
	</form>
	<div class="clear_fix"></div>
</div>
