<script type="text/javascript" src="/js/prototype.js"></script>
<script type="text/javascript" src="/js/scriptaculous/scriptaculous.js"></script>
<div id="following_tooltip">XX</div>
<script type="text/javascript">
var colores_ff = Array();
var tarifa = 0;
var tarifa_segmento_vuelo = new Array();
var tarifa_segmento = new Array();
var vuelo_radio = new Array();
var segmento_que_manda = 0;

////////////// TOOL-TIP 
// // Simple follow the mouse script
// copyright Stephen Chapman, 30th September 2005
// you may copy this script provided that you retain the copyright notice

var divName = 'following_tooltip'; // div that is to follow the mouse
var offX = 15;         // X offset from mouse position
var offY = 15;         // Y offset from mouse position

// no changes required below this line
function mouseX(evt) {if (!evt) evt = window.event; if (evt.pageX) return evt.pageX; else if (evt.clientX)return evt.clientX + (document.documentElement.scrollLeft ?  document.documentElement.scrollLeft : document.body.scrollLeft); else return 0;}
function mouseY(evt) {if (!evt) evt = window.event; if (evt.pageY) return evt.pageY; else if (evt.clientY)return evt.clientY + (document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop); else return 0;} 
function follow(evt) {if (document.getElementById) {var obj = document.getElementById(divName).style; obj.visibility = 'visible'; obj.left = (parseInt(mouseX(evt))+offX) + 'px';  obj.top = (parseInt(mouseY(evt))+offY) + 'px';}} 

function get_radio_as_array(radio)
	{
	if (radio.length == null)
		{
		return new Array(radio);
		}
	return radio;
	}

function activa_tip(seg, vue)
	{
	var radio = get_radio_as_array(document.paso2['vuelo_segmento' + seg]);
	if (radio[vue - 1].disabled)
		{
		var obj = $(divName);
		obj.innerHTML = '{_PASO2_FLEX_MSG_VUELO_NO_DISPONIBLE}'; // ' + document.getElementById('familia_seg' + seg + '_vue' + vue).value;
		obj.style.backgroundColor = $('color_seg' + seg + '_vue' + vue).value;
		document.onmousemove = follow;
		}
	}

function desactiva_tip()
	{
	var obj = $(divName).style; obj.visibility = 'hidden';
	document.onmousemove = '';
	}

function precheck_and_submit(f)
	{
	// Eat the return value
	check_and_submit(f);
	}

var combina_con = new Array();
combina_con[1] = new Array();
combina_con[2] = new Array();
{*COMBINACIONES_FF_DECS}combina_con[{ID_SEGMENTO}]['{FF_CODE}'] = new Array();
{/COMBINACIONES_FF_DECS}
{*COMBINACIONES_FF}combina_con[{ID_SEGMENTO}]['{FF_CODE}'][{ID_VUELO}] = new Array('{VUELOS_COMBINAN}');
{/COMBINACIONES_FF}

var vuelos_clase = new Array();
vuelos_clase[1] = new Array();
vuelos_clase[2] = new Array();
{*VUELOS_FF}vuelos_clase[{ID_SEGMENTO}]['{FF_CODE}'] = new Array ('{VUELOS_CLASE}');
{/VUELOS_FF}

var segmento_vacio = {SEG_VACIO};

function prepara_labels(f)
	{
	// seteo colores de borde para vuelos
	for (var segmento = 1; segmento <= 2; ++segmento)
		{
		var vuelos = get_radio_as_array(f['vuelo_segmento' + segmento]);
		for (var vuelo = 1; vuelo <= vuelos.length; ++vuelo)
			{
			setea_color_disabled(f, segmento, vuelo);
			}
		}
	
	var radio_familia = f.radio_familia;
	for (var fam = 0; fam < radio_familia.length; ++fam)
		{
		// saco colores de borde para familias disabled
		if (radio_familia[fam].disabled)
			{
			var td_color = $('color_familia' + radio_familia[fam].value);
			td_color.style.borderLeft = '10px solid';
			td_color.style.borderLeftColor = '#FFFFFF';
			}
		
		// calculo tarifa menor combinaciones
		if (!radio_familia[fam].value.match(/_all/) || radio_familia[fam].disabled)
			{
			continue;
			}

		var familia_all = radio_familia[fam].value;
		var familia = familia_all.split('_');
		familia = familia[0];
		var min_price = 99999999;
		var tarifas = Array();
		for (i = 0; i < vuelos_clase[1][familia_all].length; i++)
			{
			var tarifa1 = parseFloat($('tarifa_seg1_vue' + vuelos_clase[1][familia_all][i] + '_fam' + familia).value);
			for (j = 0; j < combina_con[1][familia_all][vuelos_clase[1][familia_all][i]].length; j++)
				{
				var tarifa2 = parseFloat($('tarifa_seg2_vue' + combina_con[1][familia_all][vuelos_clase[1][familia_all][i]][j] + '_fam' + familia).value);
				var tarifa = Math.round(tarifa1 + tarifa2);
				tarifas[tarifa.toString()] = 1
				if (tarifa < min_price)
					{
					min_price = tarifa;
					}
				}
			}
		var count_precios = 0;
		for (x in tarifas) ++count_precios;
		
		var hidden_precio = $('precio_menor_familia' + familia_all);
		hidden_precio.value = (count_precios > 1 ? '{_DESDE} ' : '{_POR} ') + '{SIMBOLO} ' + currency_format(min_price, '{ID_MONEDA}');
		var div_precio = $('precio_menor_otros_vuelos' + familia_all);
		div_precio.innerHTML = (count_precios > 1 ? '{_DESDE} ' : '') + '{SIMBOLO}' + currency_format(min_price, '{ID_MONEDA}');
		}
	}

function setea_color_disabled(f, segmento, vuelo)
	{
	var radio_familia = f.radio_familia;
	var found = false;
	for (var i = 0; i < radio_familia.length; ++i)
		{
		if (radio_familia[i].disabled) continue;
		for (var v in vuelos_clase[segmento][radio_familia[i].value])
			{
			//alert(segmento+':'+vuelo+':'+radio_familia[i].value+':'+v);
			if (vuelos_clase[segmento][radio_familia[i].value][v] == vuelo)
				{
				var td_familia = $('color_familia' + radio_familia[i].value);
				var td_vuelo = $('td_color_seg' + segmento + '_vue' + vuelo);
				//td_vuelo.style.backgroundColor = td_familia.style.backgroundColor;
				td_vuelo.style.borderLeft = td_familia.style.borderLeft;
				$('color_seg' + segmento + '_vue' + vuelo).value = td_familia.style.borderLeftColor;
				found = true;
				break;
				}
			}
		if (found) break;
		}
	}

function update_combinaciones(f, segmento)
	{
	if (segmento_vacio == 1)
		{
		return;
		}
	if (segmento_que_manda == 0)
		{
		segmento_que_manda = segmento;
		}
	if (segmento_que_manda != segmento)
		{
		return;
		}

	var familia_sel = getRadioValue(f.radio_familia);
	if (familia_sel == null)
		{
		return;
		}

	var vuelo_sel = getRadioValue(f['vuelo_segmento'+segmento]);
	if (vuelo_sel == null)
		{
		return;
		}

	var otro_segmento = (parseInt(segmento) % 2) + 1;
	var otros_radios = get_radio_as_array(f['vuelo_segmento' + otro_segmento]);
	var checked_anterior = -1;
	// limpieza
	for (var i = 1; i <= otros_radios.length; ++i)
		{
		var radio = otros_radios[i - 1];
		var tr = $('tr_seg' + otro_segmento + '_vue'+i);
		if (tr) tr.style.backgroundColor = "#eeeeee";
		radio.disabled = true;
		if (radio.checked)
			{
			checked_anterior = i - 1;
			radio.checked = false;
			}
		}
	
	// activacion de combinaciones validas
	for (var vuelo = 0; vuelo < combina_con[segmento][familia_sel][vuelo_sel].length; ++vuelo)
		{
		var tr = $('tr_seg' + otro_segmento + '_vue' + combina_con[segmento][familia_sel][vuelo_sel][vuelo]);
		if (tr) tr.style.backgroundColor = "#ffffff";
		var vuelo_con_que_combina = combina_con[segmento][familia_sel][vuelo_sel][vuelo] - 1;
		var radio = otros_radios[vuelo_con_que_combina];
		radio.disabled = false;
		if (vuelo_con_que_combina == checked_anterior)
			{
			radio.checked = true;
			}
		}
	}


function update_vuelos_disponibles(f, limpiar)
	{
	if (limpiar)
		{
		segmento_que_manda = 0;
		}

	var familia_sel = getRadioValue(f.radio_familia);
	if (familia_sel == null)
		{
		// preseleccion de familia
		for (var i = 0; i < f.radio_familia.length; ++i)
			{
			if (!f.radio_familia[i].disabled)
				{
				f.radio_familia[i].checked = true;
				break;
				}
			}
		familia_sel = getRadioValue(f.radio_familia);
		if (familia_sel == null)
			{
			return;
			}
		}
	var familia_array = familia_sel.split('_');
	var familia_tarifa = familia_array[0];

	// primero todo disabled	
	for (var segmento = 1; segmento <= 2; ++segmento)
		{
		tarifa_segmento[segmento] = 0;
		var radios = get_radio_as_array(f['vuelo_segmento' + segmento]);
		if (radios == null)
			{
			continue;
			}
		for (var i = 1; i <= radios.length; ++i)
			{
			if (familia_sel)
				{
				if (eval('f.tarifa_seg'+segmento+'_vue'+i+'_fam'+familia_tarifa))
					{
					tarifa_segmento_vuelo[segmento][i] = eval('f.tarifa_seg'+segmento+'_vue'+i+'_fam'+familia_tarifa).value;
					}
				else
					{
					tarifa_segmento_vuelo[segmento][vuelo] = 0;
					}
				}
			var tr = $('tr_seg' + segmento + '_vue' + i);
			if (tr) tr.style.backgroundColor = "#eeeeee";
			// comentar si no vamos a despintar vuelos seleccionables
			setea_color_disabled(f, segmento, i); //////////////////////////////7
			radios[i - 1].disabled = true;
			if (limpiar)
				{
				radios[i - 1].checked = false;
				}
			else if (radios[i - 1].checked)
				{
				actualiza_tarifa(f, segmento, i);
				}
			}
		}
	
	if (segmento_vacio == 1)
		{
		return;
		}
	for (var segmento = 1; segmento <= 2; ++segmento)
		{
		var radios = get_radio_as_array(f['vuelo_segmento' + segmento]);
		for (var vuelo = 0; vuelo < vuelos_clase[segmento][familia_sel].length; ++vuelo)
			{
			var tr = document.getElementById('tr_seg'+segmento+'_vue'+vuelos_clase[segmento][familia_sel][vuelo]);
			if (tr) tr.style.backgroundColor = "#ffffff";
			// comentar si no vamos a despintar vuelos seleccionables
			document.getElementById('td_color_seg' + segmento + '_vue' + vuelos_clase[segmento][familia_sel][vuelo]).style.borderLeft = '10px solid #ffffff'; ///////////////////////////////
			if (radios[vuelo_radio[segmento][vuelos_clase[segmento][familia_sel][vuelo]]])
				{
				radios[vuelo_radio[segmento][vuelos_clase[segmento][familia_sel][vuelo]]].disabled = false;
				}
			}
		}
	
	var titulo = '';
	var nombre_familia = $('nombre_familia' + familia_tarifa).value;
	var precio_menor_familia = $('precio_menor_familia' + familia_sel).value;
	if (familia_array.length == 1)
		{
		// precio no menor
		titulo = '{_PASO2_UPSELL_DYN_TITLE_1_JS} ' + nombre_familia + ' {_PASO2_UPSELL_DYN_TITLE_2_JS} <span class="style1">{_POR} {SIMBOLO} ' + precio_menor_familia + '</span>';
		}
	else
		{
		// precio menor
		titulo = '{_PASO2_UPSELL_DYN_TITLE_1_JS} ' + nombre_familia + ' {_PASO2_UPSELL_DYN_TITLE_2_JS} <span class="style1">' + precio_menor_familia + '</span>';
		}
	new Effect.Fade('titulo_seleccion', {duration:.3});
	window.setTimeout('document.getElementById(\'titulo_seleccion\').innerHTML=\''+titulo+'\';new Effect.Appear(\'titulo_seleccion\', {duration:.5});',270);
	
	calcula_tarifa ()
	}

function actualiza_tarifa (f, segmento, vuelo)
	{
	tarifa_segmento[segmento] = parseFloat(tarifa_segmento_vuelo [segmento][vuelo]);
	calcula_tarifa ()
	}

function calcula_tarifa ()
	{
	tarifa = 0;
	for (var i = 1; i < tarifa_segmento.length; i++)
		{
		if (parseFloat(tarifa_segmento[i]) != 0)
			{
			tarifa = tarifa + parseFloat(tarifa_segmento[i]);
			}
		else
			{
			tarifa = 0;
			break;
			}
		}
	if (tarifa != 0)
		{
		$('sumatarifas').innerHTML = '{SIMBOLO} ' + currency_format(Math.round(tarifa), '{ID_MONEDA}');
		$('tarifa_paso2').value = tarifa;
		}
	else
		{
		$('sumatarifas').innerHTML = '';
		}
	}

function set_clases(f)
	{
	var familia_sel = getRadioValue(f.radio_familia);
	if (familia_sel == null)
		{
		return "{_PASO2_FLEX_ERROR_TIPO_TARIFA_NO_SELECCIONADO_JS}\n";
		}
	var familia = familia_sel.split('_');
	familia = familia[0];
	
	for (i = 1; i <= {NUM_SEGMENTOS}+0; ++i)
		{
		var vuelo = getRadioValue(f['vuelo_segmento' + i]);
		if (vuelo != null)
			{
			var clase_segmento = $('clase_segmento' + i);
			var clase = f['clase_seg' + i + '_vue' + vuelo + '_fam' + familia];
			clase_segmento.value = clase.value;
			}
		}
	return '';
	}

var cache_regulaciones = new Array();
function get_regulaciones(src)
	{
	document.body.style.cursor = 'wait';
	new Effect.Appear('indicator');
	if (cache_regulaciones[src])
		{
		$('layer_regulaciones_content').innerHTML = cache_regulaciones[src];
		show_regulaciones();
		return;
		}
	else
		{
		new Ajax.Updater('layer_regulaciones_content', src, {method:'get', onSuccess: function(){show_regulaciones(src)}});
		}
	}

var regulaciones_on = false;
function show_regulaciones(src)
	{
	//$('layer_regulaciones_content').innerHTML = $('contenido');
	new Effect.Fade('indicator');
	new Effect.SlideDown('layer_regulaciones');
	document.body.style.cursor = 'default';
	window.setTimeout('$(\'close_layer_regulaciones\').focus()', 1200);
	if (src)
		{
		cache_regulaciones[src] = $('layer_regulaciones_content').innerHTML;
		}
	regulaciones_on = true;
	}

function check_and_submit(f)
	{
	if (segmento_vacio == 1)
		{
		return;
		}
	if (buttonDisabled(0))
		{
		return false;
		}
	var elem, i, errores;
	errores = set_clases(f);
	for (i = 1; i <= {NUM_SEGMENTOS} +0; i++)
		{
		elem = eval("f.elements['vuelo_segmento" + i + "']");
		if (elem && getRadioValue(elem) == null)
			{
			errores += '{_ERROR_SEGMENTO_SIN_VUELO_SELECCIONADO_JS} ' + i + "\n";
			}
		}

	var checkeo_horario = check_horarios(f);

	if (errores.length < 1 && !checkeo_horario)
		{
		errores += '{_ERROR_SEGMENTO_NO_TIME_TO_CONNECT_JS}\n';
		}
	if (errores.length > 0)
		{
		alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
		reenableButton(0);
		return false;
		}
	f.action='paso3.cgi';
	f.submit();
	}
{HORARIOS_JS}
</script>
<style type="text/css">
<!--
.style1 {color: #E21F26}
#following_tooltip {
	position:absolute; overflow:hidden; visibility: hidden;
	z-index:999;
	color: #FFFFFF;
	vertical-align: middle;
	text-align: center;
	border-style: ridge;
	border-width: thin;
	border-color:#999999;
	padding: 1px 3px;  
}

#layer_tarifa {
	float:right;
	text-align:right;
}

#layer_regulaciones {
	width:748px;
	position:absolute;
	background-color:#ffffff;
	z-index:100;
	padding: 0px 0px 30px 0px;
}

#layer_regulaciones .table {
	margin: 0px 0px 6px 0px;
	padding: 0px;
}

#layer_regulaciones div {
	padding: 0px;
	margin: 0px;
}

#indicator {
	float: right;
	margin-top: -15px;
	margin-right: 5px;
}
-->
</style>
<form action='#' method='POST' name='paso2'>
	<input type='hidden' name='session_id' value='{SESSION_ID}'>
	<input type='hidden' name='tipo_paso2' value='{TIPO_PASO2}'>
	<input type='hidden' name='rand_check' value='{RAND_CHECK}'>
	<input type='hidden' name='currency_cotizacion' value='{ID_MONEDA}'>
	<table cellspacing="0" cellpadding="0" width="100%">
		<col width="50%" />
		<col width="5%" />
		<col width="45%" />
		<tr>
			<td> {SELECCION} </td>
			<td></td>
			<td><p class="nota"> <strong>{_LABEL_NOTA}</strong> <br />
					{_PASO2_FLEX_NOTA} <br />
					{TXT_NOTA} </p></td>
		</tr>
	</table>
	<h4><div>{_PASO2_UPSELL_TITULO_SELECCIONA_PRECIO}</div> <img src="/images/html/indicator.gif" name="indicator" width="16" height="16" border="0" id="indicator" style="display:none;" alt="Loading..."/></h4>
	<div style="display:none;" id="layer_regulaciones"><div id="layer_regulaciones_content"></div><div style="float:right" class="style1">&times;&nbsp;<a href="#" onClick="if (regulaciones_on) { new Effect.SlideUp('layer_regulaciones'); regulaciones_on = false; } return false;" id="close_layer_regulaciones" onblur="if (regulaciones_on) { new Effect.SlideUp('layer_regulaciones'); regulaciones_on = false; }">{_LABEL_CERRAR}</a></div></div>
	<table class=table cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<!--<th style="width: 10px; padding: 0px 0px 0px 0px"></th>-->
			<th> {_LABEL_FAMILIA}</th>
			<th>{_LABEL_DESCRIPCION}</th>
			<th>{_LABEL_PRECIO_MENOR}</th>
			<th>{_LABEL_TODOS_LOS_PRECIOS}</th>
		</tr>
		{*FAMILIAS}
		<tr>
			<td style="background-color: {FF_BG_COLOR}; color: {FF_FG_COLOR}; font-weight: bold;">{FARE_FAMILY}
				<input name="nombre_familia{FF_CODE}" type="hidden" id="nombre_familia{FF_CODE}" value="{FARE_FAMILY}" /></td>
			<td>{FARE_DESCRIPCION}</td>
			<td style="border-left: 10px solid {FF_BG_COLOR}" id="color_familia{FF_CODE}"><input name="radio_familia" type="radio" value="{FF_CODE}" id="radio_familia" onclick="new Effect.Highlight('color_familia{FF_CODE}'); update_vuelos_disponibles(this.form, true)" {DISABLED_ALL}/>
				{SIMBOLO}{PRECIO_MENOR}
				<input name="precio_menor_familia{FF_CODE}" type="hidden" id="precio_menor_familia{FF_CODE}" value="{PRECIO_MENOR}" /></td>
			<td style="border-left: 10px groove {FF_BG_COLOR}" id="color_familia{FF_CODE}_all"><input name="radio_familia" type="radio" value="{FF_CODE}_all" id="radio_familia" onclick="new Effect.Highlight('color_familia{FF_CODE}_all'); update_vuelos_disponibles(this.form, true)" {DISABLED}/>
				<span id="precio_menor_otros_vuelos{FF_CODE}_all" ></span>
				<input name="precio_menor_familia{FF_CODE}_all" type="hidden" id="precio_menor_familia{FF_CODE}_all" value="" /></td>
		</tr>
		<tr style="height:1px;" class="par">
			<td style="padding: 0px 0px 0px 0px; background-color: {FF_BG_COLOR};"></td>
			<td colspan="3" style="padding: 0px 0px 0px 0px"></td>
		</tr>
		{/FAMILIAS}
	</table>
	<p>&nbsp;</p>
	<h4>
		<div id="titulo_seleccion" style="float:left">{_PASO2_UPSELL_TITULO_SELECCIONA_VUELOS}</div>&nbsp;
	</h4>
	<table class=table cellpadding="0" cellspacing="2" width="100%">
		<tr> {*SEGMENTO}
			<script type="text/javascript">
tarifa_segmento[{ID_SEGMENTO}] = 0;
tarifa_segmento_vuelo[{ID_SEGMENTO}] = new Array();
vuelo_radio[{ID_SEGMENTO}] = new Array();
</script>
			<td class="sub-titulo" valign="top" style="width:50%; vertical-align:top; padding: 0px 0px 0px 0px;"><span style="padding:5px;"><strong>{FROM_CITY} - {TO_CITY}</strong> {*FLECHA_AYER}<a href='paso2.cgi?{PARAMETROS_PASO2_AYER}' class="sinlinea"><img src='/images/espanol/botones/bullet_ant.gif' alt='{_LABEL_DIA_ANTERIOR}' width="7" height="8" border='0'></a>&nbsp;{/FLECHA_AYER} {FECHA_VUELO}{*FLECHA_MANANA}&nbsp;<a href='paso2.cgi?{PARAMETROS_PASO2_MANANA}' class="sinlinea"><img src='/images/espanol/botones/bullet_sgte.gif' alt='{_LABEL_DIA_SIGUIENTE}' width="7" height="8" border='0'></a>{/FLECHA_MANANA}
			</span>
				<table class=table cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<!--<th style="width: 10px; padding: 0px 0px 0px 0px"></th>-->
						<th>&nbsp;</th>
						<th>{_LABEL_VUELO}</th>
						<th>{_LABEL_SALIDA}</th>
						<th>{_LABEL_LLEGADA}</th>
						<th>{_LABEL_DURACION}</th>
					</tr>
					{*VUELOS}
					<script type="text/javascript">
					tarifa_segmento_vuelo[{ID_SEGMENTO}][{ID_VUELO}] = 0;
					vuelo_radio[{ID_SEGMENTO}][{ID_VUELO}] = {ID_RADIO_BUTTON};
					</script>
					<tr id="tr_seg{ID_SEGMENTO}_vue{ID_VUELO}" onmouseover="activa_tip('{ID_SEGMENTO}', '{ID_VUELO}')" onmouseout="desactiva_tip()">
						<td id="td_color_seg{ID_SEGMENTO}_vue{ID_VUELO}"><input type='radio' name='vuelo_segmento{ID_SEGMENTO}' value='{ID_VUELO}' id='vuelo_segmento{ID_SEGMENTO}' onClick="new Effect.Highlight('tr_seg{ID_SEGMENTO}_vue{ID_VUELO}'); actualiza_tarifa(this.form, '{ID_SEGMENTO}', '{ID_VUELO}'); update_combinaciones(this.form, '{ID_SEGMENTO}')" {CHECKED} {DISABLED} />
							<input type='hidden' name='color_seg{ID_SEGMENTO}_vue{ID_VUELO}'  id='color_seg{ID_SEGMENTO}_vue{ID_VUELO}' value=''>
							<input type='hidden' name='familia_seg{ID_SEGMENTO}_vue{ID_VUELO}'  id='familia_seg{ID_SEGMENTO}_vue{ID_VUELO}' value='{FAMILIA_TIP}'>
							<input type='hidden' name='HORARIO_SEG{ID_SEGMENTO}_VUE{ID_RADIO_BUTTON}' value='{HORARIO_SECS_SALIDA}|{HORARIO_SECS_LLEGADA}'>
							{*CLASES_FAMILIAS}
							<input type='hidden' name='clase_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{FAMILIA}' value='{CLASE}'>
							<input type='hidden' name='tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{FAMILIA}' value='{VALOR_TARIFA}' id='tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{FAMILIA}'>
							{/CLASES_FAMILIAS} </td>
						<td><strong>{AIRLINE_CODE} {NUMERO_VUELO}<sup>{OPERADO_POR_INDEX}</sup></strong><br />
							{ESCALAS} {*MATERIAL_DE_VUELO}<img src='/images/html/avion1.gif' alt='{_LABEL_AVION}' width="12" height="12" border='0'> {AVION}{/MATERIAL_DE_VUELO}{*INFO_TRANSBORDO} <br/>
							{_LABEL_CONEXION_EN} {CITY_CODE}<br/>
							<strong>{AIRLINE_CODE} {NUMERO_VUELO}<sup>{OPERADO_POR_INDEX}</sup></strong><br/>
							{ESCALAS} {*MATERIAL_DE_VUELO}<img src='/images/html/avion1.gif' alt='{_LABEL_AVION}' width="12" height="12" border='0'> {AVION}{/MATERIAL_DE_VUELO}{/INFO_TRANSBORDO}</td>
						<td>{HORA_SALIDA}</td>
						<td>{HORA_LLEGADA}</td>
						<td>{DURACION}&nbsp;hrs.</td>
					</tr>
					<tr style="height:1px;" class="par">
						<td colspan="5" style="padding: 0px 0px 0px 0px"></td>
					</tr>
					{/VUELOS}
			</table></td>
			<input type='hidden' name='clase_segmento{ID_SEGMENTO}' value='' id='clase_segmento{ID_SEGMENTO}' />
			{/SEGMENTO} </tr>
	</table>
	{*OPERADO_POR_INFO} <br />
	({INDEX}) {_LABEL_OPERADO_POR} {AIRLINE}
	{/OPERADO_POR_INFO}
	</p>
<div id="layer_tarifa">
<table cellpadding = "0px" cellspacing="0px" class="table">
<tr style="font-size: 15px">
<td class=par>
<b>{_LABEL_TARIFA} * : &nbsp;</b>
</td>
<td id="sumatarifas" class=par style="font-weight: bold">
</td>
</tr>
<tr style="font-size: 12px">
<td class="par" colspan=2>{_VALORES_EN} {MONEDA}
</td>
</tr>
</table>
</div>
	<table cellspacing="0" cellpadding="0" id=barra-continuar>
		<tr>
			<td class=first> {_PASO2_PASO_SIGUIENTE} </td>
			<td class=last>&nbsp;&nbsp; </td>
			<td><input type='button' class=boton-destacado id='submitButton' value='{_LABEL_CONTINUAR}' name="submitButton"
				onclick="check_and_submit(this.form)" />
				<input type="hidden" name="tarifa_paso2" id="tarifa_paso2" value="" />
				<input type="hidden" name="moneda_paso2" id="moneda_paso2" value="{ID_MONEDA}" />
			</td>
		</tr>
	</table>
</form>
<p>
<script type='text/javascript'>
hide_layer('espera');

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

// To allow temporary deactivation of buttons
if (document.paso2.submitButton)
	{
	disabledButton[0] = new Array(1);
	disabledButton[0][0] = document.paso2.submitButton;
	}

advierte_errores_validacion_posteriores(document.paso2);
prepara_labels(document.paso2);
update_vuelos_disponibles(document.paso2, false);
document.onLoad = calcula_tarifa();
</script>
