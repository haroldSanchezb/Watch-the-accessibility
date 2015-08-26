<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>
      {TITLE}
    </title>
    <link href="/css/base.css" rel="stylesheet" type="text/css">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
  {+GOOGLE_ANALYTICS}    
  </head>
  <body>
	{+TEMPLATE('/base/lan/google_tag_manager.tpl')}
    <div id=externo>
      <div id=panel-general>
        <div id=contenido-proceso>
          <div class=right>
            <img src="/images/asociados/common/mundo_lan.jpg" width="208" height="57" alt="MUNDOLAN" >
          </div>
          <p>
            Bienvenido al programa de asociados MUNDOLAN
          </p>
          <p>
            Utilizar nuestro sistema es muy f&aacute;cil, s&oacute;lo debe registrarse usted y su empresa e inmediatamente podr&aacute; comenzar a vender nuestras promociones.
          </p>
          <h6>
            {ERROR}
          </h6>
          <form name="form1" method="post" action="/cgi-bin/asociados/login.cgi">
            <input type='hidden' name='cm_target_action' value='{PAGINA}'>
            <table class="table" cellspacing="0" cellpadding="0" width="260">
              <tr>
                <th>
                  Usuario
                </th>
                <th>
                  Clave
                </th>
              </tr>
              <tr>
                <td>
                  <input name="login" type="text" size="12">
                </td>
                <td>
                  <input name="password" type="password" size="12">
                </td>
              </tr>
              <tr>
                <td class=right colspan=2>
                  <input type="submit" class=boton name="Submit" value="Ingresar" OnFocus="blur()">
                </td>
              </tr>
              <tr>
                <td>
                  <a href="/asociados/forgot_passwd.html">&iquest;Olvid&oacute; su clave?</a>
                </td>
                <td>
                  <a href="/asociados/ayuda/index.html">Ayuda</a>
                </td>
            </table>
          </form>
          <h4>&iquest;Es usted Usuario Nuevo?</h4>
          
      <ul class=list>
        <li> <a href="/cgi-bin/asociados/inscripcion_empresa.cgi">Inscriba su 
          agencia</a> </li>
        <li> <a href="/asociados/ayuda/index.html">&iquest;Qu&eacute; tengo que 
          hacer para usar este servicio?&nbsp;</a> </li>
        <li> <a href="/asociados/requisitos/index.html">&iquest;Cu&aacute;les 
          son los requisitos t&eacute;cnicos m&iacute;nimos?&nbsp;</a> </li>
        <!-- <li> <a href="/files/asociados/manual.doc">Descargue una "Gu&iacute;a 
          r&aacute;pida" en formato Word&nbsp;</a> </li> -->
      </ul>
        </div>
      </div>
    </div>
  </body>
</html>
