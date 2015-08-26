<style type="text/css">

/************** INICIO CSS PARA LIGHT_BOX *******************/
.fadebox_escalas {
	display: none;
	position:fixed;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 2200px;
	background-color: white;
	z-index:1001;
	-moz-opacity: 0.8;
	opacity:.80;
	filter: alpha(opacity=80);
}

/* IE6 Only */
* html .fadebox_escalas {
	width:230%;
	}

.overbox_escalas {
	display: none;
	position: absolute;
	top: 20%;
	left: 25%;
	width: 50%;
	height: 600px;
	z-index:1002;
}

/* IE6 Only */
* html .overbox_escalas {
	width: 100%;
	}


#content_escalas {
	background: #2f73ba;
	border: solid 8px #2f73ba;
	/*padding: 10px;*/
	width:560px;
	margin:0px auto 0px auto;
	overflow-x: hidden;
	overflow-y:hidden;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0px 0px 2px 2px #8e8e8e;
	box-shadow: 0px 0px 2px 2px #8e8e8e;
}
.texto_lightbox_escalas{
	background: #ffffff;
	padding: 10px;
	width:540px;
	margin:0px;
	z-index:1008;
	overflow-x:hidden;
	overflow-y: hidden;
}
.cerrar_escalas{
	background: #2f73ba;
	padding: 5px 0px 0px 10px;
	width:550px;
	margin:0px;
	text-align:right;
	height:18px;
}

.texto_cerrar_escalas{
	background: #2f73ba;
	padding: 0px;
	width:525px;
	margin:0px;
	float:left;
	text-align:right;
	padding-right:5px;
}
.texto_cerrar_escalas a:link{
	padding: 0px;
	margin:0px;
	color:#ffffff;
	text-decoration:none;
}

.texto_cerrar_escalas a:hover{
	padding: 0px;
	margin:0px;
	color:#ffffff;
	text-decoration:underline;
}

.imagen_cerrar_escalas{
	padding: 0px 4px 0px 0px;
	margin:0px;
	text-align:right;
	border:0;
	float:left;
	width:16px;
}
.imagen_cerrar_escalas a:link img{
	padding: 0px;
	margin:0px;
	text-align:right;
	border:0;
}

.layer_escalas {
	margin:0;
	padding:0;
}
.col_izq {
	background-color:#DCE0EE;
	border:1px solid #CCC;
	padding:5px 10px;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:bold;
	color: #053972;
	border-right:none;
	width:50%;
}
.col_der {
	background-color:#FFF;
	border:1px solid #CCC;
	padding:5px 15px;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:bold;
	width:50%;
}
.btn_ingresar {
	text-align: right;
	padding: 15px 0 0 0;
}
.texto{
	padding:0 20px;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	color:#333;
	}
.texto_cerrar_escalas a:link {
    color: #FFFFFF;
    margin: 0;
    padding: 0;
    text-decoration: none;
}

/************** FIN CSS PARA LIGHT_BOX *******************/
</style>
<script type="text/javascript">
if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){ 
 var iev=new Number(RegExp.$1)
}


function showLightbox_escalas(layer) {
	window.scroll(0,0);
	document.getElementById(layer).style.display='block';
	document.getElementById('fade_escalas').style.display='block';

	if (/MSIE (\d+\.\d+);/.test(navigator.userAgent))
	{
		if (iev>=6)
		selects = document.getElementsByTagName("select");
		for (i = 0; i != selects.length; i++) {
			selects[i].style.visibility = "hidden";
		}
	}
}
function hideLightbox_escalas(layer) {
	document.getElementById(layer).style.display='none';
	document.getElementById('fade_escalas').style.display='none';
	if (/MSIE (\d+\.\d+);/.test(navigator.userAgent))
	{
	
		selects = document.getElementsByTagName("select");
		for (i = 0; i != selects.length; i++) {
			selects[i].style.visibility = "visible";
		}
	}
}
</script>

<div id ="fade_escalas" class="fadebox_escalas">&nbsp;</div>

{*BLOQUE_DETALLE_ESCALAS}
<div id='layer_escalas_{ID}' class="overbox_escalas">
	<div id="content_escalas">	
	<div class="cerrar_escalas">
	<div class="texto_cerrar_escalas"><a title="{_LABEL_CERRAR}" href="javascript:hideLightbox_escalas('layer_escalas_{ID}');">{_LABEL_CERRAR}</a></div>
	<div class="imagen_cerrar_escalas"><a title="{_LABEL_CERRAR}" href="javascript:hideLightbox_escalas('layer_escalas_{ID}');"><img src="/images/common/cerrar_lightbox.png" width="13" height="15" alt="{_LABEL_CERRAR}"></a></div>
	</div>
	<div class="texto_lightbox_escalas">


	<h4>{_LABEL_DETALLE_ITINERARIO} {TRAMO}</h4>
	<table width="540" border="0" cellspacing="0" cellpadding="0" class="table">
		<tr>
			<td><strong>{_LABEL_SALIENDO_DE}:</strong> {CIUDAD_ORIGEN} ({CODIGO_AEROPUERTO_ORIGEN}) {FECHA_ORIGEN} ({_LABEL_HORA_LOCAL})</td>  
		</tr>
		<tr>
			<td><strong>{_LABEL_DESTINO_FINAL}:</strong> {CIUDAD_DESTINO} ({CODIGO_AEROPUERTO_DESTINO}) {FECHA_DESTINO} ({_LABEL_HORA_LOCAL})</td>  
		</tr>
		<tr>
			<td><strong>{_LABEL_DURACION_TOTAL_APROX}:</strong> {DURACION}</td>  
		</tr>
		<tr>
			<td><strong>{_LABEL_N_CONEXIONES}:</strong> {NUMERO_CONEXIONES}</td>  
		</tr>
		<tr>
			<td><strong>{_LABEL_N_ESCALAS}:</strong> {NUMERO_ESCALAS}</td>  
		</tr>
		<br>
			
		{*BLOQUE_ESCALA}
		<tr>
			<td><hr><br><strong>{TIPO_TRAMO}:</strong> {CIUDAD_ORIGEN} ({CODIGO_AEROPUERTO_ORIGEN}) {HORA_ORIGEN} - {CIUDAD_DESTINO} ({CODIGO_AEROPUERTO_DESTINO}) {HORA_DESTINO}</td>  
		</tr>
		<tr>
			<td><strong>{_LABEL_NUMERO_VUELO}:</strong> {NUM_VUELO}</td>  
		</tr>
		<tr>
			<td><strong>{_LABEL_OPERADO_POR}:</strong> {OPERADOR} </td>  
		</tr>
		{/BLOQUE_ESCALA}

	</table>
    </div>
	</div>
</div>
{/BLOQUE_DETALLE_ESCALAS}

<input id="applyFareResidentMessageFor" type="hidden" value="{APPLY_FARE_RESIDENT_MESSAGE_FOR}">
