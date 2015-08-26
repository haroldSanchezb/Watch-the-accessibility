<style type="text/css">
/*COMUNICACION DE MENSAJES PROMOCIONALES EN PROCESOS NUEVO LAY OUT*/
.compartir-paso6 {/*width:100%;*/
	border: 1px solid #CCC;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: #CCC 0px 2px 3px;
	-moz-box-shadow: #CCC 0px 2px 3px;
	box-shadow: #CCC 0px 2px 3px;
	background: #FBFAF9;
	background: -webkit-gradient(linear, 0 0, 0 bottom, from(#FBFAF9), to(#EAEAEA));
	background: -webkit-linear-gradient(#FBFAF9, #EAEAEA);
	background: -moz-linear-gradient(#FBFAF9, #EAEAEA);
	background: -ms-linear-gradient(#FBFAF9, #EAEAEA);
	background: -o-linear-gradient(#FBFAF9, #EAEAEA);
	background: linear-gradient(#FBFAF9, #EAEAEA);
	padding: 8px 0 11px 5px;
	width:48%;
	height:84px;
	float:left;
	margin:20px 23px 0 0;
}
.compartir-paso6 img {
	float:left;
	padding-bottom:5px;
	margin:0;
}
.titulo_compartir-paso6 {
	font-family:Arial, Helvetica, sans-serif;
	color: #033D7D !important;
	font-size: 1.2em;
	font-weight: bold;
	vertical-align:top;
	margin-top:10px;
}

.titulo_compartir-paso6 .fbk-compartir{
	font-family:Arial, Helvetica, sans-serif;
	font-size:0.8em;
	text-decoration:underline;
	color:#0367C3 !important;
	}

/*WIDGET*/

.widget-destino {/*width:100%;*/
	border: 1px solid #CCC;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: #CCC 0px 2px 3px;
	-moz-box-shadow: #CCC 0px 2px 3px;
	box-shadow: #CCC 0px 2px 3px;
	background: #FBFAF9;
	background: -webkit-gradient(linear, 0 0, 0 bottom, from(#FBFAF9), to(#EAEAEA));
	background: -webkit-linear-gradient(#FBFAF9, #EAEAEA);
	background: -moz-linear-gradient(#FBFAF9, #EAEAEA);
	background: -ms-linear-gradient(#FBFAF9, #EAEAEA);
	background: -o-linear-gradient(#FBFAF9, #EAEAEA);
	background: linear-gradient(#FBFAF9, #EAEAEA);
	padding: 8px 0 11px 5px;
	width:48%;
	float:left;
	height:84px;
	margin-top:20px;
}
.widget-destino img {
	float:left;
	padding:0px;
}

.texto_widget-destino {
	font-family:Arial, Helvetica, sans-serif;
	color: #333;
	font-size: 1.2em;
}
.widget-destino .button-page-bluegrey-msg {
	display: inline-block;
	margin: 0 20px 0 0;
	border: 0;
	height:15px;
	padding: 4px 15px 5px 10px;
	text-align: right;
	line-height:25px;
	font: bold 11px Arial, Helvetica, sans-serif;
	color: #fff;
	cursor: pointer;
	overflow: visible;
	text-decoration: none;
	cursor: pointer;
	-ms-border-radius: 3px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	-khtml-border-radius: 3px;
	border-radius: 4px;
	background: url(/images/common/bg_button_page_bluegrey.gif) right top no-repeat;
}
a.button-page-bluegrey-msg:link, a.button-page-bluegrey-msg:visited, a.button-page-bluegrey-msg:hover {
	color: #FFF;
	text-decoration: none;
}
</style>

      <div class="compartir-paso6"> <img src="/es_cl/images/procesos/dedo_compartir.png" width="116" height="95" alt="Comparte con tus amigos">
          <p class="titulo_compartir-paso6">Ahora comparte tu viaje con todos tus amigos. <br><br>
            <span class="fbk-compartir"> 

		<script type="text/javascript">
		<!-- 
	        if (to_city!="")
			document.write('<a title="Me voy de viaje" name="fb_share" type="icon_link" share_url="http://www.lan.com/es_cl/sitio_personas/mevoydeviaje.html?destino=' + to_city + '">Compartir</a>');
		else
			document.write('<a title="Me voy de viaje" name="fb_share" type="icon_link" share_url="http://www.lan.com/es_cl/sitio_personas/mevoydeviaje.html');
		//-->
		</script>

            <script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script>
            </span> 
           </p>
        </div>


<!-- 
Comienzo del widget que cargara el link a la guia de destinos
de la ciudad indicada en la URL como "destino". Por ejemplo:
http://www.lan.com/promociones/index.html?destino=SCL
-->

{+TEMPLATE('widgets/ciudades_guias_destino.tpl')}

<script type="text/javascript">
<!-- 

var destino= to_city; // en este campo se reemplaza destino por lo que venga en el paso 6 del proceso de compras (definido en paso6.tpl)

var info_destino=get_guia_y_nombre_destino(destino); // llamamos a la funcion que entrega la url (viene definida en el template ciudades_guias_destino.tpl)

var url_destino=info_destino[0];
var nombre_destino=info_destino[1];

if (url_destino!="" && nombre_destino!="") // si el destino ingresado esta en la lista, muestro el widget
	{
	document.write('<div class="widget-destino"><a title="Descubre tu destino con Lonely Planet" href="' + url_destino + '"><img id="foto_destino" src="/es_cl/images/procesos/globo_destinos.png" alt="Gu&iacute;a de Destinos"/></a> <p class="titulo_compartir-paso6">Toda la informaci&oacute;n de tu destino en nuestras gu&iacute;as Lonely Planet.</p><a title="Descubre tu destino con Lonely Planet" href="' + url_destino + '"><div class="button-page-bluegrey-msg">Descubre ' + nombre_destino + '</div></a></div>');
	}
//-->
</script>
