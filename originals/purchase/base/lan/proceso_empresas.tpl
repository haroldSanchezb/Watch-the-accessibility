<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<meta name="keywords" content="{_KEYWORDS}">
		<meta name="description" content="{_DESCRIPCION}">

		<title>{TITLE}</title>

		<link rel="stylesheet" href="/css/base_empresa.css" type="text/css">
		<link rel="stylesheet" href="/css/servicios.css" type="text/css">
		<script type="text/javascript" src="/js/prototype.js"></script>
		<script type="text/javascript" src="/js/moofx/moo.fx.js"></script>
		<script type="text/javascript" src="/js/moofx/moo.fx.pack.js"></script>


		<script src="/js/lan.js" type="text/javascript"></script>
		<script src="/js/iehoverfix.js" type="text/javascript"></script>
		<script src="/js/proceso_compra.js" type="text/javascript"></script>
		<script src="/js/wz_dragdrop.js" type="text/javascript"></script>
		<script src="/js/overlib.js" type="text/javascript"></script>
		<script type="text/javascript" src="/js/jquery/jquery_1_4_2_min.js"></script>
        <script type="text/javascript" src="http://www.lan.com/es_cl/js/sitio_personas/menu.js"></script>
		<script type="text/javascript">
			// desplazamiento
				var $j = jQuery.noConflict();
				$j(function(){
					$j(".contModulos").each(function(){
						var elem = $j(this);
						var texto;
						$j(".linkModulo a", elem).toggle(function(){
							$j(".contDesplaza", elem).show();
							var texto = $j(".contDesplaza", elem).text();
							$j("a", elem).text("{_LABEL_OCULTAR_DATOS_JS}");
						}, function(){
							$j(".contDesplaza", elem).hide();
							$j("a", elem).text("{_LABEL_MOSTRAR_DATOS_JS}");
						});
					});
				});
		</script>


		{+GOOGLE_ANALYTICS(session_id='{SESSION_ID}')}
	</head>

	<body>
	{+TEMPLATE('/base/lan/google_tag_manager.tpl')}
		<div id=externo>

			<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;">
			</div>
			<div id="espera" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >
				{ESPERA}
			</div>
			<div id="espera2" style="position:absolute; width:100%; height:100px; z-index:2; left: 0px; top: 200px; visibility: hidden; text-align: center" >
				{ESPERA2}
			</div>
			<div id=panel-general>
              {+LOGO}
				<!--<div id="top" class="img_top_es">
					<div id="nav">
                        	<table class="flotar_der">
     							 <tr>
        							<td class="ico_telefono">&nbsp;</td>
        							<td><span class="top_telefono">{_CONTACTENOS_FONO_EMPRESAS}</span></td>-->
        							<!--<td>&nbsp;|&nbsp;</td>
        							<td><a style="text-decoration: underline; color:#FFFFFF" href="/empresas/oficinas.html">{_TEXTO_LINK_CONTACTENOS}</a></td> -->
      						<!--	</tr>
    						</table>
                    </div>
					<a href='/empresas/index.html'><img src='/images/logos/logo_empresas_new.gif' width=200 height=65 id="logo_empresas" alt='logo LAN'></a>
				</div>-->
				{+MENU_NIVEL1_EMPRESAS}
                      <div id="barra-usuario"> {+PANEL_CLIENTE} </div>
						<div id='contenido-proceso' class="contenido_proceso_con_menu">
							{CONTENIDO}
							{NAVIGATIONAL_REQUEST}
						</div>
				<!--<div id="pie">
					<table>
						<tr>
							<td></td>
							<td id="links"></td>
						</tr>
					</table>
					<div id="barra-inferior">
						<ul>
							<li class="first">{_COPYRIGHT} - {_TEXTO_DERECHOS_RESERVADOS}</li>
						</ul>
					</div>
				</div> -->
				<!-- FOOTER -->
<div id="footer">
  <div id="cont-left">
    <div class="link-top">
    <a href="/home/contrato_transporte.html">{_TEXTO_LINK_CONTRATO_TRANSPORTE}</a>
    | <a href="/about_us/noticias/cargo_por_servicio_empresas_nolog.html">Cargo por servicio</a>
        <!--<a href="/asociados/index.html">MUNDOLAN</a>| -->
        <!--<a href="/trotamundo_new/index.html">Staff Travel</a>-->
    </div>
    <div class="link-bottom">
    	<!--<a href="http://www.lancargo.com/">LANCARGO</a>|
        <a href="http://es.lancargo.com/descargas/itinerarios/pdf/Tarifario_Dic_2007.pdf">Tarifas LANCARGO</a>-->
    </div>
    <div class="link-bottom">
		<!--<a href="/reservas/informacion_de_tarifas/cargo_combustible_v2.html">Cargo por Combustible</a> -->
        <!--<a href="http://es.lancargo.com/descargas/itinerarios/pdf/Tarifario_Dic_2007.pdf">Tarifas LANCARGO</a> -->
    </div>
  </div>
  <div id="cont-right">
    <a class="link-oneworld" href="/about_us/oneworld/oneworld.html">{_LABEL_MIEMBRO}</a>
  </div>
</div>
<div id="footer-creditos">
	<div class="left">
    	{_COPYRIGHT} - {_TEXTO_DERECHOS_RESERVADOS}.
    </div>
    <div class="right">
    	<a href="/home/terminos_uso.html">{_TEXTO_LINK_TERMINOS_DE_USO}</a>|
        <a href="/home/privacidad.html">{_TEXTO_LINK_PRIVACIDAD}</a><!--|
        <a href="/home/site_map.html">{_TEXTO_LINK_MAPA_SITIO}</a>|
    	<a href="/contactenos/index.html">{_TEXTO_LINK_CONTACTENOS}</a> -->
    </div>
</div>
<!-- FOOTER -->
				{DEBUG_INFO}
			</div>
			<!-- panel-general -->
		</div>
		<!-- externo -->

		{+DEBUG}
	</body>
</html>
