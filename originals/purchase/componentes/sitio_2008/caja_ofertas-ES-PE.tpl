<div class="cabecera">
	<img src="/images/common/logo_dd_cl.gif" width="170" height="33" alt="Destinos Destacados LAN.com">
</div>

{*ITEM_OUM}
<p class="ofertas oum">
	<span><a href="{LINK}">{TEXTO}</a></span>
	<span class="valor"><big style="font-size:110%">S./&nbsp;{MONTO_SECUNDARIO}&nbsp;&nbsp;</big><small style="font-size:85%">US$&nbsp;{MONTO_PRECIO}</small></span>
</p>
{/ITEM_OUM}
{*ITEM}
<p class="ofertas">
	<span><a href="{LINK_PROCESO_COMPRA}">{TEXTO}</a></span>
	<span class="valor">{_DESDE} <big style="font-size:110%">{_SIGNO_MONEDA_{MONEDA}}&nbsp;{MONTO_FINAL_A_MOSTRAR}</big>&nbsp;&nbsp;<small style="font-size:85%">{_SIGNO_MONEDA_{OTRA_MONEDA_PARA_MOSTRAR}}&nbsp;{+MOSTRADOR({ID_OFERTA},monto_final_en_moneda_secundaria,Y)}</small></span>
</p>
{/ITEM}

<div id="footer_ofertas_de_ultimo_minuto">
	<a href="/lanpass/inscripcion.html">{_LABEL_RECIBA_OFERTAS}</a>
	<link rel="alternate" type="application/rss+xml" title="Ofertas LAN.com" href="/cgi-bin/feeds/ofertas.cgi{+SITIO_2008::FEED_PARAM}">
	<a href="/promociones/data/todo_el_mundo/rss.html" class="flotar_der"><img src="/images/common/rss.gif" class="rss" alt="" width="42px" height="17px"></a>
{*LINK_OFERTAS}
	<a href="/cgi-bin/compra/oum.cgi" class="ver_mas flotar_izq">+ {_LABEL_MAS_OFERTAS}</a>
{/LINK_OFERTAS}
	<div class="clear_fix"></div>
</div>

