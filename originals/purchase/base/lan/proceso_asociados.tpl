<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<meta name="keywords" content="{_KEYWORDS}">
		<meta name="description" content="{_DESCRIPCION}">

		<title>{TITLE}</title>

		<link rel="stylesheet" href="/css/lan.css" type="text/css">
		<link rel="stylesheet" href="/css/base.css" type="text/css">
		<link rel="stylesheet" href="/css/navegacion.css" type="text/css">

		<script src="/js/lan.js" type="text/javascript"></script>
		<script src="/js/proceso_compra.js" type="text/javascript"></script>
		<script src="/js/wz_dragdrop.js" type="text/javascript"></script>
		<script src="/js/overlib.js" type="text/javascript"></script>

	</head>

	<body>
		<div id="externo">

			<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;">
			</div>
			<div id="espera" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >
				{ESPERA}
			</div>
			<div id="espera2" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >
				{ESPERA2}
			</div>

			<div id="panel-general">

				<form action="#" method="get">
					<div id="barra-superior">
						<ul>
							<li class="last">
								<!-- 						<a href="/home/contactenos.html" title="{_TEXTO_LINK_CONTACTENOS}">{_TEXTO_LINK_CONTACTENOS}</a> -->
								<img src="/images/html/fono.gif" alt="FonoAyuda" width="13" height="13">
								FonoAyuda: {_FONO_AYUDA}</li>
						</ul>

					</div>
				</form>
				{+LOGO}

				{+MENU_NIVEL1_ASOCIADOS}

				<div id="barra-usuario">
					{+PANEL_CLIENTE}
				</div>

				<table style="width: 100%;">
					<tr>
						<td id=panel-izq>
							{+PANEL_IZQ}

							<div id="one-world">
								<a href="/lanpass/acerca_de/oneworld.html" title="oneworld">
									<img src="/images/html/oneworld.gif" alt="oneworld" width="138" height="44">
								</a>
							</div>
						</td>
						<td id='contenido-proceso' class="contenido_proceso_con_menu">

							{CONTENIDO}
							{NAVIGATIONAL_REQUEST}

						</td>
					</tr>
				</table>

				<div id="pie">

					<table>
						<tr>
							<td>
							</td>
							<td id="links">
							</td>
						</tr>
					</table>


					<div id="barra-inferior">
						<ul>
							<li class="first">
								{_COPYRIGHT} - {_TEXTO_DERECHOS_RESERVADOS}</li>
							<li>
							<a href="/asociados/terminos_uso/index.html" title="{_TEXTO_LINK_TERMINOS_DE_USO}">{_TEXTO_LINK_TERMINOS_DE_USO}</a></li>
						</ul>
					</div>

				</div>

				{DEBUG_INFO}

			</div>

		</div>

		{+CERTIFICA}

	</body>
</html>
