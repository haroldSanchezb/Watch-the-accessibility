<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	   <!-- "http://www.w3.org/TR/html4/loose.dtd"> -->
<head>
  <title>LAN.com {TITULO_SECCION}</title>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
  <link href="/css/base_2k8.css" rel="stylesheet" type="text/css">
  <link href="/css/legacy_base.css" rel="stylesheet" type="text/css">
  
  <link href="/css/extra_lan.css" rel="stylesheet" type="text/css">
  <link href="/css/proceso_compra_personas.css" rel="stylesheet" type="text/css">

  <script src="/js/lan.js" type="text/javascript" language="Javascript"></script>
  <script src="/js/proceso_compra.js" type="text/javascript" language="Javascript"></script>
  <script src="/js/wz_dragdrop.js" type="text/javascript" language="Javascript"></script>
  <script src="/js/overlib.js" type="text/javascript" language="Javascript"></script>
</head>

<body>
<div id='id_fullpage' class='fullpage'>
<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
<div id="espera" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >{ESPERA}</div>
<div id="espera2" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >{ESPERA2}</div>
  <script type="text/javascript" language="Javascript">
    show_layer('espera');
  </script>

  <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="90%" valign="top"> 
        <div class='header'>
    <table border="0" cellspacing="0" cellpadding="0" width='100%'>
      <tr>
        <td class="paso-inactivo" id='td_paso1'><a href='javascript:just_refresh_paso_n("1", "{NUMERO_PASO}", "{SESSION_ID}")' class='link-paso-inactivo' id='a_paso1'>1</a></td>
        <td class="paso-inactivo" id='td_paso2'><a href='javascript:just_refresh_paso_n("2", "{NUMERO_PASO}", "{SESSION_ID}")' class='link-paso-inactivo' id='a_paso2'>2</a></td>
        <td class="paso-inactivo" id='td_paso3'><a href='javascript:just_refresh_paso_n("3", "{NUMERO_PASO}", "{SESSION_ID}")' class='link-paso-inactivo' id='a_paso3'>3</a></td>
        <td class="paso-inactivo" id='td_paso4'><a href='javascript:just_refresh_paso_n("4", "{NUMERO_PASO}", "{SESSION_ID}")' class='link-paso-inactivo' id='a_paso4'>4</a></td>
        <td>&nbsp;</td>
        <td align="right" valign='top'><a href="{_URL_HOME}" OnFocus="blur();"><img src='/images/logos/logo_lan_com_azul.gif' border="0"></a></td>
      </tr>
      <tr>
        <td class="txt-paso-inactivo" id='txt_paso1'><a href='javascript:just_refresh_paso_n("1", "{NUMERO_PASO}", "{SESSION_ID}")' class='link-paso-txt'>Reservations</a></td>
        <td class="txt-paso-inactivo" id='txt_paso2'><a href='javascript:just_refresh_paso_n("2", "{NUMERO_PASO}", "{SESSION_ID}")' class='link-paso-txt'>Options</a></td>
        <td class="txt-paso-inactivo" id='txt_paso3'><a href='javascript:just_refresh_paso_n("3", "{NUMERO_PASO}", "{SESSION_ID}")' class='link-paso-txt'>Selection</a></td>
        <td class="txt-paso-inactivo" id='txt_paso4'><a href='javascript:just_refresh_paso_n("4", "{NUMERO_PASO}", "{SESSION_ID}")' class='link-paso-txt'>Confirmation</a></td>
        <td>&nbsp;</td>
              <td align='right' valign='top' class="txt-auxiliar"><a href="{_URL_CONTACTENOS}" class="gris">{_TEXTO_LINK_CONTACTENOS}</a> 
                | <a href="/ayuda/index.html" class="gris">{_TEXTO_LINK_AYUDA}</a> 
                | <a href="/index.html" class="gris">{_TEXTO_LINK_HOME}</a></td>
      </tr>
    </table>
  </div>


    <script type="text/javascript" language="Javascript">
      activar_paso('{NUMERO_PASO}');

      disabledButton[9] = new Array(12);
      disabledButton[9][0] = getElemById('td_paso1');
      disabledButton[9][1] = getElemById('td_paso2');
      disabledButton[9][2] = getElemById('td_paso3');
      disabledButton[9][3] = getElemById('td_paso4');
      disabledButton[9][4] = getElemById('td_paso5');
      disabledButton[9][5] = getElemById('td_paso6');
      disabledButton[9][6] = getElemById('txt_paso1');
      disabledButton[9][7] = getElemById('txt_paso2');
      disabledButton[9][8] = getElemById('txt_paso3');
      disabledButton[9][9] = getElemById('txt_paso4');
      disabledButton[9][10] = getElemById('txt_paso5');
      disabledButton[9][11] = getElemById('txt_paso6');

    </script>
  
  <div id='id_contenido' class='contenido'>
  {CONTENIDO} 
  {NAVIGATIONAL_REQUEST}
  </div>

</td>
  </tr>
  <tr>
      <td height="20%" valign="bottom"> 
        <div id='id_footer' class='footer'>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="10%" align="center" class="pie-pagina"> 
                <table width="780" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="30" align="center" valign="top" class="txt-arialblanco"><a href="/index_contrato_transporte.html" class="bco">{_TEXTO_LINK_CONTRATO_TRANSPORTE}</a> | <a href="/privacidad.html" class="bco">{_TEXTO_LINK_PRIVACIDAD}</a> 
                      | <a href="/terminos_uso.html" class="bco">{_TEXTO_LINK_TERMINOS_DE_USO}</a></td>
            </tr>
            <tr>
              <td align="center" class="txt-arialblanco"><br>
              {_COPYRIGHT}<br>
              {_TEXTO_DERECHOS_RESERVADOS}</td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
  </div>
</td>
  </tr>
</table>
  <script type="text/javascript" language="Javascript">
    hide_layer('espera');
    hide_layer('espera2');
  </script>
  {DEBUG_INFO}
</div>
</body>
</html>
