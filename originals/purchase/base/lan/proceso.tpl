<link rel="stylesheet" href="/css/sitio_personas/screen.css" type="text/css">

<script type="text/javascript" src="/js/moofx/moo.fx.js"></script>
<script type="text/javascript" src="/js/moofx/moo.fx.pack.js"></script>
	
<script src="/js/proceso_compra.js" type="text/javascript"></script>
<script src="/js/wz_dragdrop.js" type="text/javascript"></script>
<script type="text/javascript" src="/js/jquery/jquery_1_4_2_min.js"></script>
<script type="text/javascript" src="/js/jquery/jquery_ui_1_8_2_custom_min.js"></script>
<script type="text/javascript" src="/js/jquery/jquery_bgiframe_min.js"></script>
<script type="text/javascript" src="/js/jquery/jquery_ui_autocomplete_accentfolding.js"></script>

<script type="text/javascript">                     
var $j = jQuery.noConflict();
</script>

<!-- INFO LOGIN -->
	<div id="accesos_top">
	{+SITIO_2010::PANEL_CLIENTE(tpl_login='sitio_personas/componentes/logeo/panel_cliente_personas.tpl', tpl_nologin='', num_panel_pagina = 1)}
	{+SITIO_2008::PANEL_UBICACION}
</div>
<!-- INFO LOGIN -->
	{+WAITING}	
<!-- CUERPO -->
	<div id="cuerpo">
		{CONTENIDO}
	</div>
<!-- CUERPO -->
