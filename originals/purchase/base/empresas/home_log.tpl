{+TEMPLATE('/sitio_empresas/layout/header.tpl')}
{+TEMPLATE('/sitio_empresas/layout/menu_principal.tpl')}
<div id="accesos_top">
<!--{+TEMPLATE('/sitio_empresas/componentes/logueo/logueo_cliente_empresas.tpl')}-->
{+TEMPLATE('/sitio_empresas/componentes/logueo/panel_user.tpl')}
</div>
<div id="main">
	<script type="text/javascript" src="http://www.lan.com/es_cl/js/sitio_personas/moot.js"></script>
    <script type="text/javascript" src="http://www.lan.com/es_cl/js/sitio_personas/jdg.js"></script>
    <script type="text/javascript" src="http://www.lan.com/es_cl/js/lan.js"></script>
    <script type="text/javascript" src="http://www.lan.com/es_cl/js/sitio_personas/caja_compra.js"></script>
    <!--<script type="text/javascript" src="http://www.lan.com/es_cl/js/flex_data.js"></script>-->
    <!-- Flex data js comentado por matriz forzada en caja de compra - abravo - 23 11 2010 - solicitud de produccion --> 
    
    <script type="text/javascript" src="http://www.lan.com/es_cl/js/cabinas_caja_compra_data.js"></script>
    <script type="text/javascript" src="http://www.lan.com/es_cl/js/jscalendar/calendar_new.js"></script>
    <script type="text/javascript" src="http://www.lan.com/es_cl/js/jscalendar/calendar_setup_new.js"></script>
    <script type="text/javascript" src="http://www.lan.com/es_cl/js/jscalendar/lang/calendar_lang.js"></script>
    <script type="text/javascript" src="http://www.lan.com/es_cl/js/jquery/jquery_ui_autocomplete_selectfirst.js"></script>
        {CONTENIDO}
    </div>
{+TEMPLATE('/sitio_empresas/layout/footer_log.tpl')}

