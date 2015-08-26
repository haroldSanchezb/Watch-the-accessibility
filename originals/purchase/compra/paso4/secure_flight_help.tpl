<script type="text/javascript">
if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){ 
 var ieversion=new Number(RegExp.$1)
}


function showLightbox(layer) {
	window.scroll(0,0);
	document.getElementById(layer).style.display='block';
	document.getElementById('fade').style.display='block';
	if (/MSIE (\d+\.\d+);/.test(navigator.userAgent))
	{
		if (ieversion>=6)
		selects = document.getElementsByTagName("select");
		for (i = 0; i != selects.length; i++) {
			selects[i].style.visibility = "hidden";
		}
	}
}
function hideLightbox(layer) {
	document.getElementById(layer).style.display='none';
	document.getElementById('fade').style.display='none';
	if (/MSIE (\d+\.\d+);/.test(navigator.userAgent))
	{
	
		selects = document.getElementsByTagName("select");
		for (i = 0; i != selects.length; i++) {
			selects[i].style.visibility = "visible";
		}
	}
}
</script>
<style type="text/css">
<!--
/************** INICIO CSS PARA LIGHT_BOX *******************/
.fadebox2 {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 1200px;
	background-color: white;
	z-index:1001;
	-moz-opacity: 0.8;
	opacity:.80;
	filter: alpha(opacity=80);
}
.overbox2 {
	display: none;
	position: absolute;
	top: 25%;
	left: 25%;
	width: 50%;
	height: 50%;
	z-index:1002;
	overflow: auto;
	overflow-x: hidden;
}
#content2 {
	background: #FFFFFF;
	border: solid 8px #2f73ba;
	-webkit-border-radius: 5px;
	border-radius: 5px;
-webkit-box-shadow: 0px 0px 2px 2px #8e8e8e;
	box-shadow: 0px 0px 2px 2px #8e8e8e;
	/*padding: 10px;*/
	width:350px;
	margin:0px auto 0px auto;
	overflow-x: hidden;
	overflow:hidden;	
}
.texto_lightbox2{
	background: #ffffff;
	padding: 10px;
	width:330px;
	margin:0px;
	z-index:1008;
	overflow:hidden;
}
.cerrar2{
	background: #2f73ba;
	padding: 5px 0px 0px 10px;
	width:340px;
	margin:0px;
	text-align:right;
	height:18px;
}

.texto_cerrar2{
	background: #2f73ba;
	padding: 0px;
	width:320px;
	margin:0px;
	float:left;
	text-align:right;
}
.texto_cerrar2 a:link{
	padding: 0px;
	margin:0px;
	color:#ffffff;
	text-decoration:none;
}
.texto_cerrar2 a:hover{
	padding: 0px;
	margin:0px;
	color:#ffffff;
	text-decoration:underline;
}
.imagen_cerrar2{
	padding: 0px 4px 0px 0px;
	margin:0px;
	text-align:right;
	border:0;
	float:left;
	width:16px;
}
.imagen_cerrar2 a:link img{
	padding: 0px;
	margin:0px;
	text-align:right;
	border:0;

}
/************** FIN CSS PARA LIGHT_BOX *******************/
-->
</style>

<!-- INICIO DIV LIGHTBOX AYUDA -->
<div id='ayuda' class="overbox2">
	<div id="content2">
	<div class="texto_lightbox2">
    	<strong>{_AYUDA}:</strong>
      <p>{_MSG_NUMERO_DESAGRAVIO}</p>
    </div>
	<div class="cerrar2">
	<div class="texto_cerrar2"><a title="{_LABEL_CERRAR}" href="javascript:hideLightbox('ayuda');">{_LABEL_CERRAR}</a></div>
	<div class="imagen_cerrar2"><a title="{_LABEL_CERRAR}" href="javascript:hideLightbox('ayuda');"><img src="/images/common/cerrar_lightbox.png" width="13" height="15" alt="{_LABEL_CERRAR}"></a></div>
	</div>
	</div>
</div>
<div id='fade' class="fadebox2">&nbsp;</div>
<!-- INICIO DIV LIGHTBOX AYUDA -->
