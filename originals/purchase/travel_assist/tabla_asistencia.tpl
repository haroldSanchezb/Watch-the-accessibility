<script type="text/javascript">
if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){ 
 var ieversion=new Number(RegExp.$1)
}


function showLightbox(layer, posicionar_popup) {
	var paso = window.location.pathname;
	if (posicionar_popup != undefined && posicionar_popup == 1 && paso == "/cgi-bin/compra/paso4.cgi") {
        	document.getElementById(layer).style.top = "175%";
                if (navigator.userAgent.indexOf("Firefox") != -1 || window.navigator.userAgent.indexOf("MSIE ") != -1) {
                        document.getElementById(layer).style.top = "140%";
                }
        }
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

<style>
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
	font-weight: normal;
	z-index: 1;
}
.tarifa-total-asistencia-col {
	position: relative;
	left: 60px;
	left: 30px\9;
}
.tarifa-total-asistencia-col-td {
        position: relative;
        left: 30px;
        left: 20px\9;
}
.tarifa-base-asistencia-col {
	position: relative;
	right: 40px;
}
/**************FIN DE CSS DE LIGHT_BOX; PORFAVOR NO BORRAR DEL TPL*******************/

-->
</style>

[% IF BLOQUE_CHILE > 0 %]
	<h4>[% loc('TITULO_TARIFA_ASISTENCIA_TABLA') %] [% loc('IMG_ASISTENCIA_VIAJE') %] </h4>
[% END %]
[% IF BLOQUE_PERU > 0 %]
	<h4>[% loc('TITULO_TARIFA_ASISTENCIA_TABLA') %] <img src="/images/asistencia_viaje/logo-seguros-68x23.gif" width="50" height="19" alt="Seguros Pacifico"></h4>
[% END %]
<table cellspacing="0" cellpadding="0" border="0" width="100%" class="table">
	<tbody>
		<tr>
			<th>[% loc('LABEL_ASISTENCIA_NOMBRE_PRODUCTO') %]</td>
			<th>[% loc('LABEL_ASISTENCIA_TIPO_PLAN') %]</td>
			<th>[% loc('LABEL_ASISTENCIA_INTEGRANTES') %]</td>
			[% IF BLOQUE_PERU > 0 %]
				<th><div class="tarifa-base-asistencia-col">[% loc('LABEL_TARIFA') %]</div></td>
				<th>[% loc('LABEL_TAX') %]</td>
			[% END %]
			[% IF FRASE_VARIACION_TARIFA_POLIZA %]
				<div id="following_tooltip" style="visibility: hidden;"></div>
    			    	<div id="id_ttip" style="display: none;">
            				<div class="middle">
		        	    		[% loc(FRASE_VARIACION_TARIFA_POLIZA) %]
            				</div>
		        	</div>
	    			<th onMouseOver="if (typeof(activa_ttip) != 'undefined') activa_ttip('id_ttip', 'tooltip_frase_variacion_poliza');" onMouseOut="if (typeof(desactiva_ttip) != 'undefined') desactiva_ttip();"><div class="tarifa-total-asistencia-col">[% loc('LABEL_MONTO_TOTAL') %]</div></th>
			[% ELSE %]
				<th><div class="tarifa-total-asistencia-col">[% loc('LABEL_MONTO_TOTAL') %]</div></th>
			[% END %]
		</tr>
		<tr>
			<td>
			<a href="javascript:showLightbox('beneficios_asistencia', '[% POSICIONAR_POPUP %]');">[% loc(TA_PRODUCT_NAME) %]</a>
			</td>
			<td>[% loc(TA_PLAN) %]</td>
                        <td>
                                [% IF TA_NUM_ADULTS > 0 %]
                                        [% TA_NUM_ADULTS %] [% TA_NUM_ADULTS > 1 ? loc('LABEL_ADULTOS') : loc('LABEL_ADULTO') %]
                                [% END %]
                                [% IF TA_NUM_CHILDREN > 0 %]
                                        [% TA_NUM_CHILDREN %] [% TA_NUM_CHILDREN > 1 ? loc('LABEL_NINOS') : loc('LABEL_NINO') %]
                                [% END %]
                        </td>
                        [% IF BLOQUE_PERU > 0 %]
                                <td ><div class="tarifa-base-asistencia-col">[% TA_CURRENCY %]<span id="tarifa_base_monto">[% TA_MONTO_BASE %] </span></div></td>
                                <td>[% TA_CURRENCY %]<span id="impuesto_monto">[% TA_IMPUESTO %] </span></td>
                        [% END %]
			<td><div class="tarifa-total-asistencia-col-td">[% TA_CURRENCY %]<span id="tarifa_total_monto">[% TA_MONTO %]</span> *</div></td>
                        <input type='hidden' id="tipo_plan" name="tipo_plan" value="[% loc(TA_PRODUCT_NAME) %]">
                        <input type='hidden' id="arrival_year" name="arrival_year" value="[% TA_ARRIVAL_YEAR %]">
                        <input type='hidden' id="arrival_day" name="arrival_day" value="[% TA_ARRIVAL_DAY %]">
                        <input type='hidden' id="arrival_month" name="arrival_month" value="[% TA_ARRIVAL_MONTH %]">
                        <input type='hidden' id="monto_senior" name="monto_senior" value="[% TA_MONTO_SENIOR %]">
                        <input type='hidden' id="monto_adulto" name="monto_adulto" value="[% TA_MONTO_ADULTO %]">
                        <input type='hidden' id="impuesto_senior" name="impuesto_senior" value="[% TA_IMPUESTO_SENIOR %]">
                        <input type='hidden' id="impuesto_adulto" name="impuesto_adulto" value="[% TA_IMPUESTO_ADULTO %]">
                        <input type='hidden' id="asistencia_cl_pe" name="asistencia_cl_pe" value="[% ASISTENCIA_CL_PE %]">
			<input type='hidden' id="home_peru" name="home_peru" value="[% HOME_PERU %]">
                        <input type='hidden' id="total_ambos" name="total_ambos" value="[% TA_MONTO %]">
                        <input type='hidden' id="tarifa_ambos" name="tarifa_ambos" value="[% TA_MONTO_BASE %]">
                        <input type='hidden' id="impuestos_ambos" name="impuestos_ambos" value="[% TA_IMPUESTO %]">
                        <input type='hidden' id="monto_adulto_final" name="monto_adulto_final" value="[% TA_MONTO_ADULTO %]">
                        <input type='hidden' id="impuesto_adulto_final" name="impuesto_adulto_final" value="[% TA_IMPUESTO_ADULTO %]">
                        <input type='hidden' id="impuesto_senior_final" name="impuesto_senior_final" value="[% TA_IMPUESTO_SENIOR %]">
                        <input type='hidden' id="monto_senior_final" name="monto_senior_final" value="[% TA_MONTO_SENIOR %]">
                        <input type='hidden' id="chile_currency" name="chile_currency" value="[% TA_CURRENCY_CONVERSION %]">
                        <input type='hidden' id="precio_final_actualizado" name="precio_final_actualizado" value="0">
                        <input type='hidden' id="precio_final_actualizado_sin_formato" name="precio_final_actualizado_sin_formato" value="0">
                        <input type='hidden' id="currency" name="currency" value="[% CURRENCY %]">
                        <input type='hidden' id="monto_menor" name="monto_menor" value="[% TA_MONTO_MENOR %]">
                        <input type='hidden' id="impuesto_menor" name="impuesto_menor" value="[% TA_IMPUESTO_MENOR %]">
                        <input type='hidden' id="cod_producto" name="cod_producto" value="[% TA_PRODUCT_CODE %]">
                        <input type='hidden' id="total_ambos_sin_formato" name="total_ambos_sin_formato" value="0">
		</tr>
	</tbody>
</table>

<div id='beneficios_asistencia' class="overbox_asist">
  <div id="content_asist">
    <div class="cerrar_asist">
      <div class="texto_cerrar_asist">
	    <a href="javascript:hideLightbox('beneficios_asistencia');">[% loc(LABEL_CERRAR) %]</a>
	  </div>
	  <div class="imagen_cerrar_asist">
	    <a href="javascript:hideLightbox('beneficios_asistencia');"><img src="/images/common/cerrar_lightbox.gif" width="13" height="15" alt="[% loc(LABEL_CERRAR) %]"></a>
	  </div>
    </div>
    <div class="texto_lightbox_asist">
    [% ASISTENCIA_TEXT %]<br /><br />
    </div>
  </div>
</div>
<div id='fade' class="fadebox_asist">&nbsp;</div>


