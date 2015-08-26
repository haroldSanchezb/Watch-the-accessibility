<script type='text/javascript'>
	function clear_mbr_nbr(obj)
                {
                if (obj.value == '{_MSG_INGRESE_NUMERO_SOCIO_JS}')
                        {
                        obj.value = '';
                        }
                }
				
	function check_and_submit_buscador_promociones(f)
		{
		var login_kms = document.getElementById('login_kms');
		if (login_kms.value == '{_MSG_INGRESE_NUMERO_SOCIO_JS}' || login_kms.value == '')
			{
			alert ("{_MSG_INGRESE_NUMERO_SOCIO_JS}");
			return;
			}
		f.action = "{URL}";
		f.submit();
		}
</script>

<div id='username_login_lanpass_kms' style='display: {DISPLAY}'>
  <div id="buscador_promociones">
    <h4>{_TITULO_BUSCADOR_PROMOCIONES}</h4>
    <table class="table" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td>{_FRASE_BUSCADOR_PROMOCIONES}</td>
		</tr>
        <tr>
          <td><strong> {_LABEL_BUSCADOR_PROMOCIONES}</strong><br>
            <input name="login_kms" type="text" id="login_kms" value="{_MSG_INGRESE_NUMERO_SOCIO}" onFocus='clear_mbr_nbr(this);'/>
		{DATOS_PASO_2}
		{*DATOS_PASO2}
		<input name="{NOMBRE_PASO2}" id="{ID_PASO2}" type="hidden" value="{VALOR_PASO2}"/>
		{/DATOS_PASO2}
		</td>
        </tr>
		<tr>
          <td><input type="button" class="boton-destacado" value="Ingresar" title="Ingresar" name="submit_buscador_promociones" onclick='check_and_submit_buscador_promociones(this.form)'/></td>
        </tr>
    </table>
  </div>
</div>

