<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>
      Bem-vindo ao programa de associados MUNDOLAN
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
            Bem-vindo(a) ao programa de associados MUNDOLAN.</p>
          <p>
 Utilizar nosso sistema &eacute; muito f&aacute;cil. Simplesmente cadastre voc&ecirc; e sua empresa para come&ccedil;ar a aproveitar os benef&iacute;cios desta ferramenta.
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
                  <input type="submit" class=boton name="Submit" value="Acessar" OnFocus="blur()">
                </td>
              </tr>
              <tr>
                <td>
                  <a href="/asociados/forgot_passwd.html">Esqueceu sua senha?</a>
                </td>
                <td>
                  <!--<a href="/asociados/ayuda/index.html">Ajuda</a>-->&nbsp;
                </td>
            </table>
          </form>
          <h4>Inscri&ccedil;&atilde;o Ag&ecirc;ncia</h4>
          
      <ul class=list>
        <li> <a href="/cgi-bin/asociados/inscripcion_empresa.cgi">Inscreva a sua ag&ecirc;ncia</a> </li>
      </ul>
        </div>
      </div>
    </div>
  </body>
</html>

