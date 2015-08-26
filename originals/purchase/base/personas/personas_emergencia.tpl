{+TEMPLATE('/sitio_personas/layout/header_emergencia.tpl')}

<div id="accesos_top">
	
</div>

<script type="text/javascript">

$j.get('/sitio_personas/mensaje_contingencia.html', function(data) {
	$j('#accesos_top').append(data);
});

</script>

<div id="main">
	{CONTENIDO}
</div>
{+TEMPLATE('/sitio_personas/layout/footer_page_emergencia.tpl')}
