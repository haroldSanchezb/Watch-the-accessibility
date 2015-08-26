<script type="text/javascript">
if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){ 
 var ieversion=new Number(RegExp.$1)
}


function showLightbox(layer) {
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
.fadebox {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 1200px;
	background-color: black;
	z-index:1001;
	-moz-opacity: 0.8;
	opacity:.80;
	filter: alpha(opacity=80);
}
.overbox {
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
#content {
	background: #FFFFFF;
	border: solid 8px #CCCCCC;
	/*padding: 10px;*/
	width:350px;
	margin:0px auto 0px auto;
	overflow-x: hidden;
	overflow:hidden;	
}
.texto_lightbox{
	background: #ffffff;
	padding: 10px;
	width:330px;
	margin:0px;
	z-index:1008;
	overflow:hidden;
}
.cerrar{
	background: #CCCCCC;
	padding: 5px 0px 0px 10px;
	width:340px;
	margin:0px;
	text-align:right;
	height:18px;
}

.texto_cerrar{
	background: #CCCCCC;
	padding: 0px;
	width:320px;
	margin:0px;
	float:left;
	text-align:right;
}
.texto_cerrar a:link{
	padding: 0px;
	margin:0px;
	color:#333333;
	text-decoration:none;
}
.texto_cerrar a:hover{
	padding: 0px;
	margin:0px;
	color:#333333;
	text-decoration:underline;
}
.imagen_cerrar{
	padding: 0px 4px 0px 0px;
	margin:0px;
	text-align:right;
	border:0;
	float:left;
	width:16px;
}
.imagen_cerrar a:link img{
	padding: 0px;
	margin:0px;
	text-align:right;
	border:0;

}
/************** FIN CSS PARA LIGHT_BOX *******************/
-->
</style>

<!-- INICIO DIV LIGHTBOX AYUDA -->
<div id='ayuda' class="overbox">
	<div id="content">
	<div class="texto_lightbox">
    	<strong>Redress Number Help:</strong>
      <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec.</p>
    </div>
	<div class="cerrar">
	<div class="texto_cerrar"><a href="javascript:hideLightbox('ayuda');">{_LABEL_CERRAR}</a></div>
	<div class="imagen_cerrar"><a href="javascript:hideLightbox('ayuda');"><img src="/images/common/cerrar_lightbox.gif" width="13" height="15" alt="{_LABEL_CERRAR}"></a></div>
	</div>
	</div>
</div>
<div id='fade' class="fadebox">&nbsp;</div>
<!-- INICIO DIV LIGHTBOX AYUDA -->


<h4>Secure Flight</h4>
<table class="table" width="100%" border="0" cellspacing="0" cellpadding="0">

  <col width="25%">
  <col width="35%">
  <col width="40%">
	
	{ITEM_SECURE_FLIGHT}
  </table>
