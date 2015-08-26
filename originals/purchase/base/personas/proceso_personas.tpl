{+TEMPLATE('/sitio_personas/layout/header.tpl')}
{+TEMPLATE('/sitio_personas/layout/menu_principal.tpl')}
<div id="accesos_top">
	{+SITIO_2010::PANEL_CLIENTE(tpl_login='sitio_personas/componentes/logeo/panel_cliente_personas.tpl', tpl_nologin='sitio_personas/componentes/logeo/panel_login.tpl', num_panel_pagina = 1)}
	<p>{+SITIO_2008::PANEL_UBICACION}</p>
</div>
<div id="main">
	{CONTENIDO}
</div>
{+TEMPLATE('/sitio_personas/layout/footer_page.tpl')}
