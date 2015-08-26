<script type="text/javascript">
if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){ 
 var ieversion=new Number(RegExp.$1)
}


function showLightbox(layer) {
	document.getElementById(layer).style.display='block';
	document.getElementById('fade_asist').style.display='block';
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
	document.getElementById('fade_asist').style.display='none';
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
/**************COMIENZO DE CSS DE LIGHT_BOX; PORFAVOR NO BORRAR DEL TPL*******************/
.fadebox_asist {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 2200px;
	background-color: black;
	z-index:1001;
	-moz-opacity: 0.5;
	opacity:.50;
	filter: alpha(opacity=50);
}

/* IE6 Only */
* html .fadebox_asist {
	width:230%;
}
.overbox_asist {
	display: none;
	position: absolute;
	top: 130%;
	left:0;
	height: 100%;
	z-index:1002;
	overflow: hidden;
	overflow-x: hidden;
	width:100%;
}
/* IE6 Only */
* html .overbox_asist {
	width: 100%;
	left: 28%;
}
#content_asist {
	background: #FFFFFF;
	border: solid 8px #CCCCCC;
	/*padding: 10px;*/
	width:690px;
	margin:0px auto 0px auto;
	overflow-x: hidden;
	overflow-y:hidden;
	height:585px;
}
.texto_lightbox_asist{
	background: #ffffff;
	padding: 10px;
	width:670px;
	margin:0px;
	z-index:1008;
	overflow-x:hidden;
	overflow-y: scroll;
	height: 543px;
	position: absolute;
}
.cerrar_asist{
	background: #CCCCCC;
	padding: 5px 0px 0px 10px;
	width:685px;
	margin:0px;
	text-align:right;
	height:18px;
}

.texto_cerrar_asist{
	background: #CCCCCC;
	padding: 0px;
	width:660px;
	margin:0px;
	float:left;
	text-align:right;
}
.texto_cerrar_asist a:link{
	padding: 0px;
	margin:0px;
	color:#333333;
	text-decoration:none;
}
.texto_cerrar_asist a:hover{
	padding: 0px;
	margin:0px;
	color:#333333;
	text-decoration:underline;
}
.imagen_cerrar_asist{
	padding: 0px 4px 0px 0px;
	margin:0px;
	text-align:right;
	border:0;
	float:left;
	width:16px;
}
.imagen_cerrar_asist a:link img{
	padding: 0px;
	margin:0px;
	text-align:right;
	border:0;

}
/**************FIN DE CSS DE LIGHT_BOX; PORFAVOR NO BORRAR DEL TPL*******************/

-->
</style>
<table class="wrapper_nuevo" cellspacing="0" cellpadding="0" style="width: 100%;" id="id_tabla_compra_normal_asistencia">
  <tr>
    <td class="header_wrapper_nuevo" style="width: 60%;">{_TITULO_ASISTENCIA_VIAJE} {_IMG_ASISTENCIA_VIAJE}</td>
    <td class="header_link_wrapper_nuevo" style="width: 40%;"><a href="javascript:showLightbox('beneficios_asistencia');">{_LABEL_ASISTENCIA_VER_MAS}</a></td>
  </tr>
  <tr style="border: 1px solid #CCC;">
    <td colspan="2"><table border="0" cellspacing="0" style="width: 90%; margin:15px auto;">
        <tr>
          <td class="caja_light_grey">
              <label>
                <input type="checkbox" name="asistencia_en_viaje" id="asistencia_en_viaje" {OPT_CHECKED}> 
                <b>{_MSG_CONTRATAR_ASISTENCIA_VIAJE} </b><b>{MONTO_ASISTENCIA_VIAJE}</b> {MSG_ASISTENCIA_PRECIO_OFERTA}</label>
            </td>
        </tr>
        <tr>
        <td class="wrappwer_nuevo_lista"><ul>
              <li style="padding:3px;">{_MSG_ASISTENCIA_VIAJE_MENORES}</li>
              <li style="padding:3px;">{_MSG_ASISTENCIA_VIAJE_EXCLUSION}</li>
              <li style="padding:3px;">{_MSG_ASISTENCIA_VIAJE_RESERVA}</li>
            </ul></td>
        </tr>
      </table></td>
  </tr>
</table>
<br/>

<div id='beneficios_asistencia' class="overbox_asist">
	<div id="content_asist">
    <div class="cerrar_asist">
    <div class="texto_cerrar_asist"><a href="javascript:hideLightbox('beneficios_asistencia');">{_LABEL_CERRAR}</a></div>
	<div class="imagen_cerrar_asist"><a href="javascript:hideLightbox('beneficios_asistencia');"><img src="/images/common/cerrar_lightbox.gif" width="13" height="15" alt="{_LABEL_CERRAR}"></a></div>
    </div>
	<div class="texto_lightbox_asist">{VER_MAS_ASISTENCIA_VIAJE}<br /><br /></div>
	</div>
	</div>
<div id='fade_asist' class="fadebox_asist">&nbsp;</div>
