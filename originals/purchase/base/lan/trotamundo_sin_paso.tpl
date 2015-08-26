<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<meta name="keywords" content="{_KEYWORDS}">
		<meta name="description" content="{_DESCRIPCION}">
		<title>{TITLE}</title>

		<link rel="stylesheet" href="/css/legacy_base.css" type="text/css">
		<script type="text/javascript" src="/es_cl/js/jquery/jquery_1_4_2_min.js"></script>
		
	</head>
	<body >
    {+LOGO(en_proceso='Y')}
		<div id=externo>
			<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
			<div id="espera" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >{ESPERA}</div>
			<div id="espera2" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >{ESPERA2}</div>
			<div id="panel-general">
				

	<div id="info">
		<div id="login" class="flotar_der">{+SITIO_2008::PANEL_CLIENTE_PASO}</div>
	</div>
				<div id='contenido-proceso'>
				
					{CONTENIDO}
					{NAVIGATIONAL_REQUEST}
				</div>
				
				{DEBUG_INFO}
                {+TEMPLATE('/componentes/sitio_2008/panel_pie_de_pagina_interior_procesos.tpl')}
			</div> <!-- panel-general -->
			<div id="pixel"></div>
		</div> <!-- externo -->
        
		{+TEMPLATE('utils/layer_general.tpl')}

		{+DEBUG}
	</body>
</html>
