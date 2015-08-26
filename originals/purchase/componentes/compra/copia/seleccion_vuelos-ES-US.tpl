<script type="text/javascript">
jQuery.noConflict();
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
	font-size: 0.9em;
	text-decoration: none;
	color: #fff;
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


<div id="following_tooltip" style="visibility: hidden;">
</div>

<div id="ttip_flight_info" style="display: none;">
	<div class="top"></div>
	<div class="middle" id="div_flight_info">
		
	</div>
	<div class="bottom"></div>
</div>

<script type="text/javascript">

var colores_ff = Array();
var tarifa = 0;
var tarifa_pagada = '{TARIFA_PAGADA}';
var multa = '{MULTA}';
var tarifa_segmento = new Array();
var segmentos_vuelos = new Array();
var familia = new Hash();
var radio_selected = new Array();
var combina_con = new Array();
var segmento_restringido = 0;

function get_selected_id_from_radio(f, name)
	{
	var radioObj = f[name];
	if(!radioObj)
		{
		return;
		}
	var radioLength = radioObj.length;
	if(radioLength == undefined)
		{
		if(radioObj.checked)
			{
			radioObj.click();
			return;
			}
		else
			{
			return;
			}
		}
	for(var i = 0; i < radioLength; i++)
		{
		if(radioObj[i].checked)
			{
			radioObj[i].click();
			return;
			}
		}
	return;
	}

function limpiar_combinaciones ()
	{
	var precio_final={PRECIO_FINAL};
	total_q = 0;
	
	familia.each(function(pair)
		{
		if (typeof(pair.value) == "function")
			{
			return;
			}

		var family = pair.key;
		for (var i=1; i < segmentos_vuelos.length; i++)
			{
			for (var j = 1; j < segmentos_vuelos[i].length; j++)
				{
				if (!$('tdfamilia' + family + '[' + i + '][' + j + ']'))
					{	
				continue;
					}
					
				if ($('tdfamilia' + family + '[' + i + '][' + j + ']').ffColor)
					{
					$('tdfamilia' + family + '[' + i + '][' + j + ']').style.backgroundColor = $('tdfamilia' + family + '[' + i + '][' + j + ']').ffColor;
					$('tdfamilia' + family + '[' + i + '][' + j + ']').style.color = $('tdfamilia' + family + '[' + i + '][' + j + ']').fgColor;
					}

				var radio = $('radiofamilia' + family + '[' + i + '][' + j + ']');
				if (radio)
					{
					if (radio.checked)
						{
						tarifa_segmento[i] = $('valor_tarifa_seg' + i + '_vue' + j + '_fam' + family).value;
						
						if (precio_final)
							{
							var taxes_tarifa_segmento = $('taxes_tarifa_seg' + i + '_vue' + j + '_fam' + family).value;
							
							if(i == 1)	
								{
								impuestos_ida = eval(taxes_tarifa_segmento);								
								}
							else
								{
								impuestos_vuelta = eval(taxes_tarifa_segmento);								
								}
							}
							if ($('q_tarifa_seg' + i + '_vue' + j + '_fam' + family).value) 
								{
								total_q += parseFloat($('q_tarifa_seg' + i + '_vue' + j + '_fam' + family).value);
								}
						}
					}
				}
			}
		})
	}

function restringe_vuelos(f, segmento, vuelo, clase, id_familia, moneda, valor_tarifa)
	{
	var kms_disponibles = '{MAX_KMS}';
	var segmento_opuesto = (segmento == 1 ? 2 : 1);
	var colordisabled = document.getElementById('disabledcolor').style.backgroundColor;
	var restringido = 0;
	var opuesto_seleccionado = 0;
	if (document.getElementById('tdfamilia' + id_familia + '[' + segmento + '][' + vuelo + ']').style.backgroundColor == colordisabled)
		{
		restringido = 1;
		}
	for (i = 1; i < segmentos_vuelos[segmento_opuesto].length; i++)
		{
		if (document.getElementById('tdfamilia' + id_familia + '[' + segmento_opuesto + '][' + i + ']').style.backgroundColor != colordisabled)
			{
			break;
			}
		}
	if (i == segmentos_vuelos[segmento_opuesto].length)
		{
		restringido = 1;
		}
	
	
	if ((segmento_restringido != segmento) || restringido == 1)
		{
		limpiar_combinaciones();	
		var max_tarifa_opuesto = 0;
		
		for (i = 1; i < segmentos_vuelos[segmento_opuesto].length; i++)
			{
			var obj = $('valor_tarifa_seg' + segmento_opuesto + '_vue' + i + '_fam' + id_familia);
			
			if (!obj)
				{
				continue;
				}
			var tarifa = obj.value;	
			segmento_restringido = segmento_opuesto;
			if ((kms_disponibles - valor_tarifa) < tarifa)
				{
				// Respaldo colores
				$('tdfamilia' + id_familia + '[' + segmento_opuesto + '][' + i + ']').ffColor = $('tdfamilia' + id_familia + '[' + segmento_opuesto + '][' + i + ']').style.backgroundColor;
				$('tdfamilia' + id_familia + '[' + segmento_opuesto + '][' + i + ']').fgColor = $('tdfamilia' + id_familia + '[' + segmento_opuesto + '][' + i + ']').style.color;
				
				// Aplico color desactivado
				$('tdfamilia' + id_familia + '[' + segmento_opuesto + '][' + i + ']').style.backgroundColor = colordisabled;
				$('tdfamilia' + id_familia + '[' + segmento_opuesto + '][' + i + ']').style.color = '#AAAAAA';

				if ($('radiofamilia' + id_familia + '[' + segmento_opuesto + '][' + i + ']'))
					{
					if ($('radiofamilia' + id_familia + '[' + segmento_opuesto + '][' + i + ']').checked == true)
						{
						$('radiofamilia' + id_familia + '[' + segmento_opuesto + '][' + i + ']').checked = false;
						f.elements['vuelo_segmento' + segmento_opuesto].value = '';
						f.elements['clase_segmento' + segmento_opuesto].value = '';
						tarifa_segmento[segmento_opuesto] = '';
						}
					}
				
				}
			}
		}
	}

function set_vuelo_y_clase (f, segmento, vuelo, clase, id_familia, moneda, valor_tarifa, farebasis, nombre, impuestos)
	{
	var precio_final={PRECIO_FINAL};
	var colordisabled = document.getElementById('disabledcolor').style.backgroundColor;
	var limpia = 1;
	
		
	if (document.getElementById('tdfamilia' + id_familia + '[' + segmento + '][' + vuelo + ']').style.backgroundColor == colordisabled)
		{
		if (!confirm ("{_MSG_CONFIRM_CAMBIO_FAMILIA_PASO2_JS}"))
			{
			if (radio_selected[segmento])
				{
				radio_selected[segmento].checked = true;
				}
			else
				{
				document.getElementById('radiofamilia' + id_familia + '[' + segmento + '][' + vuelo + ']').checked = false;
				}
			return 0;
			}
		}

	radio_selected[segmento] = document.getElementById('radiofamilia' + id_familia + '[' + segmento + '][' + vuelo + ']');
	if (radio_selected[segmento] &&
		!radio_selected[segmento].checked)
		{
		radio_selected[segmento].checked = true;
		}
	if ('{FLAVOUR}' == 'cambio_fecha_cplp_variable')
		{
		restringe_vuelos(f, segmento, vuelo, clase, id_familia, moneda, valor_tarifa);
		limpia = 0;
		}
	
	if (limpia == 1)
		{
		limpiar_combinaciones();
		}
	
	familia.each(function(pair)
		{
		if (typeof(pair.value) == "function") 
			{
			return;
			}
			
		var family = pair.key;
		for (var i=1; i < segmentos_vuelos.length; i++)
			{
			for (var j = 1; j < segmentos_vuelos[i].length; j++)
				{
				var f1;
				var f2;
				if (segmento == 1)
					{
					f1 = id_familia;
					f2 = family;
					}
				else if (segmento == 2)
					{
					f2 = id_familia;
					f1 = family;
					}
				if (!combina_con[f1][f2])
					{
					if (!$('tdfamilia' + family + '[' + i + '][' + j + ']'))
						{	
						continue;
						}
					
					// Respaldo colores
					$('tdfamilia' + family + '[' + i + '][' + j + ']').ffColor = $('tdfamilia' + family + '[' + i + '][' + j + ']').style.backgroundColor;
					$('tdfamilia' + family + '[' + i + '][' + j + ']').fgColor = $('tdfamilia' + family + '[' + i + '][' + j + ']').style.color;
					
					// Aplico color desactivado
					$('tdfamilia' + family + '[' + i + '][' + j + ']').style.backgroundColor = colordisabled;
					$('tdfamilia' + family + '[' + i + '][' + j + ']').style.color = '#AAAAAA';

					if ($('radiofamilia' + family + '[' + i + '][' + j + ']'))
						{
						if ($('radiofamilia' + family + '[' + i + '][' + j + ']').checked == true)
							{
							$('radiofamilia' + family + '[' + i + '][' + j + ']').checked = false;
							f.elements['vuelo_segmento' + i].value = '';
							f.elements['clase_segmento' + i].value = '';
							tarifa_segmento[i] = '';
							}
						}
					}
				}
			}
		});

	$("clase_segmento" + segmento).value = clase;
	$("vuelo_segmento" + segmento).value = vuelo;
	
	$("familia_segmento" + segmento).value = id_familia;
	$("currency_segmento" + segmento).value = moneda;
	$("monto_segmento" + segmento).value = valor_tarifa;

	if(nombre == "vueloida")
		{
		$("farebasis_segmento_ida").value = farebasis;
		impuestos_ida = impuestos;
		$("precio_final_paso2_ida").value = currency_round_fare(valor_tarifa, '{ID_MONEDA}');
		}
	else
		{
		$("farebasis_segmento_vuelta").value = farebasis;
		impuestos_vuelta = impuestos;	
		$("precio_final_paso2_vuelta").value = currency_round_fare(valor_tarifa,'{ID_MONEDA}');
		}
	tarifa_segmento[segmento] = valor_tarifa;
	calcula_tarifa();
	}

function calcula_tarifa ()
	{
	var precio_final={PRECIO_FINAL};
	if (!$('sumatarifas'))
		{
		return;
		}
	
	var tarifa = 0;
	var precio_total;
	var impuestos = 0;
	
	for (var i = 1; i < tarifa_segmento.length; i++)
		{
		if (tarifa_segmento[i] != '')
			{
			tarifa = tarifa + parseFloat(tarifa_segmento[i]);
			}
		else
			{
			tarifa = '';
			break;
			}
		}

	if ($('sumatarifas_real'))
		{
		if (multa)
			{
			$('sumatarifas_real').value = tarifa + parseFloat(multa);
			}
		else
			{
			$('sumatarifas_real').value = tarifa;
			}
			
		//alert ("Suma tarifas real: " + $('sumatarifas_real').value);
		}

	if (tarifa != '' || (typeof(tarifa) == 'number' && tarifa == 0))
		{
		if ('{FLAVOUR}' == 'cplp_variable' || '{FLAVOUR}' == 'cambio_fecha_cplp_variable')
			{
			$('sumatarifas').innerHTML = currency_format(tarifa, 'CLP') + '{SIGNO_MONEDA}';
			}
		else if (precio_final == 1)
			{
			//aqui calcular los impuestos para mostrar luego el total
			precio_total = parseFloat(currency_round_fare(tarifa, '{ID_MONEDA}'));
			var total_impuestos = get_total_impuestos(precio_total);
			var precio_final = precio_total + total_impuestos;	
		
			$('precio_final_paso2').value = precio_total;
			precio_total =currency_format(precio_total, '{ID_MONEDA}');
			
			$('tarifa_sin_impuesto').innerHTML = '{SIGNO_MONEDA}' + precio_total;
			
			$('taxes_final_paso2').value = total_impuestos;
			total_impuestos = currency_format(total_impuestos, '{ID_MONEDA}');
			$('total_impuestos').innerHTML = '{SIGNO_MONEDA}' + total_impuestos;
	
				
			precio_final = currency_format(precio_final, '{ID_MONEDA}');
		
			$('sumatarifas').innerHTML = '{SIGNO_MONEDA}' + precio_final;

			if (eval($('q_desplegado_paso2'))) {
	       		$('q_desplegado_paso2').value = total_q;
			}

			}
		else
			{
			precio_total = currency_format(Math.round(tarifa), '{ID_MONEDA}');
			$('precio_final_paso2').value = Math.round(tarifa);
		     	
			$('sumatarifas').innerHTML = '{SIGNO_MONEDA}' + precio_total;
			}
	
		}
	else
		{
		$('sumatarifas').innerHTML = '';
		}
	}
	
function get_total_impuestos(tarifa)
	{
	var monto_total_impuestos = 0;
	var monto_total_porcentajes = 0;
	var doble_impuesto = 0;
	var tarifa_ida = $("precio_final_paso2_ida").value;
	var tarifa_vuelta = $("precio_final_paso2_vuelta").value;
	var d;
	var impuestos_cobrados_ida = new Hash({});
	var impuestos_cobrados_vuelta = new Hash({});
	
	if(impuestos_ida && typeof(impuestos_ida) != "number")	
		{
		for (var i = 0;i<impuestos_ida.length;i++)
			{
			var h = impuestos_ida[i];
			h.each(function(p) {
				d = p.value;
				if (d['monto'] > 0)
					{
					monto_total_impuestos += d['monto'];
					}
				else if (d['porcentaje'] > 0)
					{
					if (!impuesto_aplicado(p.key, impuestos_cobrados_ida))
						{
						if (d['aplicacion'] == 'FARE')
							{
							monto_parcial_porcentajes = tarifa_ida * d['porcentaje']/100;
							monto_total_porcentajes += parseFloat(currency_round_tax(monto_parcial_porcentajes, '{ID_MONEDA}', p.key));
							}
						else
							{
							monto_total_porcentajes += calcula_monto_especial(p.key, d['porcentaje'], d['aplicacion'], tarifa_ida, impuestos_ida);
							}
						impuestos_cobrados_ida[p.key] = '1';
						}
					}
				});
			}
		}

	if (impuestos_vuelta && typeof(impuestos_vuelta) != "number")
		{
		for (var i = 0;i<impuestos_vuelta.length;i++)
			{
			var h = impuestos_vuelta[i];
			h.each(function(p) {
				d = p.value;
				if (d['monto'] > 0)
					{
					monto_total_impuestos += d['monto'];
					}
				else if (d['porcentaje'] > 0)
					{
					if (!impuesto_aplicado(p.key, impuestos_cobrados_vuelta))
						{
						if (d['aplicacion'] == 'FARE')
							{
							monto_parcial_porcentajes = tarifa_vuelta * d['porcentaje']/100;
							monto_total_porcentajes += parseFloat(currency_round_tax(monto_parcial_porcentajes, '{ID_MONEDA}', p.key));
							}
						else
							{
							monto_total_porcentajes += calcula_monto_especial(p.key, d['porcentaje'], d['aplicacion'], tarifa_vuelta, impuestos_ida);
							}
						impuestos_cobrados_vuelta[p.key] = '1';
						}
					}
				});
			}
		}
	
	return (monto_total_impuestos + monto_total_porcentajes);
	} 

function impuesto_aplicado (tax, impuestos_cobrados)
	{
	var cobrado = 0;
	impuestos_cobrados.each(function(p){
		if (p.key == tax)
			{
			cobrado = 1;
			}
		});
	return cobrado;
	}

function calcula_monto_especial(tax, porcentaje, aplica_sobre, tarifa, impuestos_ref)
	{
	var tax_code;
	var detalle;
	var fare = 'FARE';

	var match_fare = fare.match(aplica_sobre);
	var match_code;

	var result = 0;

	if (match_fare != null)
		{
		result += currency_round_tax(tarifa * porcentaje/100, '{ID_MONEDA}', tax_code);
		}

	for (var i=0;i<impuestos_ref.length;i++)
		{
		impuestos = impuestos_ref[i];
		impuestos.each(function(p){
			tax_code = p.key;
			detalle = p.value;
			match_code = tax_code.match(aplica_sobre);
			if (tax != tax_code && match_code != null)
				{
				if (detalle['monto'] > 0)
					{
					result += parseFloat(currency_round_tax(detalle['monto'] * porcentaje/100, '{ID_MONEDA}', tax_code));
					}
				else if (detalle['porcentaje'] > 0)
					{
					var temp_result = tarifa * detalle['porcentaje']/100;
					temp_result = currency_round_tax(temp_result, '{ID_MONEDA}', tax_code);
					result += temp_result * porcentaje/100;
					}
				}
			});
		}

	return result
	}

var cache_regulaciones = new Array();
function get_regulaciones(src, seg)
	{
	document.body.style.cursor = 'wait';
	new Effect.Appear('indicator' + seg);
	if (cache_regulaciones[src])
		{
		$('layer_regulaciones_content' + seg).innerHTML = cache_regulaciones[src];
		show_regulaciones('', seg);
		return;
		}
	else
		{
		new Ajax.Updater('layer_regulaciones_content' + seg, src, {method:'get', onSuccess: function(){show_regulaciones(src, seg)}});
		}
	}

var regulaciones_on = new Array('false', 'false', 'false');
function show_regulaciones(src, seg)
	{
	//$('layer_regulaciones_content').innerHTML = $('contenido');
	new Effect.Fade('indicator' + seg);
	new Effect.SlideDown('layer_regulaciones' + seg);
	document.body.style.cursor = 'default';
	window.setTimeout('$(\'close_layer_regulaciones' + seg + '\').focus()', 1200);
	if (src)
		{
		cache_regulaciones[src] = $('layer_regulaciones_content' + seg).innerHTML;
		}
	regulaciones_on[seg] = true;
	}

function show_comparativa_familias(tipo_ruta, diccionario)
	{
	if ($('comparativa_familias') && typeof(Dynamic_Components) != 'undefined')
		{
		$('comparativa_familias').style.display = 'block';

		var offset_y = (document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop) + 10;
		$('comparativa_familias').style.top = offset_y + 'px';

		if (!window.comparativa_familias_loading)
			{
			window.comparativa_familias_loading = $('comparativa_familias_content').innerHTML;
			}

		if (!window.comparativa_familias_loaded)
			{
			$('comparativa_familias_content').innerHTML = window.comparativa_familias_loading;

			window.comparativa_familias_loaded = 1;
			Dynamic_Components.refresh_component(
				'comparativa_familias_content',
				'102',
				"tipo_ruta='" + tipo_ruta + "',diccionario='" + diccionario + "'",
				null,
				function ()
					{
					window.comparativa_familias_loaded = 0;
					}
				);
			}
		}
	}
function hide_comparativa_familias()
	{
	if ($('comparativa_familias'))
		{
		$('comparativa_familias').style.display = 'none';
		}
	}

function show_popup(id)
	{
	if ($('popup'+id) && typeof(Dynamic_Components) != 'undefined')
		{
		$('popup'+id).style.display = 'block';

		var offset_y = (document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop) + 10;
		$('popup'+id).style.top = offset_y + 'px';
		}
	}
function hide_popup(id)
	{
	if ($('popup'+id))
		{
		$('popup'+id).style.display = 'none';
		}
	}

function activa_flight_info(operado_por, marketeado_por, id_class)
	{
	if (operado_por == '' || marketeado_por == '')
		{
		return;
		}
	var obj = $(divName);
	obj.innerHTML = document.getElementById("ttip_flight_info").innerHTML;
	document.getElementById("div_flight_info").innerHTML = '{_LABEL_OPERADO_POR_INI} ' + operado_por + ' {_LABEL_OPERADO_POR_FIN} {_PALABRA_Y} {_LABEL_MARKETEADO_POR_INI} ' + marketeado_por + ' {_LABEL_MARKETEADO_POR_FIN}';
	obj.className = id_class;
	document.onmousemove = follow;
	}
function desactiva_flight_info()
	{
	var obj = $(divName);
	obj.style.visibility = 'hidden';
	document.onmousemove = '';
	}


// Preload del fondo del ttip para Click
var img_top = new Image();
var img_mid = new Image();
var img_bot = new Image();

var version = parseFloat(navigator.appVersion.split('MSIE')[1]);
if ((version >=5.5) && (version < 7))
	{
	img_top.src = '/images/compra/top_ck.gif';
	img_mid.src = '/images/compra/bg_ck.gif';
	img_bot.src = '/images/compra/bottom_ck.gif';
	}
else
	{
	img_top.src = '/images/compra/top_ck.png';
	img_mid.src = '/images/compra/bg_ck.png';
	img_bot.src = '/images/compra/bottom_ck.png';
	}
</script>
<style type="text/css">
#contenido-proceso ul {list-style-position: inside; margin: 0 15px; padding: 0;}
#contenido-proceso ul p {display: inline; font-family:Arial;}
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


</style>
<script type="text/javascript">
	javascript:redirect_paso2_manana( '0', '{LINK_PASO2_MANANA_VUELTA}', '', '{INITIAL_RELOAD}', '1');
</script>

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

{*SEGMENTOOW}
<script type="text/javascript">
	tarifa_segmento[{ID_SEGMENTO}] = '';
	segmentos_vuelos[{ID_SEGMENTO}] = new Array();
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



<h4><div>{FROM_CITY} - {TO_CITY}</div> <img src="/images/html/indicator.gif" name="indicator" width="16" height="16" border="0" id="indicator{ID_SEGMENTO}" style="display:none;" alt="Loading..." class="indicator" /></h4>
<div style="display:none;" id="layer_regulaciones{ID_SEGMENTO}" class="layer_regulaciones"><div id="layer_regulaciones_content{ID_SEGMENTO}"></div><div style="float:right" class="style1">&times;&nbsp;<a href="#" onClick="if (regulaciones_on[{ID_SEGMENTO}]) { new Effect.SlideUp('layer_regulaciones{ID_SEGMENTO}'); regulaciones_on[{ID_SEGMENTO}] = false; } return false;" id="close_layer_regulaciones{ID_SEGMENTO}" onblur="if (regulaciones_on[{ID_SEGMENTO}]) { new Effect.SlideUp('layer_regulaciones{ID_SEGMENTO}'); regulaciones_on[{ID_SEGMENTO}] = false; }">{_LABEL_CERRAR}</a></div></div>

<table class="table" cellspacing="0" cellpadding="0" width="100%">
	<!-- La fila con el link a comparcion de tarifas -->
  <tr>
		{*LINK_COMPARATIVA_FAMILIAS}
		<td colspan="{COLSPAN}" style="text-align: right;">
			<a title="{_TITLE_LINK_COMPARACION_TARIFARIA}" href="javascript:show_comparativa_familias('{TIPO_RUTA}', '{DICCIONARIO}');" id="id_link_compra_normal_compara_familias">{_MSG_COMPARAR_TARIFAS}</a>
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
				<br/>
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

		<!-- El tooltip para las familias -->
		<style type="text/css">
			.tooltip_familia_{ID_FAMILIA} {
				position: absolute; 
				width: 164px; 
				margin-top: -10px; 
				margin-left: -160px;
				/*border: solid 1px #cccccc;*/
			}
			.tooltip_familia_{ID_FAMILIA} .top {
				background: url(/images/compra/top_{ID_FAMILIA_LC}.png) center bottom no-repeat;
				width: 164px;
				height: 12px;
			}
			* html .tooltip_familia_{ID_FAMILIA} .top {
				background: url(/images/compra/top_{ID_FAMILIA_LC}.gif) center bottom no-repeat;
			}
			
			.tooltip_familia_{ID_FAMILIA} .middle {
				background: url(/images/compra/bg_{ID_FAMILIA_LC}.png) center repeat-y;
				width: 164px;
			}
			* html .tooltip_familia_{ID_FAMILIA} .middle {
				background: url(/images/compra/bg_{ID_FAMILIA_LC}.gif) center repeat-y;
			}
			
			.tooltip_familia_{ID_FAMILIA} .bottom {
				background: url(/images/compra/bottom_{ID_FAMILIA_LC}.png) center top no-repeat;
				width: 164px;
				height: 16px;
			}
			* html .tooltip_familia_{ID_FAMILIA} .bottom {
				background: url(/images/compra/bottom_{ID_FAMILIA_LC}.gif) center top no-repeat;
			}

			.tooltip_familia_{ID_FAMILIA} ul {
				margin-left: 25px; 
				margin-right: 15px;
				font-size: 1.5em; 
				text-align: left;
				margin-top: 0;
				margin-bottom: 0;
				background-color: #ffffff;
			}
			.tooltip_familia_{ID_FAMILIA} li {
				color: {FF_BG_COLOR};
				padding-bottom: 7px;
			}
			.tooltip_familia_{ID_FAMILIA} p {
				color: black; 
				font-size: 0.6em;
				margin: 0;
			}

		</style>
	{/FAMILIASOW_BASE}

  <!-- La fila con la fecha y el nombre y descripcion de la familia -->
  <tr>
    <td colspan=4>{*FLECHA_AYER}<a href='{LINK_PASO2_AYER}' class="sinlinea"><img src='/images/espanol/botones/bullet_ant.gif' alt='{_LABEL_DIA_ANTERIOR}' width="7" height="8" border='0'></a>&nbsp;{/FLECHA_AYER} {FECHA_VUELO}{*FLECHA_MANANA}&nbsp;<a href='{LINK_PASO2_MANANA}' class="sinlinea"><img src='/images/espanol/botones/bullet_sgte.gif' alt='{_LABEL_DIA_SIGUIENTE}' width="7" height="8" border='0'></a>{/FLECHA_MANANA}</td>
		{*FAMILIASOW}
		<td rowspan="2" style="width: 11%; background-color: {FF_BG_COLOR}; color: {FF_FG_COLOR}; vertical-align: top; text-align: center; padding: 2px 4px; border-left: solid 1px white;" onMouseOver="if (typeof(activa_ttip) != 'undefined') activa_ttip('ttip_familia_{ID_TTIP}', 'tooltip_familia_{ID_FAMILIA}');" onMouseOut="if (typeof(desactiva_ttip) != 'undefined') desactiva_ttip();">
			<div style="font-size: 1.3em; display: block; height: 2.5em; font-weight: bold;">{FARE_FAMILY}</div>
			{FARE_FAMILY_DESC}

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
    <th>{_LABEL_VUELOS}</th>
<!--    <th><a href='{SCRIPT_URL}?session_id={SESSION_ID}&amp;ordenar_vuelos_por=departure_time&amp;just_refresh=1{OWFLEX_ONEWORLD}'>{_LABEL_SALIDA}</a></th>
    <th><a href='{SCRIPT_URL}?session_id={SESSION_ID}&amp;ordenar_vuelos_por=arrival_time&amp;just_refresh=1{OWFLEX_ONEWORLD}'>{_LABEL_LLEGADA}</a></th>
    <th><a href='{SCRIPT_URL}?session_id={SESSION_ID}&amp;ordenar_vuelos_por=leg_duration&amp;just_refresh=1{OWFLEX_ONEWORLD}'>{_LABEL_DURACION}</a></th>-->
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
		<td style="border-top: solid 1px #f0f0f0;">
        	{IMAGEN_CONVENIO}<strong>{AIRLINE_CODE} {NUMERO_VUELO}</strong><sup>{OPERADO_POR_INDEX}</sup><br>
            {*MATERIAL_DE_VUELO}
            	<img src='/images/html/avion1.gif' alt='{_LABEL_AVION}' width="12" height="12" border='0'> {AVION}
            {/MATERIAL_DE_VUELO}<br>
            <span style="color:#666; font-size: 8pt;">{_LABEL_OPERADO_POR} {REAL_OPERADO_POR} {_PALABRA_Y} {_LABEL_MARKETEADO_POR_INI} {REAL_MARKETEADO_POR}</span><br>
            {ESCALAS}<br>
            {*INFO_TRANSBORDO}
                {_LABEL_CONEXION_EN} {CITY_CODE}<br>
                {IMAGEN_CONVENIO}<strong>{AIRLINE_CODE} {NUMERO_VUELO}</strong><sup>{OPERADO_POR_INDEX}</sup><br>
                {*MATERIAL_DE_VUELO}
                    <img src='/images/html/avion1.gif' alt='{_LABEL_AVION}' width="12" height="12" border='0'> {AVION}
                {/MATERIAL_DE_VUELO}<br>
                <span style="color:#666; font-size: 8pt;">{_LABEL_OPERADO_POR} {REAL_OPERADO_POR} {_PALABRA_Y} {_LABEL_MARKETEADO_POR_INI} {REAL_MARKETEADO_POR}</span><br>
                {ESCALAS}
            {/INFO_TRANSBORDO}<br>
            </td>
		<td style="border-top: solid 1px #f0f0f0;">
			<span style="vertical-align:top">{HORA_SALIDA}</span>
			<br/>
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
			<br/>
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
	<td id="tdfamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" style="background-color: {FF_BG_COLOR}; color: {FF_FG_COLOR}; border-top: solid 1px white; border-left: solid 1px white; font-weight: bold; cursor: pointer; text-align: center" onClick="($('radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]')).checked = true;set_vuelo_y_clase($('radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]').form, '{ID_SEGMENTO}', '{ID_VUELO}', '{CLASE}', '{ID_FAMILIA}', '{MONEDA}', '{VALOR_TARIFA}','{FAREBASIS_FULL}','{NAME}', {ARRAY_TAXES}); javascript:redirect_paso2_manana('{RELOAD}', '{LINK_PASO2_MANANA_VUELTA}', 'radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]', '0', '{OVERNIGHT}');" onMouseOver="if (typeof(activa_ttip) != 'undefined') activa_ttip('ttip_{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]', 'tooltip_tarifa');" onMouseOut="if (typeof(desactiva_ttip) != 'undefined') desactiva_ttip();">
		<input type='radio' name='{NAME}' id="radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" value='{VALUE}' {HIDDEN_MOWFLEX} {CHECKED} onClick="set_vuelo_y_clase(this.form, '{ID_SEGMENTO}', '{ID_VUELO}', '{CLASE}', '{ID_FAMILIA}', '{MONEDA}', '{VALOR_TARIFA}', {ARRAY_TAXES});">
		<input type="hidden" id="valor_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{VALOR_TARIFA}" />
		<input type="hidden" id="q_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{Q_AMOUNT}"><br>
		<input type="hidden" id="taxes_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{ARRAY_TAXES}" /><br>
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
	<td id="tdfamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" style="background-color: {FF_BG_COLOR}; color: {FF_FG_COLOR}; border-top: solid 1px white; border-left: solid 1px white; cursor: pointer; text-align: center; font-weight:bold" onClick="($('radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]')).checked = true; set_vuelo_y_clase($('radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]').form, '{ID_SEGMENTO}', '{ID_VUELO}', '{CLASE}', '{ID_FAMILIA}', '{MONEDA}', '{VALOR_TARIFA}','{FAREBASIS_FULL}', '{NAME}', {ARRAY_TAXES}); javascript:redirect_paso2_manana('{RELOAD}', '{LINK_PASO2_MANANA_VUELTA}', 'radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]', '0', '{OVERNIGHT}');">
		<input type='radio' name='{NAME}' id="radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" value='{VALUE}' {HIDDEN_MOWFLEX} {CHECKED} onClick=" set_vuelo_y_clase(this.form, '{ID_SEGMENTO}', '{ID_VUELO}', '{CLASE}', '{ID_FAMILIA}', '{MONEDA}', '{VALOR_TARIFA}','{FAREBASIS_FULL}','{NAME}', {ARRAY_TAXES});">
		<input type="hidden" id="valor_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{VALOR_TARIFA}" />
		<input type="hidden" id="q_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{Q_AMOUNT}"><br>
		<input type="hidden" id="taxes_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{ARRAY_TAXES}" /><br>
		{DESDE} {SIGNO_MONEDA}{TEXT} {TEXT_KM} {SIGNO_MONEDA_KM} {VACANCY_INFO}<br>
		{LINK_VER_CABINA}
	</td>
	{/TARIFASOW}
	{*TARIFASOWDI}
	<td id="tdfamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" style="background-color: {FF_BG_COLOR}; color: {FF_FG_COLOR}; border-top: solid 1px white; border-left: solid 1px white; cursor: pointer; text-align: center; font-weight:bold">
		<input type='radio' name='{NAME}' id="radiofamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" value='{VALUE}' {HIDDEN_MOWFLEX} {CHECKED} disabled>
		<input type="hidden" id="valor_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{VALOR_TARIFA}" /><br>
		<input type="hidden" id="taxes_tarifa_seg{ID_SEGMENTO}_vue{ID_VUELO}_fam{ID_FAMILIA}" value="{ARRAY_TAXES}" /><br>
		{SIGNO_MONEDA}{TEXT}<br>
		{LINK_VER_CABINA}
	</td>
	{/TARIFASOWDI}
	{*TARIFASOWNA}
	<td id="tdfamilia{ID_FAMILIA}[{ID_SEGMENTO}][{ID_VUELO}]" style="background-color: {FF_BG_COLOR}; color: {FF_FG_COLOR}; border-top: solid 1px white; border-left: solid 1px white;">
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
<p>
	<table class="table" cellspacing="0" cellpadding="0" width="100%">
		<tr style="font-size: 11px;"><td>{_FRASE_VUELOS_OPERADOS_LAN}</td><td>{_FRASE_VUELOS_OPERADOS_TAM}</td><td>{_FRASE_VUELOS_OPERADOS_ONEWORLD}</td><td>{_FRASE_VUELOS_OPERADOS_OTRAS}</td></tr>
	</table>
</p>
{/SEGMENTOOW}

{*VACANCY_DISPLAY}
<br>
<a title="{_LABEL_ULTIMOS_CUPOS_1}{_LABEL_ULTIMOS_CUPOS_2}" href="javascript:showLightbox();">{_LABEL_ULTIMOS_CUPOS_1}{VACANCY} {_LABEL_ULTIMOS_CUPOS_2}</a></br>
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
							<br />
							({INDEX}) {_LABEL_OPERADO_POR} {AIRLINE}
{/OPERADO_POR_INFO}</p>
<div style="text-align: left; float: left">
<table cellpadding = "0px" cellspacing="0px" class="table">
<tr>
<td>
<p>{FLEX_NOTA}</p>
      </td>
	</tr>
</table>
</div>

<input type="hidden" id="sumatarifas_real" name="sumatarifas_real" value="">

{*BLOQUE_DESPLIEGUE_TARIFA}
<div style="text-align: right; float: right">
{TARIFA}
</div>

{*BLOQUE_TARIFA_SIN_TAX}
<table cellpadding = "0px" cellspacing="0px" class="table">
<tr style="font-size: 15px">
<td class=par>

<b>{LABEL_TARIFA} * : &nbsp;</b>
    </td>
			<td id="sumatarifas" class=par style="font-weight: bold">
			</td>
</tr>
<tr style="font-size: 12px">
<input type='hidden' name='moneda_precio_final_paso2' id='moneda_precio_final_paso2' value='{MONEDA_FINAL_PASO2}'>
<td class="par" colspan=2>{_VALORES_EN} {MONEDA}
</td>
</tr>
</table>
{/BLOQUE_TARIFA_SIN_TAX}

{*BLOQUE_TARIFA_CON_TAX}
<table border="0"  cellpadding="0" cellspacing="0" class="table" width="187px" >
<tr style="font-size: 12px">
	<td class="par" style="text-align:left;">{_LABEL_TARIFA}</td>
	<td id = "tarifa_sin_impuesto" class="par" style="text-align:right;">{_LABEL_VALOR_PAGAR_SIN_IMPUESTOS}</td>
</tr>
<tr style="font-size: 12px">
	<td class="par" style="text-align:left;">{_LABEL_IMPUESTOS}</td>
	<td id ="total_impuestos" class="par" style="text-align:right;">{_LABEL_TOTAL} {_LABEL_IMPUESTOS}</td>
</tr>
<tr style="font-size: 15px">
	<td class="par" style="text-align:left;">
	<b>{LABEL_TARIFA} * : &nbsp;</b>
    </td>
	<td id="sumatarifas" class="par" style="font-weight: bold; text-align:right;"></td>
</tr>
<tr style="font-size: 12px">
<input type='hidden' name='moneda_precio_final_paso2' id='moneda_precio_final_paso2' value='{MONEDA_FINAL_PASO2}'>
<td class="par" colspan=2 style="text-align:center; font-size:11px;">{_VALORES_EN} {MONEDA}
</td>
</tr>
</table>
{/BLOQUE_TARIFA_CON_TAX}
{/BLOQUE_DESPLIEGUE_TARIFA}

<script type="text/javascript">
limpiar_combinaciones ();

if ('{FLAVOUR}' == 'cplp_variable')
	{
	if ('{TARIFA_PRE_SELECCION}' || tarifa_pagada != 0)
		{
		if ('{CHECKED1}' == '1')	
			{
			document.getElementById('tdfamilia' + '{ID_FAMILIA1_PRE_SELECCION}' + '[' + '{ID_SEGMENTO1_PRE_SELECCION}' + '][' + '{ID_VUELO1_PRE_SELECCION}' + ']').style.backgroundColor = '{HL_BG_COLOR}';
			}
		if ('{CHECKED2}' == '1')
			{
			document.getElementById('tdfamilia' + '{ID_FAMILIA2_PRE_SELECCION}' + '[' + '{ID_SEGMENTO2_PRE_SELECCION}' + '][' + '{ID_VUELO2_PRE_SELECCION}' + ']').style.backgroundColor = '{HL_BG_COLOR}';
			}
		}
	}

if (tarifa_pagada != 0)
	{
	if('{CHECKED1}' == '1')
		{
 		set_vuelo_y_clase({FORM_OBJECT}, '{ID_SEGMENTO1}', '{ID_VUELO1}', '{CLASE1}', '{ID_FAMILIA1}', '{MONEDA1}', '{VALOR_TARIFA1}', {ARRAY_TAXES1});
		}
	if (segmentos_vuelos.length == 3 && '{CHECKED2}' == '1')
		{
 		set_vuelo_y_clase({FORM_OBJECT}, '{ID_SEGMENTO2}', '{ID_VUELO2}', '{CLASE2}', '{ID_FAMILIA2}', '{MONEDA2}', '{VALOR_TARIFA2}', {ARRAY_TAXES2});
		}
	}

calcula_tarifa({FORM_OBJECT});

get_selected_id_from_radio({FORM_OBJECT}, 'vueloida');
get_selected_id_from_radio({FORM_OBJECT}, 'vuelovuelta');
</script>
