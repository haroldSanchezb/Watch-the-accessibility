<h4>{_LABEL_INGRESO_MI_CUENTA}</h4>
<table width="330" border="0" cellspacing="0" cellpadding="0" class="table">
  <tr>
    <td style="padding-top:20px;">{_MSG_CONTINUAR_LOGIN}</td>
  </tr>
  <tr>
    <td style="padding:10px auto;"><div id='mensaje'></div><div id='imagen' style='display:none;'><img src='/images/common/ajax_loader_32.gif' width="32" height="32" alt=""></div></td>
  </tr>
  <tr>
    <td><div class="layer_login">
        <form name="login_reserva" action="/no_js.html" method = 'POST' onSubmit="check_login_ajax(document.forms.login_reserva); return false;">
          <input type='hidden' value='' name='cm_target_action'>
          <table width="98%" border="0" cellspacing="0" cellpadding="0" style="margin: 0 auto;">
            <tr>
              <td class="col_izq">{_LABEL_LOGIN} / {_LABEL_SOCIO_LANPASS}</td>
              <td class="col_der"><input type='text' name='login' id='id_login'></td>
            </tr>
            <tr>
              <td class="col_izq" style="border-top:none;">{_LABEL_PASSWORD}</td>
              <td class="col_der" style="border-top:none;"><input type='password' name='password'  id='id_password'></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td class="btn_ingresar"><input type="submit" class="button-page" value="{_LABEL_INGRESAR}"></td>
            </tr>
          </table>
        </form>
      </div></td>
  </tr>
  <tr>
    <td><b>{_AYUDA}</b></td>
  </tr>
  <tr>
    <td style="padding-bottom:20px;">{_LINK_VERIFICA_TU_NUMERO_SOCIO}<br />{_LINK_OBTEN_NUEVA_CLAVE}</td>
  </tr>
</table>
