<div class="cabecera">
<img src="/images/common/logo_dd_cl.gif" width="170" height="33" alt="Destinos Destacados LAN.com">
</div>

{*ITEM_OUM}
<p class="ofertas oum">
	<span><a href="{LINK}">{TEXTO}</a></span>
	<span class="valor"><big style="font-size:100%">S./&nbsp;{MONTO_SECUNDARIO}&nbsp;&nbsp;</big><small style="font-size:100%">US$&nbsp;{MONTO_PRECIO}</small></span>
</p>
{/ITEM_OUM}
{*ITEM}
<p class="ofertas">
	<span><a href="{L_OFERTA}">{TEXTO}</a></span>
	<span class="valor">{_DESDE} <big style="font-size:100%">{MONEDA}&nbsp;{PRECIO}</big>&nbsp;&nbsp;<small style="font-size:100%">{MONEDA_SECUNDARIA}&nbsp;{PRECIO_SECUNDARIO}</small></span>
</p>
{/ITEM}

<div id="footer_ofertas_de_ultimo_minuto">
	<a href="/lanpass/inscripcion.html">{_LABEL_RECIBA_OFERTAS}</a>
	<link rel="alternate" type="application/rss+xml" title="Ofertas LAN.com" href="/cgi-bin/feeds/ofertas.cgi{+SITIO_2008::FEED_PARAM}">
	<a href="/cgi-bin/feeds/ofertas.cgi{+SITIO_2008::FEED_PARAM}" class="flotar_der"><img src="/images/common/rss.gif" class="rss" alt="" width="42" height="17"></a>
{*LINK_OFERTAS}
	<a href="/promociones/index.html" class="ver_mas flotar_izq">+ {_LABEL_MAS_OFERTAS}</a>
{/LINK_OFERTAS}
	<div class="clear_fix"></div>
</div>

