<div class="cabecera">
<img src="/images/common/logo_dd_us.gif" alt="Featured Destinations" width="170" height="33">
</div>

{*ITEM_OUM}
<p class="ofertas oum">
	<span><a href="{LINK}">{TEXTO}</a></span>
	<span class="valor">{MONEDA_PRECIO}{MONTO_PRECIO}</span>
</p>
{/ITEM_OUM}
{*ITEM}
<p class="ofertas">
	<span><a href="{L_OFERTA}">{TEXTO}</a></span>
	<span class="valor">{_DESDE} {MONEDA}{PRECIO}</span>
</p>
{/ITEM}

<div id="footer_ofertas_de_ultimo_minuto_chica">
	<link rel="alternate" type="application/rss+xml" title="Ofertas LAN.com" href="/cgi-bin/feeds/ofertas.cgi{+SITIO_2008::FEED_PARAM}">
	<a href="/promociones/data/todo_el_mundo/rss.html" class="flotar_der"><img src="/images/common/rss.gif" class="rss" alt="" width="42" height="17"></a>
{*LINK_OFERTAS}
	<a href="/promociones/index.html" class="ver_mas flotar_izq">+ {_LABEL_MAS_OFERTAS}</a>
{/LINK_OFERTAS}
	<div class="clear_fix"></div>
</div>
