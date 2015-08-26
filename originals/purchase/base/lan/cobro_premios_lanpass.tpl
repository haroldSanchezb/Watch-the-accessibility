<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<title>{TITLE}</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
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
				{+LOGO}
				{BARRA_PASO}

				<div id='contenido-compra'>
					{CONTENIDO}
					{NAVIGATIONAL_REQUEST}
				</div>
				{DEBUG_INFO}
				<script type="text/javascript">
					hide_layer('espera');
					hide_layer('espera2');
				</script>
			</div> <!-- panel-general -->
		</div> <!-- externo -->
	</body>
</html>
