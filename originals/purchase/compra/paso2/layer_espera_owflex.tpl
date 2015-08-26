
<script type="text/javascript">
if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){ 
 var ieversion=new Number(RegExp.$1)
}


function showLightbox_espera_owflex(layer) {
	document.getElementById(layer).style.display='block';
	document.getElementById('fade_layer_espera').style.display='block';
	if (/MSIE (\d+\.\d+);/.test(navigator.userAgent))
	{
		if (ieversion>=6)
		selects = document.getElementsByTagName("select");
		for (i = 0; i != selects.length; i++) {
			selects[i].style.visibility = "hidden";
		}
	}
}
function hideLightbox_espera_owflex(layer) {
	document.getElementById(layer).style.display='none';
	document.getElementById('fade_layer_espera').style.display='none';
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


.fadebox_layer_espera {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 2000px;
	background-color: #ffffff;
	z-index:1001;
	-moz-opacity: 0.8;
	opacity:.80;
	filter: alpha(opacity=80);
	
}

/* IE6 Only */
* html .fadebox_layer_espera {
	width:230%;
}

.overbox_layer_espera {
	display: none;
	position: absolute;
	top: 209px;
	left: 0;
	width: 100%;
	height: 100%;
	z-index:1002;
	overflow: auto;
	overflow-x: hidden;
	*top: 130%; /* ie7 e inferiores */
}

/* IE6 Only */
* html .overbox_layer_espera {
	width: 100%;
	left: 30%;
	top:194px;
}

#content_layer_espera {
	background: #FFFFFF;
	border: solid 8px #CCCCCC;
	/*padding: 10px;*/
	width:350px;
	height:120px;
	margin:0px auto 0px auto;
	overflow-x: hidden;
	overflow:hidden;

	
	
}
.texto_lightbox_layer_espera {
	background: #ffffff;
	padding: 10px;
	width:330px;
	margin:0px;
	z-index:1008;
	overflow:hidden;
}
	

</style>

<div id='layer_espera_owflex' class="overbox_layer_espera">
<div id="content_layer_espera">
	<div class="texto_lightbox_layer_espera">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" style="vertical-align:middle; margin-top:20px; ">
			<tr>
    <td style="text-align:center;"><img src="/images/cajero/wait_pago.gif" width="32" height="32" alt=""></td>
  </tr>
  <tr>
    <td>{_LABEL_PROCESANDO}</td>
  </tr>
</table>	
		</table>
	</div>
</div>
</div>
<div id='fade_layer_espera' class="fadebox_layer_espera">&nbsp;</div>
