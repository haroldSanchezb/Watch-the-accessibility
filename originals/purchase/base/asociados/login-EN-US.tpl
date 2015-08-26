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
          
      <p> Welcome to the MUNDOLAN associates webpage</p>
          
      <p> Our system is easy to use - simply register yourself and your company and you'll be granted access to all it features.</p>
          <h6>
            {ERROR}
          </h6>
          <form name="form1" method="post" action="/cgi-bin/asociados/login.cgi">
            <input type='hidden' name='cm_target_action' value='{PAGINA}'>
            <table class="table" cellspacing="0" cellpadding="0" width="260">
              <tr>
                
            <th> User</th>
                
            <th> Password</th>
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
                  
              <input type="submit" class=boton name="Submit" value="Enter" OnFocus="blur()">
                </td>
              </tr>
              <tr>
                
            <td> <a href="/asociados/forgot_passwd.html">Forgot your password?</a> </td>
                
            <td> <a href="/asociados/ayuda/index.html">Help</a> </td>
            </table>
          </form>
          
      <h4>Are you a new user?</h4>
          
      <ul class=list>
        <li> <a href="/cgi-bin/asociados/inscripcion_empresa.cgi">Register your 
          agency</a></li>
        <li> <a href="/asociados/ayuda/index.html">What do I have to do to use 
          this service?</a></li>
        <li> <a href="/asociados/requisitos/index.html">What are the minimum technical 
          requirements?</a></li>
        <!-- <li> <a href="/files/asociados/manual.doc">Download a quick guide in Word 
          format</a></li> -->
      </ul>
        </div>
      </div>
    </div>
  </body>
</html>
