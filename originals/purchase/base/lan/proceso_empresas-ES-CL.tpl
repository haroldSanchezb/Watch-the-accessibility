<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<meta name="keywords" content="{_KEYWORDS}">
		<meta name="description" content="{_DESCRIPCION}">

		<title>{TITLE}</title>

		<link rel="stylesheet" href="/css/sitio_empresas/servicios_empresas.css" type="text/css">
		<link rel="stylesheet" href="/css/servicios.css" type="text/css">
        <link rel="stylesheet" href="/css/sitio_empresas/sitio_empresas.css" type="text/css">

		<script type="text/javascript" src="/js/prototype.js"></script>
		<script type="text/javascript" src="/js/moofx/moo.fx.js"></script>
		<script type="text/javascript" src="/js/moofx/moo.fx.pack.js"></script>


		<script src="/js/lan.js" type="text/javascript"></script>
		<script src="/js/iehoverfix.js" type="text/javascript"></script>
		<script src="/js/proceso_compra.js" type="text/javascript"></script>
		<script src="/js/wz_dragdrop.js" type="text/javascript"></script>
		<script src="/js/overlib.js" type="text/javascript"></script>
		<script type="text/javascript" src="/js/jquery/jquery_1_4_2_min.js"></script>
        <script type="text/javascript" src="http://www.lan.com/es_cl/js/sitio_personas/menu.js"></script>
		<script type="text/javascript">
			// desplazamiento
				var $j = jQuery.noConflict();
				$j(function(){
					$j(".contModulos").each(function(){
						var elem = $j(this);
						var texto;
						$j(".linkModulo a", elem).toggle(function(){
							$j(".contDesplaza", elem).show();
							var texto = $j(".contDesplaza", elem).text();
							$j("a", elem).text("{_LABEL_OCULTAR_DATOS_JS}");
						}, function(){
							$j(".contDesplaza", elem).hide();
							$j("a", elem).text("{_LABEL_MOSTRAR_DATOS_JS}");
						});
					});
				});
		</script>
		{+GOOGLE_ANALYTICS(session_id='{SESSION_ID}')}
	</head>
	<body>
	{+TEMPLATE('/base/lan/google_tag_manager.tpl')}
		<div id=externo>
			<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
			<div id="espera" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >
				{ESPERA}
			</div>
			<div id="espera2" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >
				{ESPERA2}
			</div>
			<div id=panel-general>
				{+LOGO}
				{+TEMPLATE('/sitio_empresas/layout/menu_principal.tpl')}
				<div id='contenido-proceso' class="contenido_proceso_con_menu">
					{CONTENIDO}
					{NAVIGATIONAL_REQUEST}
				</div>
				
<!-- FOOTER -->
    {+TEMPLATE('/sitio_empresas/layout/footer_log.tpl')}
<!-- FOOTER -->
				{DEBUG_INFO}
			</div>
<!-- panel-general -->
		</div>
<!-- externo -->

		{+DEBUG}
	</body>
</html>
