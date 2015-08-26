<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!-- "http://www.w3.org/TR/html4/loose.dtd"> -->
<head>
<title>LAN.com</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="/css/lan.css" rel="stylesheet" type="text/css">
<link href="/css/extra_lan.css" rel="stylesheet" type="text/css">
<link href="/css/proceso_compra_personas.css" rel="stylesheet" type="text/css">
<script src="/js/lan.js" type="text/javascript"></script>
<script src="/js/proceso_compra.js" type="text/javascript"></script>
<script src="/js/wz_dragdrop.js" type="text/javascript"></script>
<script src="/js/overlib.js" type="text/javascript"></script>
<script src="/js/ajax_base.js" type="text/javascript"></script>
<script type="text/javascript">
<!-- begin hiding
function chequea_progreso()
	{
	url = '/cgi-bin/wait.cgi?host_id={HOST_ID}&show=progress&t={TIMEOUT}&unique_id={UNIQUE_ID}&check={CHECK}';
	loadXMLDoc(url);
	}

function informe_progreso(response, error_code)
	{
	if (error_code != '0') // ocurrio un error
		{
		// manejarlo. por ejemplo:
		alert(response)
		}
	else
		{
		var progreso = response.split('|');
		update_progress_bar(parseInt(progreso[0]));
		var contenido = document.getElementById('id_contenido');
		if (contenido.innerHTML != progreso[1])
			{
			contenido.innerHTML = progreso[1];
			}
		timerID = setTimeout("chequea_progreso()",{WAIT_TIME}000) 
		}
	}

var locationAfterPreload = "/cgi-bin/wait.cgi?host_id={HOST_ID}&show=page&t={TIMEOUT}&unique_id={UNIQUE_ID}&check={CHECK}" // URL of the page after preload finishes
var lengthOfPreloadBar = 200 // Length of preload bar (in pixels)
var heightOfPreloadBar = 25 // Height of preload bar (in pixels)

var dots = new Array() 
dots[0] = new Image(1,1)
dots[0].src = "/images/html/black.gif" // default preloadbar color (note: You can substitute it with your image, but it has to be 1x1 size)
dots[1] = new Image(1,1)
dots[1].src = "/images/html/blue.gif" // color of bar as preloading progresses (same note as above)
var coverage = Math.floor(lengthOfPreloadBar/100),currCount = 0
var i,covered,timerID
var leftOverWidth = lengthOfPreloadBar%coverage

var chequeo_previo = 0;
function update_progress_bar(percent)
	{
	if (percent == 100) 
		{
		for (i = chequeo_previo + 1; i <= 100; i++)
			{
			eval("document.img" + i + ".src=dots[1].src")
			}
		location.replace(locationAfterPreload);
		return
		}
	if (percent == 0)
		{
		for (i = 1; i < 100; i++)
			{
			eval("document.img" + i + ".src=dots[0].src")
			}
		}
	if (percent <= chequeo_previo)
		{
		for (i = percent + 1; i <= chequeo_previo; i++)
			{
			eval("document.img" + i + ".src=dots[0].src")
			}
		}
	for (i = chequeo_previo+1; i <= percent; i++)
		{
		eval("document.img" + i + ".src=dots[1].src")
		}
	chequeo_previo = percent;
	}
// end hiding -->
</script>
</head>
<body>
<div id='id_fullpage' class='fullpage'>
  <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="90%" valign="top" align="center"><table border="0" cellspacing="0" cellpadding="0" width='100%'>
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
        <div id='id_contenido' class='contenido' style="text-align:center "> {CONTENIDO} </div>
<script type="text/javascript">
<!-- begin hiding
if (document.images) {
	var preloadBar = ''
	for (i = 1; i < 100; i++) {
		preloadBar += '<img src="' + dots[0].src + '" width="' + coverage + '" height="' + heightOfPreloadBar + '" name="img' + i + '" align="absmiddle">'
	}
	preloadBar += '<img src="' + dots[0].src + '" width="' + (leftOverWidth+coverage) + '" height="' + heightOfPreloadBar + '" name="img100" align="absmiddle">'
	document.write(preloadBar)
	chequea_progreso()
}
// document.write('<p><small><a href="javascript:window.location=locationAfterPreload">Skip Preloading</a> &nbsp;| &nbsp;<a href="http://dynamicdrive.com/">Script Credits</a></small></p>')
// end hiding -->
</script>
        </td>
    </tr>
    <tr>
      <td height="20%" valign="bottom"><div id='id_footer' class='footer'>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="10%" align="center" class="pie-pagina"><table width="780" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="30" align="center" valign="top" class="txt-arialblanco">&nbsp; </td>
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
  {DEBUG_INFO} </div>
</body>
</html>
