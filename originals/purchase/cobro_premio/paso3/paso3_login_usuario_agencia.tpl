<script type='text/javascript'>
	function clear_mbr_nbr(obj)
                {
                if (obj.value == '{_MSG_INGRESE_NUMERO_SOCIO_JS}')
                        {
                        obj.value = '';
                        }
                }
</script>

<input type='hidden' id='tipo_operacion' value='{TIPO_OPERACION}'>
<div id='username_login_lanpass_kms' style='display: {DISPLAY}'>
  <div id="cartola_lanpass">
    <h4>{_ACCESO_SOCIO_LP}</h4>
    <table class="table" cellspacing="0" cellpadding="0" width="100%">
      <div id="formulario_cartola">
        <tr>
          <td><strong> {_LABEL_SOCIO_LANPASS}</strong><br>
            <input name="login_kms" type="text" id="login_kms" value="{_MSG_INGRESE_NUMERO_SOCIO}" onFocus='clear_mbr_nbr(this);'/></td>
        </tr>
        <tr>
          <td><strong>{_LABEL_PASSWORD}</strong><br>
            <input name="pass_kms" type="password" id="pass_kms" value="">
            <input type="button" class="boton-secundario" value="Ingresar" title="Ingresar" name="submitButton2" onclick='check_and_submit_get_kms()'/></td>
        </tr>
        <tr>
          <td><div id="loading" style="text-align: center; width: 100%; font-size: 0.9em; display: none;"><img src="/images/html/indicator.gif" alt="waiting" width="16" height="16"><br>
              {_LABEL_LOADING}</div></td>
        </tr>
      </div>
    </table>
  </div>
</div>
