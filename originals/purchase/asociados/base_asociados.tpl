<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<!-- Metadata -->
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<meta name="keywords" content="{_KEYWORDS}">
		<meta name="description" content="{_DESCRIPCION}">
		<title>{TITLE}</title>

		<!-- CSS -->
		<link rel="shortcut icon" href="/favicon.ico" >
		<link rel="stylesheet" href="/css/asociados/template.css" type="text/css">
		<link rel="stylesheet" href="/css/asociados/paginas.css" type="text/css">
		<link rel="stylesheet" href="/css/asociados/navegacion.css" type="text/css">
		<link rel="stylesheet" href="/css/asociados/tooltip.css" type="text/css">
		<link rel="stylesheet" href="/css/asociados/calendario.css" type="text/css">
		
		<!-- Javascript -->
		<!--
		<script type="text/javascript" src="/js/asociados/funciones.js"></script>
		-->
		<script type="text/javascript" src="/js/asociados/swfobject.js"></script>
		<script type="text/javascript" src="/js/asociados/tooltip.js"></script>
		<script type="text/javascript" src="/js/asociados/jscalendar/calendar.js"></script>
		<script type="text/javascript" src="/js/asociados/jscalendar/lang/calendar-es.js"></script>
		<script type="text/javascript" src="/js/asociados/jscalendar/calendar-setup.js"></script>
		<!--[if IE 6]>
			<link href="/css/ie6.css" rel="stylesheet" type="text/css" media="all">
		<![endif]-->


		<script type="text/javascript" src="http://www.lan.com/js/lan-es-cl.js"></script>
		<script type="text/javascript" src="http://www.lan.com/js/prototype-es-cl.js"></script>
		<script type="text/javascript" src="http://www.lan.com/js/json-es-cl.js"></script>
		<script type="text/javascript" src="http://www.lan.com/js/json_services-es-cl.js"></script>
		<script type="text/javascript" src="http://www.lan.com/js/dynamic_components-es-cl.js"></script>
		<script type="text/javascript" src="http://www.lan.com/js/moofx/moo.fx-es-cl.js"></script>
		<script type="text/javascript" src="http://www.lan.com/js/moofx/moo.fx.pack-es-cl.js"></script>
		<script type="text/javascript" src="http://www.lan.com/js/swfobject-es-cl.js"></script>
								
		<script src="/js/lan.js" type="text/javascript"></script>
		<script src="/js/prototype.js" type="text/javascript"></script>
	    <script src="/js/json.js" type="text/javascript"></script>
	    <script src="/js/json_services.js" type="text/javascript"></script>
	    <script src="/js/dynamic_components.js" type="text/javascript"></script>
					

	</head>
	
	<body>

	{+ASOCIADOS::PANEL_TITULO}	
	{+ASOCIADOS::MENU_HORIZONTAL}

	<div id="info">
		{+ASOCIADOS::PANEL_UBICACION}
	</div>

	{CONTENIDO}

	{+TEMPLATE("asociados/footer.tpl")}

	{+SITIO_2008::DEBUG}

	</body>	

</html>
