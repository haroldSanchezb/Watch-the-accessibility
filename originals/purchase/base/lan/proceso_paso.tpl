<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<meta name="keywords" content="{_KEYWORDS}">
		<meta name="description" content="{_DESCRIPCION}">
		<title>{TITLE}</title>

		<link rel="stylesheet" href="/css/legacy_base.css" type="text/css">
		<link rel="shortcut icon" href="/favicon.ico">

		<link rel="stylesheet" href="/css/legacy_base.css" type="text/css">
		<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico">

		<script src="//cdn.optimizely.com/js/150473218.js"></script>
		
		{OLD_JS_INI}		
		<script src="/js/lan.js" type="text/javascript"></script>
		<script src="/js/iehoverfix.js" type="text/javascript"></script>
		<script src="/js/proceso_compra.js" type="text/javascript"></script>
		<script src="/js/wz_dragdrop.js" type="text/javascript"></script>
		<script src="/js/overlib.js" type="text/javascript"></script>
		<script src="/js/json.js" type="text/javascript"></script>
		<script src="/js/prototype.js" type="text/javascript"></script>
		<script src="/js/json_services.js" type="text/javascript"></script>
		<script src="/js/dynamic_components.js" type="text/javascript"></script>
		<script src="/js/application_message.js" type="text/javascript"></script>
		<script type="text/javascript" src="/js/panel_cron/base64.js"></script>
		<script type="text/javascript" src="/js/otid.js"></script>
		{OLD_JS_OUT}

        {_CODIGO_SCRIPT_CALL_BACK}

		<form name="form_encuesta" action="/encuestas/ayuda_online/index.html" target="_blank">
		<input type='hidden' name='session_id' value='{+QUERY(param=session_id,optional=1)}'>
		<input type='hidden' name='url_retorno' value='{+CURRENT_PAGE_URLENCODED}'>
		</form>

		<script type="text/javascript">
		// Para el panel de loggeo (o viene como parametro o directamente del cgi)
		window.session_id = '{+QUERY(param=session_id,optional=1)}' || '{SESSION_ID}';
		
		// Para la encuesta
		var flag_encuesta = 0;

		function encender_flag_encuesta()
			{
			flag_encuesta = 1; //un 1 indica que hay que abrir la encuesta
			}

		function apagar_flag_encuesta()
			{
			flag_encuesta = 0; //un 0 indica que no hay que abrir la encuesta
			}

		function abrir_encuesta()
			{
			// var w; comentado por cambio de pop up a form pop up
			if (flag_encuesta == 1)
				{
				document.form_encuesta.submit(); //comentado por cambio de form pop up a pop up
				// w = window.open('/encuestas/ayuda_online/index.html?session_id={+QUERY(param=session_id,optional=1)}','','scrollbars=yes,resizable=yes,width=500,height=586'); comentado por cambio de pop up a form pop up
				// w.focus(); comentado por cambio de pop up a form pop up
				}
			}

		function display_pixel() {
			var parametros = new Object();
			parametros.session_id = '{SESSION_ID}';
			Dynamic_Components.refresh_component(
				"pixel",
				"117",
				parametros,
				function() {},
				function () {},
				'1',
				'compra'
			);
		}

		function load_pixel_ajax() {
			// Try non-IE browsers first
			if (document.addEventListener) {
				document.addEventListener("DOMContentLoaded", display_pixel, false);
			}
			else {
				var prev = window.onload;
			    window.onload = function(){
					if(prev) prev();
					display_pixel();
				};
				
			}
		}


		</script>
		
		{+GOOGLE_ANALYTICS(session_id='{SESSION_ID}')}
		{GA_CUSTOM_VARS}
	</head>
	<body onunload="abrir_encuesta()">
	{GOOGLE_TAG_MANAGER_VARIABLES}
	{+CLICKTALE_START}
	{+WAITING}
    {+LOGO(en_proceso='Y')}
		<div id=externo>
			<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
			<div id="espera" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >{ESPERA}</div>
			<div id="espera2" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >{ESPERA2}</div>
			<div id="panel-general">
				
                {+TEMPLATE('/host_modal/modal_window_host.tpl')}

				{BARRA_PASO}
				<br>

				{+SITIO_2008::PANEL_CLIENTE_PASO}

				<div id='contenido-proceso'>
				
					{CONTENIDO}
					{NAVIGATIONAL_REQUEST}
				</div>
				
				{DEBUG_INFO}
			</div> <!-- panel-general -->
			{+PIXEL(session_id='{SESSION_ID}',type='javascript')}
			<div id="pixel"></div>
		</div> <!-- externo -->
        {+TEMPLATE('/componentes/sitio_2008/panel_pie_de_pagina_interior_procesos.tpl')}
		{+TEMPLATE('utils/layer_general.tpl')}
        {+TEMPLATE('/base/lan/google_tag_manager.tpl')}

		{+CERTIFICA}
		{+DEBUG}
		{CLICKTALE_TAGS_JS}
		{+CLICKTALE_END}
	</body>
</html>
