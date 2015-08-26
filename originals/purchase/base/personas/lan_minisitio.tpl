{+TEMPLATE('/sitio_personas/layout/header.tpl')}
{+TEMPLATE('/sitio_personas/layout/menu_principal.tpl')}
<div id="accesos_top">
	{+SITIO_2010::PANEL_CLIENTE(tpl_login='sitio_personas/componentes/logeo/panel_cliente_personas.tpl', tpl_nologin='sitio_personas/componentes/logeo/panel_login.tpl', num_panel_pagina = 1)}
</div>


<script type="text/javascript" src="/js/json2.js">

$j.get('/sitio_personas/mensaje_contingencia.html', function(data) {
	$j('#accesos_top').append(data);
});

</script>

<div id="main">
	{CONTENIDO}
</div>
{+TEMPLATE('/sitio_personas/layout/footer_home.tpl')}

