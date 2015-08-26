<script type="text/javascript">
		function showLightbox() {
			document.getElementById('over').style.display='block';
			document.getElementById('fade').style.display='block';
		}
		function hideLightbox() {
			document.getElementById('over').style.display='none';
			document.getElementById('fade').style.display='none';
		}
</script>
<style type="text/css">
/* Estilos de la ventana modal de cupos*/
.fadebox {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 1904px;
	height: 3620px;
	background-color: #fff;
	z-index:1001;
	-moz-opacity: 0.8;
	opacity:.80;
	filter: alpha(opacity=80);
}
.overbox {
		display: none;
		position: fixed;
		_position: absolute;
		top: 25%;
		left: 25%;
		_top:expression(0+((e=document.documentElement.scrollTop)?e:document.body.scrollTop)+'px'); 
		_left:expression(35+((e=document.documentElement.scrollLeft)?e:document.body.scrollLeft)+'%');
		width: 50%;
		z-index:1002;
		overflow: auto;
}
.close {
	background-color: #2f73ba;
	text-align: right;
	padding: 5px;
}
.close a {
	background-repeat: no-repeat;
	background-position: bottom right;
	padding-right: 18px;
	text-decoration: none;
	color: #fff;
	font-size: 0.9em;
}
.close a:hover {
	text-decoration: underline;
	color: #fff;
}
#close_modal{
	width: 20px;
	float: right;
}
#contmodal {
	background-color: #fff;
	width: 400px;
	height: auto;
	overflow: hidden;
	margin: auto;
	border: solid 8px #2f73ba;
	-webkit-border-radius: 5px;
	border-radius: 5px;
-webkit-box-shadow: 0px 0px 2px 2px #8e8e8e;
	box-shadow: 0px 0px 2px 2px #8e8e8e;
}
#contabla {
	padding: 10px;
}
</style>

<script type="text/javascript">
////////////// TOOL-TIP 
// // Simple follow the mouse script
// copyright Stephen Chapman, 30th September 2005
// you may copy this script provided that you retain the copyright notice
</script>




<style type="text/css">
.style1 {color: #E21F26}
.layer_regulaciones {
	width:748px;
	position:absolute;
	background-color:#ffffff;
	z-index:100;
	padding: 0px 0px 30px 0px;
}

.layer_regulaciones .table {
	margin: 0px 0px 6px 0px;
	padding: 0px;
}

.layer_regulaciones div {
	padding: 0px;
	margin: 0px;
}

.indicator {
	float: right;
	margin-top: -15px;
	margin-right: 5px;
}

#comparativa_familias {
	position: absolute;
	width: 760px;
	border: solid 8px #2f73ba;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0px 0px 2px 2px #8e8e8e;
	box-shadow: 0px 0px 2px 2px #8e8e8e;
}
#comparativa_familias_inner {
	background-color: white;
	font-size: 0.9em;
	cursor: move;
}
#comparativa_familias_content {
	/*height: 600px;*/
}
#comparativa_familias_inner h1 {
	background-color: #2f73ba;
	color: #ffffff;
	font-weight: bold;
	line-height: 2.5em;
	font-size: 1.5em;
	text-align: center;
	margin-top: 0;
	margin-bottom: 0;
	cursor: move;
}
#comparativa_familias_footer {
	background-color: #2f73ba;
	width: 100%;
	text-align: right;
	line-height: 2.5em;
	cursor: move;
}
.texto_cerrar_comparativas{
	background: #2f73ba;
	padding-top: 2px;
	width:740px;
	margin:0px;
	float:left;
	text-align:right;
}


.texto_cerrar_comparativas a{
    color: #FFFFFF;
    text-decoration: none;
}
.texto_cerrar_comparativas a:hover{
    text-decoration: underline;
}	
.nombre_cabina {
	text-align: center; 
	background-color: #f4f3fb; 
	/*border: solid 1px #dee0ef;*/
	font-weight: bold;

	-moz-border-radius-topleft: 10px;
	-moz-border-radius-topright: 10px;
}
.nombre_cabina div {
	padding: 10px 6px 6px 6px;
}

/* Tooltip de tarifas click */
.tooltip_tarifa {
	position: absolute; 
	width: 164px; 
	margin-top: -10px; 
	margin-left: -160px;
	/*border: solid 1px #cccccc;*/
}
.tooltip_tarifa .top {
	background: url(/images/compra/top_ck.png) center bottom no-repeat;
	width: 164px;
	height: 12px;
}
* html .tooltip_tarifa .top {
	background: url(/images/compra/top_ck.gif) center top no-repeat;
}

.tooltip_tarifa .middle {
	background: url(/images/compra/bg_ck.png) center repeat-y;
	width: 164px;
}
* html .tooltip_tarifa .middle {
	background: url(/images/compra/bg_ck.gif) center top no-repeat;
}

.tooltip_tarifa .bottom {
	background: url(/images/compra/bottom_ck.png) center top no-repeat;
	width: 164px;
	height: 16px;
}
* html .tooltip_tarifa .bottom {
	background: url(/images/compra/bottom_ck.gif) center top no-repeat;
}

.tooltip_tarifa ul {
	margin-left: 25px; 
	margin-right: 15px;
	font-size: 1.5em; 
	text-align: left;
	margin-top: 0;
	margin-bottom: 0;
	background-color: #ffffff;
}
.tooltip_tarifa li {
	color: {FF_BG_COLOR};
	padding-bottom: 7px;
}
.tooltip_tarifa p {
	color: black; 
	font-size: 0.6em;
}
/*nombre del aeropuerto*/
.tooltip_aeropuerto {
	position: absolute; 
	width: 164px; 
	margin-top: -10px; 
	margin-left: -160px;
	/*border: solid 1px #cccccc;*/
}

.tooltip_aeropuerto .top {
	background: url(/images/compra/top_ck.png) center bottom no-repeat;
	width: 164px;
	height: 12px;
}
* html .tooltip_aeropuerto .top {
	background: url(/images/compra/top_ck.gif) center top no-repeat;
}

.tooltip_aeropuerto .middle {
	background: url(/images/compra/bg_ck.png) center repeat-y;
	width: 164px;
}
* html .tooltip_aeropuerto .middle {
	background: url(/images/compra/bg_ck.gif) center top no-repeat;
}

.tooltip_aeropuerto .bottom {
	background: url(/images/compra/bottom_ck.png) center top no-repeat;
	width: 164px;
	height: 16px;
}
* html .tooltip_aeropuerto .bottom {
	background: url(/images/compra/bottom_ck.gif) center top no-repeat;
}

.tooltip_aeropuerto ul {
	margin-left: 25px; 
	margin-right: 15px;
	font-size: 1.5em; 
	text-align: left;
	margin-top: 0;
	margin-bottom: 0;
	background-color: #ffffff;
}
.tooltip_aeropuerto li {
	color: {FF_BG_COLOR};
	padding-bottom: 7px;
}
.tooltip_aeropuerto p {
	color: black; 
	font-size: 0.6em;
}
/* Tooltip de flight information */
.tooltip_flight_info {
	position: absolute; 
	width: 293px; 
	margin-top: -10px; 
	margin-left: -20px;
	/*border: solid 1px #cccccc;*/
}
.tooltip_flight_info .top {
	background: url(/images/compra/top_flight_info.png) center bottom no-repeat;
	width: 293px;
	height: 12px;
}
* html .tooltip_flight_info .top {
	background: url(/images/compra/top_flight_info.gif) center bottom no-repeat;
}

.tooltip_flight_info .middle {
	background: url(/images/compra/bg_flight_info.png) center repeat-y;
	width: 258px;
	padding: 0 21px 0 14px;
	text-align: center;
	font-size: 0.9em;
}
* html .tooltip_flight_info .middle {
	background: url(/images/compra/bg_flight_info.gif) center top repeat-y;
}

.tooltip_flight_info .bottom {
	background: url(/images/compra/bottom_flight_info.png) center top no-repeat;
	width: 293px;
	height: 16px;
}
* html .tooltip_flight_info .bottom {
	background: url(/images/compra/bottom_flight_info.gif) center top no-repeat;
}

.tooltip_familia_SP {
	position: absolute;
	width: 164px;
	margin-top: -10px;
	margin-left: -160px;
	/*border: solid 1px #cccccc;*/
}

* html .tooltip_familia_SP {
	position: absolute;
	width: 164px;
	margin-top: -10px;
	margin-left: -160px;
	/*border: solid 1px #cccccc;*/
}

.tooltip_familia_SP .top {
	background: url(/images/compra/top_sp.png) center bottom no-repeat;
	width: 164px;
	height: 12px;
}

* html .tooltip_familia_SP .top {
	background: url(/images/compra/top_sp.gif) center bottom no-repeat;
}

.tooltip_familia_SP .middle {
	background: url(/images/compra/bg_sp.png) center repeat-y;
	width: 164px;
}

* html .tooltip_familia_SP .middle {
	background: url(/images/compra/bg_sp.gif) center repeat-y;
}

.tooltip_familia_SP .bottom {
	background: url(/images/compra/bottom_sp.png) center top no-repeat;
	width: 164px;
	height: 16px;
}

* html .tooltip_familia_SP .bottom {
	background: url(/images/compra/bottom_sp.gif) center top no-repeat;
}

.tooltip_familia_SP ul {
	margin-left: 25px;
	margin-right: 15px;
	font-size: 1.5em;
	text-align: left;
	margin-top: 0;
	margin-bottom: 0;
	background-color: #ffffff;
}

* html .tooltip_familia_SP ul {
	margin-left: 25px;
	margin-right: 15px;
	font-size: 1.5em;
	text-align: left;
	margin-top: 0;
	margin-bottom: 0;
	background-color: #ffffff;
}

.tooltip_familia_SP li {
	color: {_FF_BG_COLOR_TITLE_SP};
	padding-bottom: 7px;
}

* html .tooltip_familia_SP li {
	color: {_FF_BG_COLOR_TITLE_SP};
	padding-bottom: 7px;
}

.tooltip_familia_SP p {
	color: black;
	font-size: 0.6em;
	margin: 0;
}

* html .tooltip_familia_SP p {
	color: black;
	font-size: 0.6em;
	margin: 0;
}

.tooltip_familia_LE {
	position: absolute;
	width: 164px;
	margin-top: -10px;
	margin-left: -160px;
	/*border: solid 1px #cccccc;*/
}

* html .tooltip_familia_LE {
	position: absolute;
	width: 164px;
	margin-top: -10px;
	margin-left: -160px;
	/*border: solid 1px #cccccc;*/
}

.tooltip_familia_LE .top {
	background: url(/images/compra/top_le.png) center bottom no-repeat;
	width: 164px;
	height: 12px;
}

* html .tooltip_familia_LE .top {
	background: url(/images/compra/top_le.gif) center bottom no-repeat;
}

.tooltip_familia_LE .middle {
	background: url(/images/compra/bg_le.png) center repeat-y;
	width: 164px;
}

* html .tooltip_familia_LE .middle {
	background: url(/images/compra/bg_le.gif) center repeat-y;
}

.tooltip_familia_LE .bottom {
	background: url(/images/compra/bottom_le.png) center top no-repeat;
	width: 164px;
	height: 16px;
}

* html .tooltip_familia_LE .bottom {
	background: url(/images/compra/bottom_le.gif) center top no-repeat;
}

.tooltip_familia_LE ul {
	margin-left: 25px;
	margin-right: 15px;
	font-size: 1.5em;
	text-align: left;
	margin-top: 0;
	margin-bottom: 0;
	background-color: #ffffff;
}

* html .tooltip_familia_LE ul {
	margin-left: 25px;
	margin-right: 15px;
	font-size: 1.5em;
	text-align: left;
	margin-top: 0;
	margin-bottom: 0;
	background-color: #ffffff;
}

.tooltip_familia_LE li {
	color: {_FF_BG_COLOR_TITLE_LE};
	padding-bottom: 7px;
}

* html .tooltip_familia_LE li {
	color: {_FF_BG_COLOR_TITLE_LE};
	padding-bottom: 7px;
}

.tooltip_familia_LE p {
	color: black;
	font-size: 0.6em;
	margin: 0;
}

* html .tooltip_familia_LE p {
	color: black;
	font-size: 0.6em;
	margin: 0;
}
	
.tooltip_familia_FX {
	position: absolute;
	width: 164px;
	margin-top: -10px;
	margin-left: -160px;
	/*border: solid 1px #cccccc;*/
}

* html .tooltip_familia_FX {
	position: absolute;
	width: 164px;
	margin-top: -10px;
	margin-left: -160px;
	/*border: solid 1px #cccccc;*/
}

.tooltip_familia_FX .top {
	background: url(/images/compra/top_fx.png) center bottom no-repeat;
	width: 164px;
	height: 12px;
}

* html .tooltip_familia_FX .top {
	background: url(/images/compra/top_fx.gif) center bottom no-repeat;

}

.tooltip_familia_FX .middle {
	background: url(/images/compra/bg_fx.png) center repeat-y;
	width: 164px;
}

* html .tooltip_familia_FX .middle {
	background: url(/images/compra/bg_fx.gif) center repeat-y;
}

.tooltip_familia_FX .bottom {
	background: url(/images/compra/bottom_fx.png) center top no-repeat;
	width: 164px;
	height: 16px;
}

* html .tooltip_familia_FX .bottom {
	background: url(/images/compra/bottom_fx.gif) center top no-repeat;
}

.tooltip_familia_FX ul {
	margin-left: 25px;
	margin-right: 15px;
	font-size: 1.5em;
	text-align: left;
	margin-top: 0;
	margin-bottom: 0;
	background-color: #ffffff;
}

* html .tooltip_familia_FX ul {
	margin-left: 25px;
	margin-right: 15px;
	font-size: 1.5em;
	text-align: left;
	margin-top: 0;
	margin-bottom: 0;
	background-color: #ffffff;
}

.tooltip_familia_FX li {
	color: {_FF_BG_COLOR_TITLE_FX};
	padding-bottom: 7px;
}

* html .tooltip_familia_FX li {
	color: {_FF_BG_COLOR_TITLE_FX};
	padding-bottom: 7px;
}

.tooltip_familia_FX p {
	color: black;
	font-size: 0.6em;
	margin: 0;
}

* html .tooltip_familia_FX p {
	color: black;
	font-size: 0.6em;
	margin: 0;
}

.tooltip_familia_FF {
	position: absolute;
	width: 164px;
	margin-top: -10px;
	margin-left: -160px;
	/*border: solid 1px #cccccc;*/
}
	
* html .tooltip_familia_FF {
	position: absolute;
	width: 164px;
	margin-top: -10px;
	margin-left: -160px;
	/*border: solid 1px #cccccc;*/
}
	
.tooltip_familia_FF .top {
	background: url(/images/compra/top_ff.png) center bottom no-repeat;
	width: 164px;
	height: 12px;
}

* html .tooltip_familia_FF .top {
	background: url(/images/compra/top_ff.gif) center bottom no-repeat;
}

.tooltip_familia_FF .middle {
	background: url(/images/compra/bg_ff.png) center repeat-y;
	width: 164px;
}

* html .tooltip_familia_FF .middle {
	background: url(/images/compra/bg_ff.gif) center repeat-y;
}

.tooltip_familia_FF .bottom {
	background: url(/images/compra/bottom_ff.png) center top no-repeat;
	width: 164px;
	height: 16px;
}
	
* html .tooltip_familia_FF .bottom {
	background: url(/images/compra/bottom_ff.gif) center top no-repeat;
}

.tooltip_familia_FF ul {
	margin-left: 25px;
	margin-right: 15px;
	font-size: 1.5em;
	text-align: left;
	margin-top: 0;
	margin-bottom: 0;
	background-color: #ffffff;
}
	
* html .tooltip_familia_FF ul {
	margin-left: 25px;
	margin-right: 15px;
	font-size: 1.5em;
	text-align: left;
	margin-top: 0;
	margin-bottom: 0;
	background-color: #ffffff;
}

.tooltip_familia_FF li {
	color: {_FF_BG_COLOR_TITLE_FF};
	padding-bottom: 7px;
}
	
* html .tooltip_familia_FF li {
	color: {_FF_BG_COLOR_TITLE_FF};
	padding-bottom: 7px;
}

.tooltip_familia_FF p {
	color: black;
	font-size: 0.6em;
	margin: 0;
}
	
* html .tooltip_familia_FF p {
	color: black;
	font-size: 0.6em;
	margin: 0;
}

.tooltip_familia_RY {
	position: absolute;
	width: 164px;
	margin-top: -10px;
	margin-left: -160px;
	/*border: solid 1px #cccccc;*/
}

* html .tooltip_familia_RY {
	position: absolute;
	width: 164px;
	margin-top: -10px;
	margin-left: -160px;
	/*border: solid 1px #cccccc;*/
}
	
.tooltip_familia_RY .top {
	background: url(/images/compra/top_ry.png) center bottom no-repeat;
	width: 164px;
	height: 12px;
}
	
* html .tooltip_familia_RY .top {
	background: url(/images/compra/top_ry.gif) center bottom no-repeat;
}

.tooltip_familia_RY .middle {
	background: url(/images/compra/bg_ry.png) center repeat-y;
	width: 164px;
}
	
* html .tooltip_familia_RY .middle {
	background: url(/images/compra/bg_ry.gif) center repeat-y;
}

.tooltip_familia_RY .bottom {
	background: url(/images/compra/bottom_ry.png) center top no-repeat;
	width: 164px;
	height: 16px;
}

* html .tooltip_familia_RY .bottom {
	background: url(/images/compra/bottom_ry.gif) center top no-repeat;
}

.tooltip_familia_RY ul {
	margin-left: 25px;
	margin-right: 15px;
	font-size: 1.5em;
	text-align: left;
	margin-top: 0;
	margin-bottom: 0;
	background-color: #ffffff;
}
	
* html .tooltip_familia_RY ul {
	margin-left: 25px;
	margin-right: 15px;
	font-size: 1.5em;
	text-align: left;
	margin-top: 0;
	margin-bottom: 0;
	background-color: #ffffff;
}

.tooltip_familia_RY li {
	color: {_FF_BG_COLOR_TITLE_RY};
	padding-bottom: 7px;
}
	
* html .tooltip_familia_RY li {
	color: {_FF_BG_COLOR_TITLE_RY};
	padding-bottom: 7px;
}

.tooltip_familia_RY p {
	color: black;
	font-size: 0.6em;
	margin: 0;
}

* html .tooltip_familia_RY p {
	color: black;
	font-size: 0.6em;
	margin: 0;
}

.tooltip_familia_EJ {
	position: absolute;
	width: 164px;
	margin-top: -10px;
	margin-left: -160px;
	/*border: solid 1px #cccccc;*/
}

* html .tooltip_familia_EJ {
	position: absolute;
	width: 164px;
	margin-top: -10px;
	margin-left: -160px;
	/*border: solid 1px #cccccc;*/
}
	
.tooltip_familia_EJ .top {
	background: url(/images/compra/top_ej.png) center bottom no-repeat;
	width: 164px;
	height: 12px;
}
	
* html .tooltip_familia_EJ .top {
	background: url(/images/compra/top_ej.gif) center bottom no-repeat;
}

.tooltip_familia_EJ .middle {
	background: url(/images/compra/bg_ej.png) center repeat-y;
	width: 164px;
}

* html .tooltip_familia_EJ .middle {
	background: url(/images/compra/bg_ej.gif) center repeat-y;
}

.tooltip_familia_EJ .bottom {
	background: url(/images/compra/bottom_ej.png) center top no-repeat;
	width: 164px;
	height: 16px;
}

* html .tooltip_familia_EJ .bottom {
	background: url(/images/compra/bottom_ej.gif) center top no-repeat;
}

.tooltip_familia_EJ ul {
	margin-left: 25px;
	margin-right: 15px;
	font-size: 1.5em;
	text-align: left;
	margin-top: 0;
	margin-bottom: 0;
	background-color: #ffffff;
	}
	
* html .tooltip_familia_EJ ul {
	margin-left: 25px;
	margin-right: 15px;
	font-size: 1.5em;
	text-align: left;
	margin-top: 0;
	margin-bottom: 0;
	background-color: #ffffff;
}

.tooltip_familia_EJ li {
	color: {_FF_BG_COLOR_TITLE_EJ};
	padding-bottom: 7px;
}

* html .tooltip_familia_EJ li {
	color: {_FF_BG_COLOR_TITLE_EJ};
	padding-bottom: 7px;
}

.tooltip_familia_EJ p {
	color: black;
	font-size: 0.6em;
	margin: 0;
}

* html .tooltip_familia_EJ p {
	color: black;
	font-size: 0.6em;
	margin: 0;
}

.table_tarifa {
	border: 1px solid #DCE0EE;
	padding: 10px;
	overflow:hidden; 
	background-color:#f0f0f0; 		
}

.table_tarifa_borde {
	margin: 0px;
	padding: 0px;
	#margin: 10px;
	#width: 500px;
		
}

	

</style>
<script type="text/javascript">
	javascript:redirect_paso2_manana( '0', '{LINK_PASO2_MANANA_VUELTA}', '', '{INITIAL_RELOAD}', '1');
</script>

<div id="following_tooltip" style="visibility: hidden;">
</div>

<div id="ttip_flight_info" style="display: none;">
	<div class="top"></div>
	<div class="middle" id="div_flight_info">
		
	</div>
	<div class="bottom"></div>
</div>

<span id="disabledcolor" style="background-color: #eeeeee"></span>

<!-- La ventana con las comparaciones de familias -->
<div id="comparativa_familias" class="ydsf" style="display: none;">
	<div id="comparativa_familias_inner" class="inner">
    <div class="texto_cerrar_comparativas"><a title="{_LABEL_CERRAR}" href="javascript:hide_comparativa_familias();">{_LABEL_CERRAR}</a></div>
		<div id="comparativa_familias_footer">
			<a title="{_LABEL_CERRAR}" href="javascript:hide_comparativa_familias();"><img src="/images/common/cerrar_lightbox.png" width="13" height="15" alt="{_LABEL_CERRAR}"></a>
			
			
		</div>
        <h1>{_BENEF_TARIFAS}</h1>
		<div id="comparativa_familias_content">
			<br><br><br><br><br><br><br><br><br><br><br><br>

			<div style="text-align: center; width: 100%;">
				<img src="/images/common/ajax_loader_32.gif" alt="" width="32" height="32"><br>
				{_LABEL_LOADING}
			</div>

			<br><br><br><br><br><br><br><br><br><br><br><br>
		</div>
		<div id="comparativa_familias_footer">
			<a title="{_LABEL_CERRAR}" href="javascript:hide_comparativa_familias();"><img src="/images/common/cerrar_lightbox.png" width="13" height="15" alt="{_LABEL_CERRAR}"></a>
		</div>
	</div>
</div>

<script type="text/javascript">
	new Draggable('comparativa_familias', {starteffect: '', endeffect: '', reverteffect: ''});
</script>


{LAYER_ESCALAS}

<div id="content_tb_process">
<h2>{_LABEL_SELECCIONE_VUELO}</h2>
	<div id="box_content_process">
	<div id="box_int_border_process">
    

        
    
<!--div id='msg_precios_ow'></div-->
{MATRIZ_ROWFLEX}

{*SEGMENTOOW}


<script type="text/javascript">
//	tarifa_segmento[{ID_SEGMENTO}] = '';
//	segmentos_vuelos[{ID_SEGMENTO}] = new Array();

	init_segmentos({ID_SEGMENTO});
</script>

<input type='hidden' name='vuelo_segmento{ID_SEGMENTO}' id='vuelo_segmento{ID_SEGMENTO}' value=''>
<input type='hidden' name='clase_segmento{ID_SEGMENTO}' id='clase_segmento{ID_SEGMENTO}' value=''>
<input type='hidden' name='familia_segmento{ID_SEGMENTO}' id='familia_segmento{ID_SEGMENTO}' value=''>
<input type='hidden' name='currency_segmento{ID_SEGMENTO}' id='currency_segmento{ID_SEGMENTO}' value=''>
<input type='hidden' name='monto_segmento{ID_SEGMENTO}' id='monto_segmento{ID_SEGMENTO}' value=''>
<input type='hidden' name='farebasis_segmento_ida' id='farebasis_segmento_ida' value=''>
<input type='hidden' name='farebasis_segmento_vuelta' id='farebasis_segmento_vuelta' value=''>
<input type='hidden' name='precio_final_paso2' id='precio_final_paso2' value = ''>
<input type='hidden' name='taxes_final_paso2' id='taxes_final_paso2' value = ''>

<input type='hidden' name='precio_final_paso2_ida' id='precio_final_paso2_ida' value = ''>
<input type='hidden' name='precio_final_paso2_vuelta' id='precio_final_paso2_vuelta' value = ''>


<h4 style="font-size: 12px;"><div>{FROM_CITY} - {TO_CITY}</div> <img src="/images/html/indicator.gif" name="indicator" width="16" height="16" border="0" id="indicator{ID_SEGMENTO}" style="display:none;" alt="Loading..." class="indicator" ></h4>
<div style="display:none;" id="layer_regulaciones{ID_SEGMENTO}" class="layer_regulaciones"><div id="layer_regulaciones_content{ID_SEGMENTO}"></div><div style="float:right" class="style1">&times;&nbsp;<a href="#" onClick="if (regulaciones_on[{ID_SEGMENTO}]) { new Effect.SlideUp('layer_regulaciones{ID_SEGMENTO}'); regulaciones_on[{ID_SEGMENTO}] = false; } return false;" id="close_layer_regulaciones{ID_SEGMENTO}" onblur="if (regulaciones_on[{ID_SEGMENTO}]) { new Effect.SlideUp('layer_regulaciones{ID_SEGMENTO}'); regulaciones_on[{ID_SEGMENTO}] = false; }">{_LABEL_CERRAR}</a></div></div>

<table class="table" cellspacing="0" cellpadding="0" width="100%">
	<!-- La fila con el link a comparcion de tarifas -->
<tr>
		{*LINK_COMPARATIVA_FAMILIAS}
		<td colspan="{COLSPAN}" style="text-align: right;">
			<a title="{_TITLE_LINK_COMPARACION_TARIFARIA}" href="javascript:show_comparativa_familias('{TIPO_RUTA}', '{DICCIONARIO}');">{_MSG_COMPARAR_TARIFAS}</a>
		</td>
		{/LINK_COMPARATIVA_FAMILIAS}
	</tr>

 	<!-- La fila con la cabina -->
	<tr>
		<td colspan="4"></td>
		{*CABINASOW}
		<td rowspan="{ROWSPAN}" style="width: 1px; padding: 0;">
			<img src="/images/html/imagen1x1.gif" alt="" width="1" height="1">
		</td>
		<td colspan="{COLSPAN}" class="nombre_cabina" style="padding: 0;">
			<div>
				{NOMBRE_CABINA}
				<br>
<!--				<p style="font-size: 11px; font-weight:normal; margin-bottom: 0;">
					<a href="javascript:show_ver_asiento_{CABINA}();">{_VER_ASIENTO}</a>
				</p>-->
			</div>
		</td>
		<td rowspan="{ROWSPAN}" style="width: 1px; padding: 0;">
			<img src="/images/html/imagen1x1.gif" alt="" width="1" height="1">
		</td>

		{/CABINASOW}
	</tr>

	<tr>
		<td colspan="4" style="height: 2px; line-height: 0; padding: 0;">&nbsp;</td>
	</tr>

	{*FAMILIASOW_BASE}

		<!-- El tooltip para las familias -->
		
		<script type="text/javascript">
			if (!combina_con['{ID_FAMILIA}']) combina_con['{ID_FAMILIA}'] = new Array();
			familia['{ID_FAMILIA}'] = 1;
			{*COMBINA_CON}
			combina_con['{ID_FAMILIA}']['{ID_OTRA_FAMILIA}'] = 1;
			{/COMBINA_CON}

			// Preload del fondo del ttip
			var f_img_top = new Image();
			var f_img_mid = new Image();
			var f_img_bot = new Image();

			var version = parseFloat(navigator.appVersion.split('MSIE')[1]);
			if ((version >=5.5) && (version < 7))
				{
				f_img_top.src = '/images/compra/top_{ID_FAMILIA_LC}.gif';
				f_img_mid.src = '/images/compra/bg_{ID_FAMILIA_LC}.gif';
				f_img_bot.src = '/images/compra/bottom_{ID_FAMILIA_LC}.gif';
				}
			else
				{
				f_img_top.src = '/images/compra/top_{ID_FAMILIA_LC}.png';
				f_img_mid.src = '/images/compra/bg_{ID_FAMILIA_LC}.png';
				f_img_bot.src = '/images/compra/bottom_{ID_FAMILIA_LC}.png';
				}
			</script>
	{/FAMILIASOW_BASE}

  <!-- La fila con la fecha y el nombre y descripcion de la familia -->
  <tr>
    <td colspan=4><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <!--<td>{*FLECHA_AYER}<a href='#{FOCO_LLAMADA_OWFLEX}' onClick="cambiar_dia({ID_SEGMENTO}, '{FECHA_AYER}', '{LINK_PASO2_AYER}');" class="sinlinea" ><img src='http://www.lan.com/images/common/fle_simple_retroceder_ida.gif' alt='{_LABEL_DIA_ANTERIOR}' width="23" height="23" border='0' style=" vertical-align:bottom;"></a>&nbsp;{/FLECHA_AYER}</td> -->
    <td style=" vertical-align:middle; padding-bottom: 10px; text-align:left;">{FECHA_VUELO}</td>
    <!--<td>{*FLECHA_MANANA}&nbsp;<a href='#{FOCO_LLAMADA_OWFLEX}' onClick="cambiar_dia({ID_SEGMENTO}, '{FECHA_MANANA}', '{LINK_PASO2_MANANA}');" class="sinlinea"><img src='http://www.lan.com/images/common/fle_simple_avanzar_ida.gif' alt='{_LABEL_DIA_SIGUIENTE}' width="23" height="23" border='0'></a>{/FLECHA_MANANA}</td> -->
  </tr>
</table>
</td>
		{*FAMILIASOW}
		<td rowspan="2" style="width: 11%; background-color: {FF_BG_COLOR}; color: {FF_FG_COLOR}; vertical-align: top; text-align: center; padding: 2px 4px; border-left: solid 1px white;" onMouseOver="if (typeof(activa_ttip) != 'undefined') activa_ttip('ttip_familia_{ID_TTIP}', 'tooltip_familia_{ID_FAMILIA}');" onMouseOut="if (typeof(desactiva_ttip) != 'undefined') desactiva_ttip();">
			
            <div style="font-size: 1.2em; display: block; height: 2.5em; font-weight: bold;">{FARE_FAMILY}</div>
	<!-- 	{FARE_FAMILY_DESC} 
        -->

			<div id="ttip_familia_{ID_TTIP}" style="display: none;">
				<div class="top"></div>
				<div class="middle">
					{FARE_FAMILY_TTIP}
				</div>
				<div class="bottom"></div>
			</div>
		</td>
		{/FAMILIASOW}
  </tr>

  <!-- La fila con los encabezados -->
  <tr>
    <th style="width:110px;">{_LABEL_VUELOS}</th>
<!--    <th><a href='{SCRIPT_URL}?session_id={SESSION_ID}&amp;ordenar_vuelos_por=departure_time&amp;just_refresh=1'>{_LABEL_SALIDA}</a></th>
    <th><a href='{SCRIPT_URL}?session_id={SESSION_ID}&amp;ordenar_vuelos_por=arrival_time&amp;just_refresh=1'>{_LABEL_LLEGADA}</a></th>
    <th><a href='{SCRIPT_URL}?session_id={SESSION_ID}&amp;ordenar_vuelos_por=leg_duration&amp;just_refresh=1'>{_LABEL_DURACION}</a></th>-->
    <th>{_LABEL_SALIDA}</th>
    <th>{_LABEL_LLEGADA}</th>
    <th>{_LABEL_DURACION}</th>
  </tr>
 
	{*VUELOSOW}
	<script type="text/javascript">
	segmentos_vuelos[{ID_SEGMENTO}][{ID_VUELO}] = 1;
	</script>
	<input type='hidden' name='HORARIO_SEG{ID_SEGMENTO}_VUE{ID_VUELO}' value='{HORARIO_SECS_SALIDA}|{HORARIO_SECS_LLEGADA}'>
	<tr>
		<td style="border-top: solid 1px #f0f0f0;"><span onMouseOver="if (typeof(activa_flight_info) != 'undefined') activa_flight_info('{REAL_OPERADO_POR}', '{REAL_MARKETEADO_POR}', 'tooltip_flight_info');" onMouseOut="if (typeof(desactiva_flight_info) != 'undefined') desactiva_flight_info();">{IMAGEN_CONVENIO}<strong>{AIRLINE_CODE} {NUMERO_VUELO}</strong><sup>{OPERADO_POR_INDEX}</sup></span><br>
			 {*MATERIAL_DE_VUELO}<img src='/images/html/avion1.gif' alt='{_LABEL_AVION}' width="12" height="12" border='0'> {AVION}{/MATERIAL_DE_VUELO}<br>{ESCALAS}{*INFO_TRANSBORDO} <br>
			{_LABEL_CONEXION_EN} {CITY_CODE}<br>
			<span onMouseOver="if (typeof(activa_flight_info) != 'undefined') activa_flight_info('{REAL_OPERADO_POR}', '{REAL_MARKETEADO_POR}', 'tooltip_flight_info');" onMouseOut="if (typeof(desactiva_flight_info) != 'undefined') desactiva_flight_info();">{IMAGEN_CONVENIO}<strong>{AIRLINE_CODE} {NUMERO_VUELO}</strong><sup>{OPERADO_POR_INDEX}</sup></span><br>
 {*MATERIAL_DE_VUELO}<img src='/images/html/avion1.gif' alt='{_LABEL_AVION}' width="12" height="12" border='0'> {AVION}{/MATERIAL_DE_VUELO}<br>{ESCALAS}{/INFO_TRANSBORDO}</td>
		<td style="border-top: solid 1px #f0f0f0;">
			<span style="vertical-align:top">{HORA_SALIDA}</span>
			<br>
			<span style="font-weight:bold;text-decoration:underline" onMouseOver="if (typeof(activa_ttip) != 'undefined') activa_ttip('ttip_aeropuerto_{AEROPUERTO_SALIDA}', 'tooltip_aeropuerto');" onMouseOut="if (typeof(desactiva_ttip) != 'undefined') desactiva_ttip();">({AEROPUERTO_SALIDA})
				<div id="ttip_aeropuerto_{AEROPUERTO_SALIDA}" style="display: none;">
					<div class="top"></div>
					<div class="middle">
					{NOMBRE_AEROPUERTO_SALIDA}
					</div>
					<div class="bottom"></div>
				</div>
			</span>
		</td>
		<td style="border-top: solid 1px #f0f0f0;">
			<span style="vertical-align:top">{HORA_LLEGADA}</span>
			<br>
			<span style="font-weight:bold;text-decoration:underline" onMouseOver="if (typeof(activa_ttip) != 'undefined') activa_ttip('ttip_aeropuerto_{AEROPUERTO_LLEGADA}', 'tooltip_aeropuerto');" onMouseOut="if (typeof(desactiva_ttip) != 'undefined') desactiva_ttip();">({AEROPUERTO_LLEGADA})
				<div id="ttip_aeropuerto_{AEROPUERTO_LLEGADA}" style="display: none;">
					<div class="top"></div>
					<div class="middle">
					{NOMBRE_AEROPUERTO_LLEGADA} 
					</div>
					<div class="bottom"></div>
				</div>
			</span>
		</td>
		<td style="border-top: solid 1px #f0f0f0;"><span style="vertical-align:top">{DURACION}&nbsp;hrs.</span></td>

	{*TARIFASOWCK}
	<td id="tdfamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" style="background-color: {FF_BG_COLOR}; color: {FF_FG_COLOR}; border-top: solid 1px white; border-left: solid 1px white; font-weight: bold; cursor: pointer; text-align: center" onClick="($('radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]')).checked = true;set_vuelo_y_clase($('radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]').form, '{ID_SEGMENTO}', '{ID_VUELO}', '{CLASE}', '{ID_FAMILIA}', '{MONEDA}', '{VALOR_TARIFA}','{FAREBASIS_FULL}','{NAME}', {ARRAY_TAXES}); javascript:redirect_paso2_manana('{RELOAD}', '{LINK_PASO2_MANANA_VUELTA}', 'radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]', '0', '{OVERNIGHT}'); cambiar_estilo(this, {ID_SEGMENTO})" onmouseover="owflex_mouseover(this, {ID_SEGMENTO});" onmouseout="owflex_mouseout(this, {ID_SEGMENTO});">
		<input type='radio' name='{NAME}' id="radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" value='{VALUE}' style='display:none' {CHECKED} onClick="set_vuelo_y_clase(this.form, '{ID_SEGMENTO}', '{ID_VUELO}', '{CLASE}', '{ID_FAMILIA}', '{MONEDA}', '{VALOR_TARIFA}', {ARRAY_TAXES});">
		<input type="hidden" id="valor_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{VALOR_TARIFA}">
		<input type="hidden" id="taxes_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{ARRAY_TAXES}">
		<input type="hidden" id="fee_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{FEE}">
		<input type="hidden" id="q_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{Q_AMOUNT}">
		{SIGNO_MONEDA}{TEXT} {VACANCY_INFO}

		<div id="ttip_{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" style="display: none;">
			<div class="top"></div>
			<div class="middle">
				{TTIP_MSG}
			</div>
			<div class="bottom"></div>
		</div>
	</td>
	{/TARIFASOWCK}

	{*TARIFASOW}
	<td id="tdfamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" style="background-color: {FF_BG_COLOR}; color: {FF_FG_COLOR}; border-top: solid 1px white; border-left: solid 1px white; cursor: pointer; text-align: center; font-weight:bold;" onmouseover="owflex_mouseover(this, {ID_SEGMENTO});" onmouseout="owflex_mouseout(this, {ID_SEGMENTO});" onClick="($('radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]')).checked = true; set_vuelo_y_clase($('radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]').form, '{ID_SEGMENTO}', '{ID_VUELO}', '{CLASE}', '{ID_FAMILIA}', '{MONEDA}', '{VALOR_TARIFA}','{FAREBASIS_FULL}', '{NAME}', {ARRAY_TAXES}); javascript:redirect_paso2_manana('{RELOAD}', '{LINK_PASO2_MANANA_VUELTA}', 'radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]', '0', '{OVERNIGHT}'); cambiar_estilo(this, {ID_SEGMENTO})">
		<input type='radio' name='{NAME}' id="radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" value='{VALUE}' style='display:none' {CHECKED} onClick=" set_vuelo_y_clase(this.form, '{ID_SEGMENTO}', '{ID_VUELO}', '{CLASE}', '{ID_FAMILIA}', '{MONEDA}', '{VALOR_TARIFA}','{FAREBASIS_FULL}','{NAME}', {ARRAY_TAXES});">
		<input type="hidden" id="valor_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{VALOR_TARIFA}">
		<input type="hidden" id="taxes_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{ARRAY_TAXES}">
		<input type="hidden" id="fee_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{FEE}">
		<input type="hidden" id="q_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{Q_AMOUNT}">
		{DESDE} {SIGNO_MONEDA}{TEXT} {TEXT_KM} {SIGNO_MONEDA_KM} {VACANCY_INFO}<br>
		{LINK_VER_CABINA}
	</td>
	{/TARIFASOW}
	{*TARIFASOWDI}
	<td id="tdfamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" style="background-color: {FF_BG_COLOR}; color: {FF_FG_COLOR}; border-top: solid 1px white; border-left: solid 1px white; cursor: pointer; text-align: center; font-weight:bold;">
		<input type='radio' name='{NAME}' id="radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" value='{VALUE}' style='display:none' {CHECKED} disabled>
		<input type="hidden" id="valor_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{VALOR_TARIFA}">
		<input type="hidden" id="taxes_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{ARRAY_TAXES}">
		<input type="hidden" id="fee_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{FEE}">
		<input type="hidden" id="q_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{Q_AMOUNT}">
		{SIGNO_MONEDA}{TEXT}<br>
		{LINK_VER_CABINA}
	</td>
	{/TARIFASOWDI}
	{*TARIFASOWNA}
	<td id="tdfamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" style="background-color: {FF_BG_COLOR}; color: #000000; border-top: solid 1px white; border-left: solid 1px white;">
		<p style="text-align: center; color:{FF_FG_COLOR}">{_LABEL_AGOTADO}</p>
	</td>
	{/TARIFASOWNA}	
	{*TARIFASOWND}
	<td id="tdfamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" style="background-color: {FF_BG_COLOR}; color: {FF_FG_COLOR}; border-top: solid 1px white; border-left: solid 1px white;">
		<b>&mdash;</b>
	</td>
	{/TARIFASOWND}	
	</tr>
	{/VUELOSOW}
</table>
<div>
	<table class="table" cellspacing="0" cellpadding="0" width="100%">
		<tr style="font-size: 11px;"><td>{_FRASE_VUELOS_OPERADOS_LAN}</td><td>{_FRASE_VUELOS_OPERADOS_TAM}</td><td>{_FRASE_VUELOS_OPERADOS_ONEWORLD}</td><td>{_FRASE_VUELOS_OPERADOS_OTRAS}</td></tr>
	</table>
</div>
<br>

{/SEGMENTOOW}

{*VACANCY_DISPLAY}
<br><a title="{_LABEL_ULTIMOS_CUPOS_1}{_LABEL_ULTIMOS_CUPOS_2}" href="javascript:showLightbox();">{_LABEL_ULTIMOS_CUPOS_1} {VACANCY} {_LABEL_ULTIMOS_CUPOS_2}</a></br>
{/VACANCY_DISPLAY}
<div style="display: none;" id="over" class="overbox">
	<div id="contmodal">
		<div class="close">
			<a title="{_LABEL_CERRAR}" href="javascript:hideLightbox();">Cerrar</a>
		</div>
		<div id="contabla">
			{_MSG_ULTIMOS_CUPOS}
		</div>
	</div>
</div>
<div style="display: none;" id="fade" class="fadebox">&nbsp;</div>


{*OPERADO_POR_INFO}
						
							({INDEX}) {_LABEL_OPERADO_POR} {AIRLINE}
{/OPERADO_POR_INFO}

<input type="hidden" id="celda_owflex_mouseover" value=''>
<input type="hidden" id="estilo_celda_owflex_mouseover" value=''>

<input type="hidden" id="sumatarifas_real" name="sumatarifas_real" value="">
<input type="hidden" id="celda_owflex_anterior_1" value=''>
<input type="hidden" id="estilo_celda_owflex_anterior_1" value=''>

<input type="hidden" id="celda_owflex_anterior_2" value=''>
<input type="hidden" id="estilo_celda_owflex_anterior_2" value=''>

<input type="hidden" id="mowflex_desde_paso3" value='{DESDE_PASO3}'>

  {*BLOQUE_DESPLIEGUE_TARIFA}
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td style="width:50%;">&nbsp;</td>
    <td style="width:50%;"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_tarifa">
  <tr>
    <td style="text-align: right; float: right;">{TARIFA}</td>
  </tr>
  <tr>
  {*BLOQUE_TARIFA_SIN_TAX}
    <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_tarifa_borde" >
      <tr style="font-size: 15px">
        <td style="color:#333333;"><b>{LABEL_TARIFA} (*) : &nbsp;</b></td>
        <td id="sumatarifas" style="font-weight: bold; text-align:right; float:right; color:#333333;">&nbsp;</td>
      </tr>
      <tr style="font-size: 12px;">
      	<input type='hidden' name='moneda_precio_final_paso2' id='moneda_precio_final_paso2' value='{MONEDA_FINAL_PASO2} por pasajero'>
        <td colspan="2" style="font-size: 11px; color:#333333; text-align: right;">(*){_VALORES_EN} {MONEDA}</td>
        </tr>
    </table></td>
    {/BLOQUE_TARIFA_SIN_TAX}
  </tr>
  <tr>
  {*BLOQUE_TARIFA_CON_TAX}
    <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_tarifa_borde">
      <tr style="font-size: 12px">
        <td style="text-align:left;">{LABEL_TARIFA}:</td>
        <td id = "tarifa_sin_impuesto" style="text-align:right;">{_LABEL_VALOR_PAGAR_SIN_IMPUESTOS}</td>
      </tr>
      <tr style="font-size: 12px">
        <td style="text-align:left;">{_LABEL_SURCHARGES}:</td>
        <td id ="total_impuestos" style="text-align:right;">{_LABEL_TOTAL} {_LABEL_SURCHARGES}</td>
      </tr>
      <tr style="font-size: 12px">
        <td style="text-align:left;">{_LABEL_FEE}:</td>
        <td id ="total_fee" style="text-align:right;">{_LABEL_TOTAL} {_LABEL_FEE}</td>
      </tr>
      <tr style="font-size: 12px">
        <td style="text-align:left;">{_LABEL_IMPUESTOS}:</td>
        <td id ="total_impuestos" style="text-align:right;">{_LABEL_TOTAL} {_LABEL_IMPUESTOS}</td>
      </tr>
      <tr style="font-size: 15px">
        <td style="text-align:left; color:#333333;"><b>{LABEL_TARIFA} (*) : &nbsp;</b></td>
        <td id="sumatarifas" style="font-weight: bold; text-align:right; color:#333333;">&nbsp;</td>
      </tr>
      <tr style="font-size: 12px">
      <input type='hidden' name='moneda_precio_final_paso2' id='moneda_precio_final_paso2' value='{MONEDA_FINAL_PASO2}'>
        <td colspan="2" style=" font-size:11px; color:#333333; text-align:right;">(*){_VALORES_EN} {MONEDA}</td>
        </tr>
    </table></td>
   {/BLOQUE_TARIFA_CON_TAX}
  </tr>
</table>
  {/BLOQUE_DESPLIEGUE_TARIFA}  

</td>
  </tr>
</table>
<br>
</div>
<div id="nota">{FLEX_NOTA}</div>
</div>
</div>


<script type="text/javascript">window.onLoad = init_owflex();</script>
