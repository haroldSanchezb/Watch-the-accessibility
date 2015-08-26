{+TEMPLATE('/sitio_empresas/layout/header.tpl')}
{+TEMPLATE('/sitio_empresas/layout/menu_principal.tpl')}
<div id="accesos_top">
<!--{+TEMPLATE('/sitio_empresas/componentes/logueo/logueo_cliente_empresas.tpl')}-->
{+TEMPLATE('/sitio_empresas/componentes/logueo/panel_user.tpl')}
</div>
<div id="main">
	{CONTENIDO}
</div>
{+TEMPLATE('/sitio_empresas/layout/footer_log.tpl')}

