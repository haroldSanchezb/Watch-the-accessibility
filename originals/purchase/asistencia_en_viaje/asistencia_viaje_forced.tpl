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
/**************COMIENZO DE CSS DE LIGHT_BOX; PORFAVOR NO BORRAR DEL TPL*******************/
.fadebox_asist {
	/*display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 2200px;
	background-color: white;
	z-index:1001;
	-moz-opacity: 0.8;
	opacity:.80;
	filter: alpha(opacity=50);*/

	background-color: white;
    display: none;
    height: 2200px;
    left: 0;
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 1001;
    -moz-opacity: 0.8;
opacity:.80;
filter: alpha(opacity=80);
}

/* IE6 Only */
* html .fadebox_asist {
	width:230%;
}
.overbox_asist {
	display: none;
	position: absolute;
	top: 50%;
	*top: 130%; /* ie7 e inferiores */
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
	background: #2f73ba;
	border: solid 8px #2f73ba;
	/*padding: 10px;*/
	width:700px;
	margin:0px auto 0px auto;
	overflow-x: hidden;
	overflow-y:hidden;
	height:615px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0px 0px 2px 2px #8e8e8e;
	box-shadow: 0px 0px 2px 2px #8e8e8e;
}
.texto_lightbox_asist{
	background: #ffffff;
	padding: 15px;
	width:670px;
	margin:0px;
	z-index:1008;
	overflow-x:hidden;
	overflow-y: scroll;
	height: 543px;
	position: absolute;
	-webkit-border-radius: 5px;
	border-radius: 5px;
}
.cerrar_asist{
	background: #2f73ba;
	padding: 5px 0px 0px 10px;
	width:685px;
	margin:0px;
	text-align:right;
	height:18px;
}

.texto_cerrar_asist{
	background: #2f73ba;
	padding: 0px;
	width:660px;
	margin:0px;
	float:left;
	text-align:right;
}
.texto_cerrar_asist a:link{
	padding: 0px;
	margin:0px;
	color:#ffffff;
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
/* tooltip frase variacion poliza */
.tooltip_frase_variacion_poliza {
	background-color: white;
	border: 2px solid #9ab7d9;
	margin-left: -160px;
	margin-top: -10px;
	position: absolute;
	width: 164px;
	border-radius: 10px;
	padding: 5px;
}
/**************FIN DE CSS DE LIGHT_BOX; PORFAVOR NO BORRAR DEL TPL*******************/

-->
</style>

<div id='beneficios_asistencia' class="overbox_asist">
  <div id="content_asist">
    <div class="cerrar_asist">
      <div class="texto_cerrar_asist">
	    <a title="{_LABEL_CERRAR}" href="javascript:hideLightbox('beneficios_asistencia');">{_LABEL_CERRAR}</a>
	  </div>
	  <div class="imagen_cerrar_asist">
	    <a title="{_LABEL_CERRAR}" href="javascript:hideLightbox('beneficios_asistencia');"><img src="http://www.lan.com//es_cl/images/common/cerrar_lightbox.png" width="13" height="15" alt="{_LABEL_CERRAR}"></a>
	  </div>
    </div>
    <div class="texto_lightbox_asist">
    {VER_MAS_ASISTENCIA_VIAJE}<br /><br />
    </div>
  </div>
</div>
<div id='fade' class="fadebox_asist">&nbsp;</div>


<!-- INICIO NUEVO ARMADO -->
<div id="asistencia">
  <h3>{_LABEL_ASISTENCIA_EN_VIAJE}</h3>
  <table cellspacing="0" cellpadding="0" class="principal" id="id_tabla_compra_normal_asistencia">
  <tr>
    <td><p class="asis-titulo">{_TITULO_ASISTENCIA_EN_VIAJE}</p>
    <p class="asis-bajada">{_MSG_ASISTENCIA_EN_VIAJE_BAJADA_TITULO}</p>
    <p>{_MSG_ASISTENCIA_EN_VIAJE}</p></td>
    <td><img src="/images/asistencia_viaje/promo_travel_assist.jpg" width="300" height="90" alt="Viaje tranquilo, viaje protegido"></td>
  </tr>
  <tr>
    <td colspan="2">
    {*BLOQUE_CHILE_LOGO}
      <img src="/images/asistencia_viaje/logo_travel_assist.gif" width="110" height="60" alt="Travel Assist" class="logo">
    {/BLOQUE_CHILE_LOGO}
    {*BLOQUE_PERU_LOGO}
      <img src="/images/asistencia_viaje/logo_seguros_pacifico.gif" width="110" height="60" alt="Seguros Pacifico" class="logo">
    {/BLOQUE_PERU_LOGO}
    <table cellspacing="0" cellpadding="0" class="interior">
    <colgroup>
    <col width="5%">
    <col width="80%">
	<col width="15%">
    </colgroup>
      <tr>
        <td class="destacado"><input type="radio" name="radio" id="asistencia_viaje" value="asistencia_viaje"></td>
        <td class="destacado"><p><label for="asistencia_viaje"><strong>{_FRASE_DESEO_CONTRATAR_ASISTENCIA_VIAJE}</strong></label></p></td>
        <td class="destacado-bottom"><strong id="qa_valor_asistencia">{MONTO_ASISTENCIA_VIAJE} * </strong>
        {*BLOQUE_PRECIO}
	  <div id="following_tooltip" style="visibility: hidden;"></div>
          <div class="precio_referencial">
	    <label onMouseOver="if (typeof(activa_ttip) != 'undefined') activa_ttip('id_ttip', 'tooltip_frase_variacion_poliza');" onMouseOut="if (typeof(desactiva_ttip) != 'undefined') desactiva_ttip();">{_COMPRA_PASO3_MODULOSEGURO_PRECIOREFERENCIAL}
	      <div id="id_ttip" style="display: none;">
            	<div class="middle">
            	  {_FRASE_VARIACION_TARIFA_POLIZA}
            	</div>
              </div>
	    </label>
          </div>
        {/BLOQUE_PRECIO}
      </tr>
      <tr>
        <td><input type="radio" name="radio" id="asistencia_viaje2" value="asistencia_viaje2"></td>
            <td><p><label for="asistencia_viaje2">{_FRASE_NO_DESEO_CONTRATAR_ASISTENCIA_VIAJE}</label></p></td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="2"><a title="{_FRASE_REVISE_BENEFICIOS_ASISTENCIA_VIAJE}" href="javascript:showLightbox('beneficios_asistencia');">{_FRASE_REVISE_BENEFICIOS_ASISTENCIA_VIAJE} [+]</a></td>
  </tr>
  {*BLOQUE_PERU_LINK}
  <tr>
    <td colspan="2"><a title="{COMPRA_PASO3_MODULOSEGURO_CONDICIONES}" href="/files/travel_assist/Condiciones_del_Servicio_en_la_Contratacion_del_Seguro_de_Viajes_por_Internet.pdf" target="_blank">{COMPRA_PASO3_MODULOSEGURO_CONDICIONES} </a></td>
  </tr>
  {/BLOQUE_PERU_LINK}
  <tr>
    <td colspan="2" class="contacto">{_FRASE_SI_DESEA_RESERVAR}</td>
  </tr>
</table>
</div>
<!-- final nuevo armado -->
