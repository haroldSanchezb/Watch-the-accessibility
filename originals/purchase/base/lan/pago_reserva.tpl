<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<title>{TITLE}</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		
		<link href="/css/lan.css" rel="stylesheet" type="text/css">
		<link href="/css/base_2k8.css" rel="stylesheet" type="text/css">
		<link href="/css/legacy_base.css" rel="stylesheet" type="text/css">
		
		<script src="/js/lan.js" type="text/javascript"></script>
		<script src="/js/proceso_compra.js" type="text/javascript"></script>
		<script src="/js/wz_dragdrop.js" type="text/javascript"></script>
		<script src="/js/overlib.js" type="text/javascript"></script>
	</head>

	<body>
		<div id=externo>
			<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
			<div id="espera" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >{ESPERA}</div>
			<div id="espera2" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >{ESPERA2}</div>
			<script type="text/javascript">
    			show_layer('espera');
			</script>

			<div id=panel-general>
				{+SITIO_2008::PANEL_TITULO}
				{BARRA_PASO}

				<div id=contenido-compra>
					{CONTENIDO}
					{NAVIGATIONAL_REQUEST}
					<script type="text/javascript">
		 				hide_layer('espera');
		 				hide_layer('espera2');
					</script>
				</div>
				{DEBUG_INFO}
			</div>
		</div>
	</body>
</html>
