<style type="text/css">
.fadebox_modal {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 1100px;
	background-color: white;
	z-index:1001;
	-moz-opacity: 0.8;
	opacity:.80;
	filter: alpha(opacity=80);
}

/* IE6 Only */
* html .fadebox_modal {
	width:230%;
}
.overbox_modal {
	display: none;
	position: absolute;
	top: 10%;
	*top: 130%; /* ie7 e inferiores */
	left:0;
	height: 100%;
	z-index:1002;
	overflow: hidden;
	overflow-x: hidden;
	width:100%;
}
/* IE6 Only */
* html .overbox_modal {
	width: 100%;
	left: 28%;
}
#content_modal {
	background: #FFFFFF;
	/*padding: 10px;*/
	width:600px;
	margin:0px auto 0px auto;
	overflow-x: hidden;
	overflow-y:hidden;
	height:380px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0px 0px 2px 2px #8e8e8e;
	box-shadow: 0px 0px 2px 2px #8e8e8e;
}
.texto_lightbox_modal{
	background: #ffffff;
	padding: 10px;
	width:580px;
	margin:0px;
	z-index:1008;
	overflow:hidden;
	height: 335px;
	position: absolute;
}
.cerrar_modal{
	background: #2f73ba;
	padding: 5px 0px 0px 10px;
	width:590px;
	margin:0px;
	text-align:right;
	height:18px;
}

.texto_cerrar_modal{
	background: #2f73ba;
	padding: 0px;
	width:580px;
	margin:0px;
	float:left;
	text-align:right;
}
.texto_cerrar_modal a:link{
	padding: 0px;
	margin:0px;
	color:#fff;
	text-decoration:underline;
}
.texto_cerrar_modal a:hover{
	padding: 0px;
	margin:0px;
	color:#ffffff;
	text-decoration:underline;
}
.imagen_cerrar_modal{
	padding: 0px 4px 0px 0px;
	margin:0px;
	text-align:right;
	border:0;
	float:left;
	width:16px;
}
.imagen_cerrar_modal a:link img{
	padding: 0px;
	margin:0px;
	text-align:right;
	border:0;

}

#contenido_lightbox {
	margin: 0 10px;
	padding: 0;
}
#contenido_lightbox h3 {
	color: #033D7D;
}
#contenido_lightbox table {
	border-collapse: collapse;
}
</style>



<div class="overbox_modal" id="application_message" style="display: none;">
  <div id="content_modal">
	<div class="cerrar_modal">
	  <div class="texto_cerrar_modal">
		<a href="#" id="close_lightbox"><strong>{_LABEL_CERRAR} X</strong></a>
	  </div>
	</div>
	<div class="texto_lightbox_modal">
	  <div id="contenido_lightbox"> </div>
	</div>
  </div>
</div>
<div class="fadebox_modal" id="fade">&nbsp;</div>
