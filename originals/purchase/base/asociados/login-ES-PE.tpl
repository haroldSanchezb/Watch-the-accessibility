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
          
      <p> Bienvenido a nuestro nuevo servicio web de atenci&oacute;n exclusivo 
        para agencias de viajes. </p>
          <p>
            Utilizar nuestro sistema es muy f&aacute;cil, s&oacute;lo debe registrarse usted y su agencia e inmediatamente podr&aacute; comenzar a vender nuestras promociones.
          </p>
          <h6>
            {ERROR}
          </h6>
          <form name="form1" method="post" action="/cgi-bin/asociados/login.cgi">
            <input type='hidden' name='cm_target_action' value='{PAGINA}'>
        <table width="700" cellpadding="0" cellspacing="0" border="0">
          <tr> 
            <td> 
              <table class="table" width="260" cellpadding="0" cellspacing="0" border="0">
                <tr> 
                  <th> Usuario </th>
                  <th> Clave </th>
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
                    <input type="submit" class=boton name="Submit"  value="Ingresar" onFocus="blur()">
                  </td>
                </tr>
                <tr> 
                  <td> <a href="/asociados/forgot_passwd.html">&iquest;Olvid&oacute; su clave?</a> 
                  </td>
                  <td> <a href="/asociados/ayuda/index.html">Ayuda</a> </td>
              </table>
            </td>
            <!-- <td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="345" height="115">
                <param name=movie value="/files/asociados/banner_peru_liberados.swf">
                <param name=quality value=high>
                <embed src="/files/asociados/banner_peru_liberados.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="345" height="115">
                </embed> 
              </object></td> -->
          </tr>
        </table>
        <br>
      </form>
          <h4>&iquest;Es usted Usuario Nuevo?</h4>
          <ul class=list>
          <li>
            <a href="/cgi-bin/asociados/inscripcion_empresa.cgi">Inscriba su agencia</a>
          </li>
          <li>
            <a href="/asociados/ayuda/index.html">&iquest;Qu&eacute; tengo que hacer para usar este servicio?</a></li>
          <li>
            <a href="/asociados/requisitos/index.html">&iquest;Cu&aacute;les son los requisitos t&eacute;cnicos m&iacute;nimos?</a></li>
          <li>
            <a href="/files/asociados/manual_del_agente.pdf">Descargue una "Gu&iacute;a r&aacute;pida"</a></li>
          <li><a href="/files/asociados/terminos_condiciones/contrato_transporte/convenio_varsovia_lanperu.doc">Descargue el Convenio Varsovia y el Contrato de Transporte A&eacute;reo LAN Per&uacute;</a> // <a href="/files/asociados/terminos_condiciones/contrato_transporte/convenio_varsovia_lanperu_ing.doc">Versi&oacute;n en ingl&eacute;s </a></li>
          <li><a href="/files/asociados/terminos_condiciones/contrato_transporte/convenio_varsovia_airlines.doc">Descargue el Convenio Varsovia y el Contrato de Transporte A&eacute;reo LAN Airlines</a> // <a href="/files/asociados/terminos_condiciones/contrato_transporte/convenio_varsovia_airlines_ing.doc">Versi&oacute;n en ingl&eacute;s </a></li>
          <li>
            Para mayor informaci&oacute;n cont&aacute;ctenos al 0-801-1-4444 opci&oacute;n 3 </li>
</ul>
<br>
<!-- <h4>MundoLAN Club</h4>
<ul class=list>
          <li><a href="http://www.promotick.com/mundolanclub/index.asp?ident=00416MLC91" target="_blank"><img src="/images/asociados/mundolanclub.gif" alt="MundoLAN" width="345" height="115" border="0"></a>
       </li>
</ul> -->
	    </div>
      </div>
    </div>
  </body>
</html>
