<link href="/css/cajero.css" rel="stylesheet" type="text/css"/>
<script src="/js/jquery/jquery_1_4_2_min.js" type="text/javascript"></script>
<script src="/js/prototype.js" type="text/javascript"></script>
<script src="/js/json.js" type="text/javascript"></script>
<script src="/js/json_services.js" type="text/javascript"></script>
<script src="/js/dynamic_components.js" type="text/javascript"></script>

<input type='hidden' id='lock_matrix' value='locked'>

<script type="text/javascript">
{*ROWFLEX_SIN_MATRIZ}
function redirect_paso2_manana(reload, link_paso2, id_element, initial_reload, overnight)
	{

	// DE429: se debe recargar la pagina cambiando la fecha de retorno	
	var url = link_paso2 + "&overnight=" + overnight;
	if (initial_reload == '1')
		{
		alert("El vuelo de salida llega a destino al día siguiente del seleccionado originalmente. A continuación se modificará automáticamente su fecha de regreso para que se ajuste a la cantidad de noches definida para este programa.");
		window.location = url;
		}

	if (reload == '1')
		{
		if (confirm("Si selecciona este vuelo de salida, el día de regreso se ajustará automáticamente para coincidir con la cantidad de noches definidas para este programa. Presione \"Aceptar\" para continuar la compra con la nueva fecha de regreso o \"Cancelar\" para seleccionar otra alternativa.") )
			{	
			window.location = url;
			}
		else
			{
			document.getElementById(id_element).checked = false;
			return;
			}
		}

	}
{/ROWFLEX_SIN_MATRIZ}

function precheck_and_submit(f)
	{
	// Eat the return value
	check_and_submit(f);
	}

function check_and_submit(f)
	{
	//set_fechas_segun_radio(f);
	if (f.fecha1_dia.value == '' || f.fecha1_anomes.value == '')
		{
		alert('{_PASO2_FLEX_ERROR_FECHAS_JS}');
		return false;
		}
	if ('{ACTION_JS}' == '')
		{
		f.action = '/cgi-bin/compra/paso2.cgi';
		}
	else
		{
		f.action = '{ACTION_JS}';
		}
	f.submit();
	return true;
	}


function check_fechas_limite_matriz(fecha_seleccionada)
	{
	var fecha_seleccionada_input = fecha_seleccionada;
	fecha_seleccionada_input = fecha_seleccionada_input.substr(fecha_seleccionada_input.length - 10, fecha_seleccionada_input.length);
	fecha_seleccionada_input = fecha_seleccionada_input.split('-');
	var fecha_seleccionada = new Date(fecha_seleccionada_input[0]+'/'+ fecha_seleccionada_input[1]+'/'+ fecha_seleccionada_input[2]);

	var min_fecha_matriz_vuelta_html = document.getElementById('fecha_vuelta_min').value;
	min_fecha_matriz_vuelta_html = min_fecha_matriz_vuelta_html.split('-');
	var fecha_matriz_vuelta = new Date(min_fecha_matriz_vuelta_html[0]+'/'+ min_fecha_matriz_vuelta_html[1]+'/'+ min_fecha_matriz_vuelta_html[2]);
	//calculando la fecha seleccionada al comienzo
	fecha_matriz_vuelta.setDate(fecha_matriz_vuelta.getDate()+3);

	var way = document.getElementById('id_sentido').value;
	
	if(way == 'ida') {
		if(typeof(last_vuelta_painted) != 'undefined') {	
			var last_vuelta_painted_js = (last_vuelta_painted.substr(last_vuelta_painted.length - 10, last_vuelta_painted.length)).split('-');
			var last_vuelta_painted_cmp = new Date(last_vuelta_painted_js[0]+'/'+ last_vuelta_painted_js[1]+'/'+ last_vuelta_painted_js[2]);
			if(last_vuelta_painted_cmp < fecha_seleccionada) {
				return 'ERROR_IDA';
			}
		}
		else {
			if(fecha_matriz_vuelta){
				if(fecha_matriz_vuelta < fecha_seleccionada) {
					return 'ERROR_IDA';
				}
			}
		}
	} 
	else {
		if(typeof(last_ida_painted) != 'undefined') {
			var last_ida_painted_js = (last_ida_painted.substr(last_ida_painted.length - 10, last_ida_painted.length)).split('-');
			var last_ida_painted_cmp = new Date(last_ida_painted_js[0]+'/'+ last_ida_painted_js[1]+'/'+ last_ida_painted_js[2]);
			if(last_ida_painted_cmp > fecha_seleccionada) {
				return 'ERROR_VUELTA';
			}
		}
		else {
			var min_fecha_matriz_ida_html = document.getElementById('fecha_ida_min').value;
			min_fecha_matriz_ida_html = min_fecha_matriz_ida_html.split('-');
			var fecha_matriz_ida = new Date(min_fecha_matriz_ida_html[0]+'/'+ min_fecha_matriz_ida_html[1]+'/'+ min_fecha_matriz_ida_html[2]);
			//calculo la fecha del medio de la matriz
			fecha_matriz_ida.setDate(fecha_matriz_ida.getDate()+3);

			if(fecha_matriz_ida){
				if(fecha_matriz_ida > fecha_seleccionada) {
					return 'ERROR_VUELTA';
				}
			}
		}
	}
	return 1;
}

function despliega_rowflex(fecha_ida, fecha_vuelta)
	{
	var way = document.getElementById('id_sentido').value;
	var id_casilla_matriz = way + "_fechas_" + fecha_ida + "|" + fecha_vuelta;


	if(check_fechas_limite_matriz(fecha_ida) == 'ERROR_IDA'){
		alert("{_MSG_ERROR_ROWFLEX_FECHA_IDA_JS}");
		return;
	}		
	else if(check_fechas_limite_matriz(fecha_ida) == 'ERROR_VUELTA'){
		alert("{_MSG_ERROR_ROWFLEX_FECHA_VUELTA_JS}");
		return;
	}

	
	var js_owflex_cargado = document.getElementById("js_owflex_cargado").value;
	var fechas_owflex_cargado = document.getElementById("fechas_owflex_cargado");
	var fecha_seleccionada = fecha_ida + '_' + fecha_vuelta;
	var fecha_ida_seleccionada = document.getElementById('fecha_ida_seleccionada_anterior').value;
	var fecha_vuelta_seleccionada = document.getElementById('fecha_vuelta_seleccionada_anterior').value;

	var lock = document.getElementById('lock_matrix').value;
	
	if((way == 'ida' && fecha_ida == fecha_ida_seleccionada) || lock == 'locked') {
		return;
	}
	if((way == 'vuelta' && fecha_ida == fecha_vuelta_seleccionada) || lock == 'locked') {
		return;
	}

	
	document.getElementById("contenido_despliegue_rowflex_" + way).style.display = "none";
	showLightbox_espera_owflex('layer_espera_owflex');
	//window.location.href = '#foco_llamada_owflex';
	window.scrollTo(0,0);
	
	var parametros = new Object();
	parametros.session_id = '{SESSION_ID}';
	parametros.fecha_ida = fecha_ida;
	parametros.fecha_vuelta = fecha_vuelta;
	parametros.js_owflex_cargado = js_owflex_cargado;
	parametros.way = way;
	
	var now = new Date();
	var milisegundos_inicio = now.getTime();

	Dynamic_Components.refresh_component(
		"contenido_despliegue_rowflex_" + way,
		"113",
		parametros,
		function()
			{
			//OK
			now = new Date();
			var milisegundos_fin = now.getTime();
			var diferencia_milisegundos = milisegundos_fin - milisegundos_inicio;
			
			if (diferencia_milisegundos < 4000)
				{
				setTimeout("muestra_rowflex('" + fecha_ida + "','" + fecha_vuelta + "','" + js_owflex_cargado + "','" + way + "')", 4000 - diferencia_milisegundos);
				}
			else
				{
				muestra_rowflex(fecha_ida, fecha_vuelta, js_owflex_cargado, way);
				}
			},
		function()
			{
			//maneja excepcion
			hideLightbox_espera_owflex('layer_espera_owflex');
			document.getElementById("contenido_despliegue_rowflex_" + way).style.display = "block";
			},
			'1',
			'compra'
		);
	

	}

function muestra_rowflex(fecha_ida, fecha_vuelta, js_owflex_cargado, way)
	{
	document.getElementById("contenido_despliegue_rowflex_" + way).style.display = "block";
	//cambiar a layer_espera_rowflex
	hideLightbox_espera_owflex('layer_espera_owflex');
	
	var fechas_owflex_cargado = document.getElementById("fechas_owflex_cargado");
	fechas_owflex_cargado.value = fecha_ida + '_' + fecha_vuelta;
	
	celda_mouse_click(document.forms.paso1, fecha_ida, fecha_vuelta);
	
	window.location.href = '#foco_post_recarga_owflex_' + way;
	
	if (js_owflex_cargado == '0')
		{
		document.getElementById("js_owflex_cargado").value = '1';
		}

	}

function set_way(t) {
	var elemento = t;
	
	while (	elemento.parentNode.id != 'contenido_despliegue_rowflex_ida' && 
			elemento.parentNode.id != 'contenido_despliegue_rowflex_vuelta') {
		elemento = elemento.parentNode;
	}
	if (elemento.parentNode.id == 'contenido_despliegue_rowflex_ida') {
		document.getElementById('id_sentido').value = 'ida';	
	}
	if (elemento.parentNode.id == 'contenido_despliegue_rowflex_vuelta') {
		document.getElementById('id_sentido').value = 'vuelta';	
	}

}
</script>


<script type="text/javascript">

var last_ida_painted = '';
var last_vuelta_painted = '';
var last_ida_fechas_painted = '';
var last_vuelta_fechas_painted = '';

function init(f, fecha, way)
	{
	
	f = document.forms.paso2;
	
	document.getElementById('id_sentido').value = way;
	
	if (typeof(f.fechas) != 'undefined')
		{
		for (var i = 0; i < f.fechas.length; ++i)
			{
			if (f.fechas[i].value == fecha + '|')
				{
				f.fechas[i].checked = true;
				break;
				}
			}
		}
	
	set_fechas(f, fecha, '');
	}

function set_fechas(f, f0, f1) {

	var way = document.getElementById('id_sentido').value;
	
	unset_fechas();
	
	if (way == 'ida') {
		document.getElementById('fecha_ida_seleccionada_anterior').value = document.getElementById('fecha_ida_seleccionada').value;
		document.getElementById('fecha_ida_seleccionada').value = f0;
		last_ida_painted = 'ida_' + f0;
		var celda = document.getElementById(last_ida_painted);
		celda.className = 'color_dia_selected selected';
		celda.style.color = "#000000";
		
		var fecha_ida = f0.split('-');
		document.getElementById('fecha1_dia').value = fecha_ida[2];
		document.getElementById('fecha1_anomes').value = fecha_ida[0] + '-' + fecha_ida[1];

		last_ida_fechas_painted = way + '_fechas_' + f0 + '|' + f1;
		celda = document.getElementById(last_ida_fechas_painted);
		
		if (celda) {
			celda.className = 'color_celda_selected selected';
		}
	}

	else if (way == 'vuelta') {
		document.getElementById('fecha_vuelta_seleccionada_anterior').value = document.getElementById('fecha_vuelta_seleccionada').value;
		document.getElementById('fecha_vuelta_seleccionada').value = f0;
		last_vuelta_painted = 'vuelta_' + f0;
		celda = document.getElementById(last_vuelta_painted);
		celda.className = 'color_dia_selected selected';
		celda.style.color = "#000000";
		var fecha_vuelta = f0.split('-');
		document.getElementById('fecha2_dia').value = fecha_vuelta[2];
		document.getElementById('fecha2_anomes').value = fecha_vuelta[0] + '-' + fecha_vuelta[1];
		
		last_vuelta_fechas_painted = way + '_fechas_' + f0 + '|' + f1;
		celda = document.getElementById(last_vuelta_fechas_painted);

		if (celda) {
			celda.className = 'color_celda_selected selected';
		}
	}
}

function unset_fechas() {

	var celda;

	var way = document.getElementById('id_sentido').value;
	
	if (last_ida_painted && way == 'ida') {
		celda = document.getElementById(last_ida_painted);
		celda.className = 'unselected';

		if (last_ida_fechas_painted && document.getElementById(last_ida_fechas_painted + '_color')) {
			celda = document.getElementById(last_ida_fechas_painted);
			var color = (document.getElementById(last_ida_fechas_painted + '_color')).value;
			celda.className = color + ' unselected';
		}
	}

	
	if (last_vuelta_painted && way == 'vuelta') {
		celda = document.getElementById(last_vuelta_painted);
		celda.className = 'unselected';

		if (last_vuelta_fechas_painted && document.getElementById(last_vuelta_fechas_painted + '_color')) {
			celda = document.getElementById(last_vuelta_fechas_painted);
			var color = (document.getElementById(last_vuelta_fechas_painted + '_color')).value;
			celda.className = color + ' unselected';
		}
		
	}


	
}

function set_fechas_segun_radio(f)
	{
	var fechas_arr;
	var algo_checked = false;

	if (typeof(f.fechas) != 'undefined')
		{
		for (i = 0; i < f.fechas.length; i++)
			{
			if (f.fechas[i].checked == true)
				{
				var val = f.fechas[i].value;
				fechas_arr = val.split('|');
				algo_checked = true;
				break //exist for loop, as target acquired.
				}
			}
		}
	if (algo_checked)
		{
		set_fechas(f, fechas_arr[0], fechas_arr[1]);
		}
	}


function celda_mouse_over(form, f_ida, f_vuelta)
	{
	if (document.getElementById('lock_matrix').value == 'locked') {
		return;
	}
	
	var way = document.getElementById('id_sentido').value;

	var celda_id = way + '_fechas_' + f_ida + '|' + f_vuelta;
	var celda = document.getElementById(celda_id);

	if (way == 'ida' && f_ida == document.getElementById('fecha_ida_seleccionada').value)
		{
		return;
		}
	if (way == 'vuelta' && f_ida == document.getElementById('fecha_vuelta_seleccionada').value)
		{
		return;
		}
		
	var celda_ida = document.getElementById(way + '_' + f_ida);
	celda_ida.className = 'color_over_dia';
	celda_ida.style.color = '#FFFFFF';
	
	celda.className = 'color_celda_over';
}

function celda_mouse_out(form, f_ida, f_vuelta, class_color)
	{
	if (document.getElementById('lock_matrix').value == 'locked') {
		return;
	}
	
	var way = document.getElementById('id_sentido').value;

	if (way == 'ida' && f_ida == document.getElementById('fecha_ida_seleccionada').value)
		{
		return;
		}
	if (way == 'vuelta' && f_ida == document.getElementById('fecha_vuelta_seleccionada').value)
		{
		return;
		}
	
	var celda_ida = document.getElementById(way + '_' + f_ida);
	
	if (f_ida == document.getElementById('fecha_'+way+'_seleccionada').value)
		{
		celda_ida.className = 'color_dia_selected';
		celda_ida.style.color = '#000000';
		}
	else
		{
		var celda_id = way + '_fechas_' + f_ida + '|' + f_vuelta;
		var celda = document.getElementById(celda_id);

		celda_ida.className = 'unselected';
		celda.className = class_color;
		}
	}

var fecha_nueva_input_matriz;
function celda_mouse_click(form, f_ida, f_vuelta)
	{
	
	fecha_nueva_input_matriz = f_ida;

	if(check_fechas_limite_matriz(f_ida) == 'ERROR_IDA' || check_fechas_limite_matriz(f_ida) == 'ERROR_VUELTA') {
		return;
	}

	if (document.getElementById('lock_matrix').value == 'locked') {
		return;
	}
	var way = document.getElementById('id_sentido').value;
	var radio_id = way + '_radio_' + f_ida + '|' + f_vuelta;
	var radio = document.getElementById(radio_id);
	if(radio)
		{
		radio.checked = true;
		set_fechas(form, f_ida, f_vuelta);
		celda_mouse_over(form, f_ida, f_vuelta);
		}	
	}
</script>

<style type="text/css">

.flex_matrix{
	background-color: #fff;
	border: none;
	margin:0;
	padding:0;
}

.flex_matrix td {
	border: none;
	text-align: left;
	vertical-align: middle;
	cursor: pointer;
	padding:0px;
	margin: 0px;
	}
	
.flex_matrix th {
	text-align: center;
	vertical-align: middle;
	color: #ffffff;
	font-size:11px;
	height:25px;
	padding:0px;
	margin:0px;
	background-color:#5b81aa;
	}
	


.legend table {
	border-width: 0px;
	text-align: center;
	vertical-align: middle;
	border-collapse: collapse;
	padding-left: 5px;
	padding-right: 5px;

	}

.legend th {
	font-size: xx-small;  
	font-style: normal;
	}
	
.legend {
	padding-left: 5px;
	padding-right: 5px
	border-width: 0px;
	/*text-align: right;*/
	float:left;
	/*clear:left;*/
	font-size: xx-small;  
	font-style: normal;
	width:100%;
}

.vertical td {
	border-width: 0px;
	text-align: center; 
	vertical-align: middle;
    }

.vertical{
	border-width: 0px;
	text-align: center;
	vertical-align: middle;
	
    }
	
.verticalelement {
	border-width: 0px;
	text-align: center;
	vertical-align: middle;
	padding-left: 1px;
	padding-right: 1px;
	}
	
th.selected {
	font-weight: bold;
	}
td.selected {
	font-weight: bold;
	}

/* colores para cuando el puntero esta sobre la celda*/
.color_celda_over {
	background-image: url('/images/common/bg_tarifas_mowflex_over.gif');
	background-color: #033D7D;
	border-color:#FFFFFF;
	color: #FFFFFF;
	}

.color_over_dia {
	background-image: url('/images/common/bg_tarifas_mowflex_over_dia.gif');
	background-color: #033D7D;
	color: #FFFFFF;
	}

.color_dia_selected { 
	background-image: url('/images/common/bg_tarifas_mowflex_selec.gif');
	background-color: #FDE966;
	color: #000000;
	font-weight: bold;
	}

.color_celda_selected { 
	background-image: url('/images/common/bg_tarifas_mowflex_selec.gif');
	background-color: #FDE966;
	color: #000000;
	font-weight: bold;
	}


/* Colores para tarifas - 1 es la mas barata */
.color_7 {
	/*background-color: rgb(150, 154, 168);*/
	background-image: url('/images/common/bg_tarifas_mowflex.gif');
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	}
.color_6 {
	/*background-color: rgb(150, 154, 168);*/
	background-image: url('/images/common/bg_tarifas_mowflex.gif');
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	}
.color_5 {
	/*background-color: rgb(170, 174, 188);*/
	background-image: url('/images/common/bg_tarifas_mowflex.gif');
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	}
.color_4 {
	/*background-color: rgb(190, 194, 208);*/
	background-image: url('/images/common/bg_tarifas_mowflex.gif');
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	}
.color_3 {
	/*background-color: rgb(210, 214, 228);*/
	background-image: url('/images/common/bg_tarifas_mowflex.gif');
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	
	}
.color_2 {
	/*background-color: rgb(230, 234, 248);*/
	background-image: url('/images/common/bg_tarifas_mowflex.gif');
	background-color: #FFF;
	border-color:#FFF;
	}
.color_1 {
	border: 1px solid #000000;
	background: #dde0e3 url('/images/common/bg_tarifas_mowflex_economica.gif') repeat-x bottom;
	color:#000000;
}

.color {
	background-image: url('/images/common/bg_tarifas_mowflex.gif');
}

/* Este es el de las celdas vacias */
.color_0 {
	/*background-color: rgb(230, 234, 248);*/
	background-color: #FFFFFF;
	border-color: #FFFFFF;
	}

.color_legend_1 {
	background-color: #6A72A3;
	border-color:#000000;

}

.color_legend_2 {
	background-color: #99DBD1;
	border-color:#000000;
}

.color_fecha_seleccionada{
	background-image: url('/images/common/bg_tarifas_mowflex_economica.gif');
	background-color: #FDEB7F;
	border-color:#000000;
}

</style>

<input type='hidden' id='init_ok_ida' value=''>
<input type='hidden' id='init_ok_vuelta' value=''>

<input type='hidden' id='fecha1_dia' name='fecha1_dia' value=''>
<input type='hidden' id='fecha1_anomes' name='fecha1_anomes' value=''>
<input type='hidden' id='fecha2_dia' name='fecha2_dia' value=''>
<input type='hidden' id='fecha2_anomes' name='fecha2_anomes' value=''>

<input type='hidden' id='fecha_ida_seleccionada_anterior' value=''>
<input type='hidden' id='fecha_vuelta_seleccionada_anterior' value=''>
<input type='hidden' id='fecha_ida_seleccionada' value=''>
<input type='hidden' id='fecha_vuelta_seleccionada' value=''>
{PROMOCION_CALENDARIO}
{FORM_TARIFAS_PROMOCIONALES}
<form action='/noJS.html' method='GET' name='paso1'>
		<input type="hidden" name="sentido" id="id_sentido" value="">	
		<input type="hidden" name="url_promo" id="url_promo" value="{URL_PROMO}">
		<input type='hidden' name='session_id' value='{SESSION_ID}'>
		<input type='hidden' name='reserva' value='{IS_RESERVA}'>
		<input type='hidden' name='rand_check' value='{RAND_CHECK}'>
		<input type='hidden' name='otras_ciudades' value=''>
		<input type='hidden' name='num_segmentos_interfaz' value='{NUM_SEGMENTOS}'>
		<input type='hidden' name='from_city1' value='{FROM_CITY1}'>
		<input type='hidden' name='to_city1' value='{TO_CITY1}'>
		<input type='hidden' name='from_city2' value='{FROM_CITY2}'>
		<input type='hidden' name='to_city2' value='{TO_CITY2}'>

		<input type='hidden' name='nadults' value='{NADULTS}'>
		<input type='hidden' name='nchildren' value='{NCHILDREN}'>
		{*BLOCK_CHILDREN_AGE}
		<input type='hidden' name='child_age{N_CHILD}' value='{AGE_CHILD}'>
		{/BLOCK_CHILDREN_AGE}
		<input type='hidden' name='ninfants' value='{NINFANTS}'>
		<input type='hidden' name='tipo_paso2' value='flex'>
		<input type='hidden' name='flex' value='0'>
		<input type='hidden' name='no_tarifas_promocionales' value='1'>
	
	<div id="foco_llamada_owflex"></div>
<h1>{_TITULO_PASO_2}</h1>
<p>{_BAJADA_PASO_2}</p> 
{AIRPORT_CLOSURE_MESSAGE}
	<div id="msg_precios_ow_flex" {HIDDEN_MOWFLEX}>{_MSG_PRECIOS_OW_JS}</div>
	<h2>{MENSAJE}</h2>
{MENSAJE_DESCUENTO}
	<div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>{SELECCION}</td>
  </tr>
  <tr>
  {*NOTA}
    <td class="par"><p> <strong>{_LABEL_NOTA}</strong> <br />
					{_MSG_RESTRICCIONES_SOUTHWEST} <br />
					{TXT_NOTA} </p></td>
  {/NOTA}
  </tr>
 </table>
	</div>
	<div id="msg_contingencia">{MENSAJES_CONTINGENCIA}</div>
	<input type='hidden' id='js_owflex_cargado' value="0">
	<input type='hidden' id='fechas_owflex_cargado' value="{FECHAS_SELECCIONADAS}">
</form>

{*DESPLIEGUE_ROWFLEX}
<input type='hidden' id='mowflex' value='{MOWFLEX}' />
<form action='#' method='POST' name='paso2'>
	<input type='hidden' name='session_id' value='{SESSION_ID}'>
	<input type='hidden' name='tipo_paso2' value='{TIPO_PASO2}'>
	<input type='hidden' name='rand_check' value='{RAND_CHECK}'>
	<input type='hidden' name='currency_cotizacion' value='{ID_MONEDA}'>
    <input type="hidden" name="url_promo" id="url_promo" value="{URL_PROMO}">	
    <input type="hidden" name="q_desplegado_paso2" id="q_desplegado_paso2" value="">

	{LAYER_ESPERA_OWFLEX}
	{LAYER_ESPERA_OWFLEX_TARIFAS_PROMOCIONALES}
	<div id="foco_post_recarga_owflex_ida"></div>
		{ROWFLEX_IDA}
	<div id="foco_post_recarga_owflex_vuelta"></div>
		{ROWFLEX_VUELTA}
{/DESPLIEGUE_ROWFLEX}
{*BLOQUE_DESPLIEGUE_TARIFA}
<div id="box_int_border_process" style="margin-top:10px">
<table border="0" cellpadding="0" cellspacing="0" width="100%">

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
        <td style="text-align:left; padding:8px 4px 4px 8px;">{LABEL_TARIFA}:</td>
        <td id = "tarifa_sin_impuesto" style="text-align:right; padding:8px 4px 4px 8px;">{_LABEL_VALOR_PAGAR_SIN_IMPUESTOS}</td>
      </tr>
      <tr style="font-size: 12px">
        <td style="text-align:left; padding:8px 4px 4px 8px;">{_LABEL_FEE_CO}:</td>
        <td id ="total_fee" style="text-align:right; padding:8px 4px 4px 8px;">{_LABEL_TOTAL} {_LABEL_FEE}</td>
      </tr>
      <tr style="font-size: 12px">
        <td style="text-align:left; padding:8px 4px 4px 8px;">{_LABEL_SURCHARGES}:</td>
        <td id = "total_q" style="text-align:right; padding:8px 4px 4px 8px;">{_LABEL_TOTAL} {_LABEL_SURCHARGES}</td>
      </tr>
      <tr style="font-size: 12px">
        <td style="text-align:left; padding:8px 4px 4px 8px;">{_LABEL_IMPUESTOS}:</td>
        <td id ="total_impuestos" style="text-align:right; padding:8px 4px 4px 8px;">{_LABEL_TOTAL} {_LABEL_IMPUESTOS}</td>
      </tr>
      <tr style="font-size: 15px">
        <td style="text-align:left; color:#333333; padding:8px 4px 4px 8px;"><b>{LABEL_TARIFA} (*) : &nbsp;</b></td>
        <td id="sumatarifas" style="font-weight: bold; text-align:right; color:#333333; padding:8px 4px 4px 8px;">&nbsp;</td>
      </tr>
      <tr style="font-size: 12px">
      <input type='hidden' name='moneda_precio_final_paso2' id='moneda_precio_final_paso2' value='{MONEDA_FINAL_PASO2}'>
        <td colspan="2" style=" font-size:11px; color:#333333; text-align:right;">(*){_VALORES_EN} {MONEDA}</td>
        </tr>
    </table></td>
   {/BLOQUE_TARIFA_CON_TAX}
  </tr>
</table>
  </td></tr></table></div>{/BLOQUE_DESPLIEGUE_TARIFA}
	<table cellspacing="0" cellpadding="0" width="40%" id=barra-continuar>
		<tr>
          {*BLOQUE_BOTON_CONTINUAR_ROWFLEX}
              <td><input type='button' class="button-process" id='submitButton_owflex' value='{_LABEL_CONTINUAR}' name="submitButton" onclick="check_and_submit_owflex(document.forms.paso2)"/></td>
          {/BLOQUE_BOTON_CONTINUAR_ROWFLEX}
          {*BLOQUE_ERROR_ROWFLEX}
              {ERROR}
			  <td><input type="button" class="button-process-small-back bluegrey-back" id='submitButton_volver_rowflex' value='{_LABEL_VOLVER_PASO1}' onclick="window.location = '/cgi-bin/compra/paso1.cgi?session_id={SESSION_ID}&just_refresh=1'"/></td>
          {/BLOQUE_ERROR_ROWFLEX}		
		</tr>
	</table>
</form>
<br>
<br>
<script type='text/javascript'>
function advierte_errores_validacion_posteriores(f)
	{
	var errores;
	errores = '';
	{INSTRUCCIONES_ERROR}
	if (errores.length > 0)
		{
		alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
		return false;
		}
	}
document.paso1.action = 'javascript:precheck_and_submit(document.paso1);';
advierte_errores_validacion_posteriores(document.paso1);

{*LLAMADA_DESPLIEGUE_TARIFAS_PROMOCIONALES}
window.onload = function (){
	despliega_componente_tarifas_promocionales();
}
{/LLAMADA_DESPLIEGUE_TARIFAS_PROMOCIONALES}

window.onload = function () {
	
	document.getElementById('lock_matrix').value = 'unlocked';
	
	if (typeof(init_ida) == 'function') {
		init_ida();
	}
	if (typeof(init_vuelta) == 'function') {
		init_vuelta()
	}
};
</script>
