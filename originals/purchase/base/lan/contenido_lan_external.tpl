<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<meta name="keywords" content="{_KEYWORDS}">
		<meta name="description" content="{_DESCRIPCION}">
		<title>{TITLE}</title>
		<link rel="stylesheet" href="/css/base_2k8.css" type="text/css">
		<link rel="stylesheet" href="/css/legacy_base.css" type="text/css">
		
		<script src="/js/lan.js" type="text/javascript"></script>
		<script src="/js/iehoverfix.js" type="text/javascript"></script>
		<script src="/js/proceso_compra.js" type="text/javascript"></script>
		<script src="/js/wz_dragdrop.js" type="text/javascript"></script>
		<script src="/js/overlib.js" type="text/javascript"></script>
		{+GOOGLE_ANALYTICS(session_id='{SESSION_ID}')}
	</head>
	<body>
		{+TEMPLATE('/base/lan/google_tag_manager.tpl')}
		<div id=externo>
			<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
			<div id="espera" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >{ESPERA}</div>
			<div id="espera2" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >{ESPERA2}</div>
			<div id=panel-general>
				<div id="top" class="img_top_es">
			  <div id="nav">
				<table class="flotar_der">
				  <tr>
					<!--<td>&nbsp;|&nbsp;</td>
					<td><a style="text-decoration: underline;" href="/contactenos/">{_TEXTO_LINK_CONTACTENOS}</a></td>
					<td>&nbsp;|&nbsp;</td>-->
					<!-- al descomentar el form hay que eliminar el siguiente style del TD -->
					<td style="width: 120px">&nbsp;<!--<form name="form_buscar" action="/cgi-bin/search.cgi" method="get">
						<table>
						  <tr>
							<td><span>{_LABEL_BUSCAR}</span>:&nbsp;</td>
							<td><input type="text" style="background-image: url(/images/common/bg_buscar.gif); width: 101px; height: 15px; border: none; font-size: 1em; padding: 1px; margin: 0 2px 0 3px;" name="q" id="buscar"></td>
							<td><input type="image" src="/images/common/btn_ir.gif" class="btn_ir"></td>
						  </tr>
						</table>
					  </form>--></td>
				  </tr>
				</table>
			  </div>
			  <a href="{_URL_HOME}"><img src="/images/common/logo_lan.jpg" width="208" height="57" id="logo_lan" alt=""></a></div>
				<br>
				
				<div id='contenido-compra'>
					{CONTENIDO}
					{NAVIGATIONAL_REQUEST}
				</div>
			</div> <!-- panel-general -->
		</div> <!-- externo -->
		{+SITIO_2008::PANEL_PIE_DE_PAGINA(simple = 1)}
	{+DEBUG}
	</body>
</html>
