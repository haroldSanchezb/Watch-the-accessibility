<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!-- "http://www.w3.org/TR/html4/loose.dtd"> -->
<head>
<title>LAN.com</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="/css/lan.css" rel="stylesheet" type="text/css">
<link href="/css/extra_lan.css" rel="stylesheet" type="text/css">
<link href="/css/proceso_compra_personas.css" rel="stylesheet" type="text/css">
<script src="/js/lan.js" type="text/javascript" language="Javascript"></script>
<script src="/js/proceso_compra.js" type="text/javascript" language="Javascript"></script>
<script src="/js/wz_dragdrop.js" type="text/javascript" language="Javascript"></script>
<script src="/js/overlib.js" type="text/javascript" language="Javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
<!-- Begin
var retries = {TIMEOUT};
var im = new Image();
function chequeo () 
	{
	if (retries == 0)
		{
		location.href = 'wait2.cgi?&t=0&unique_id={UNIQUE_ID}&check={CHECK}';
		}
	if (im.width == '2')
		{
		location.replace('wait2.cgi?show=page&t={TIMEOUT}&unique_id={UNIQUE_ID}&check={CHECK}');
		}
	im = new Image();
	im.src = "wait2.cgi?show=image&t="+retries+"&unique_id={UNIQUE_ID}&check={CHECK}";
	setTimeout('chequeo()', {WAIT_TIME}000);
	retries--;
	}
im.src = "wait2.cgi?show=image&t={TIMEOUT}&unique_id={UNIQUE_ID}&check={CHECK}";
setTimeout('chequeo()', {WAIT_TIME}000);
// End -->
</script>
</head>
<body>
<div id='id_fullpage' class='fullpage'>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="90%" valign="top"><table border="0" cellspacing="0" cellpadding="0" width='100%'>
        <tr>
          <td>&nbsp;</td>
          <td align="right" valign='top'><a href="/index.html" OnFocus="blur();"><img src='/images/logos/logo_lan_com_azul.gif' border="0"></a></td>
        </tr>
        <tr>
          <td>&nbsp;<br>
&nbsp;<br></td>
          <td align='right' valign='top' class="txt-auxiliar"><br>
&nbsp;<br></td>
        </tr>
      </table>
  
  <div id='id_contenido' class='contenido'>
    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign='top' align='center'><img src="/images/espanol/misc/espere_por_favor.gif" width="468" height="60" alt='{_IMG_ALT_PROCESANDO}'> </td>
      </tr>
    </table>
    {CONTENIDO} {NAVIGATIONAL_REQUEST} </div>
  </td>
  
  </tr>
  
  <tr>
    <td height="20%" valign="bottom"><div id='id_footer' class='footer'>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="10%" align="center" class="pie-pagina"><table width="780" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="30" align="center" valign="top" class="txt-arialblanco">&nbsp;</a> </td>
                </tr>
                <tr>
                  <td align="center" class="txt-arialblanco"><br>
                    {_COPYRIGHT}<br>
                    {_TEXTO_DERECHOS_RESERVADOS}</td>
                </tr>
              </table></td>
          </tr>
        </table>
      </div></td>
  </tr>
</table>
{DEBUG_INFO}
</div>
</body>
</html>
