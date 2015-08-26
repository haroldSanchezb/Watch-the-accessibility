

<style type="text/css">
a.Ntooltip {
	position: relative; /
	text-decoration: none; 
	color:#000000;
	font-weight:bold; 
	font-family: Arial, Helvetica, sans-serif;
	font-size: 10px;
	list-style-image: url(http://www.lan.com/images/sitio_personas/layout/ico_mas_info.png);
}


a.Ntooltip:hover {
	z-index:999; /* DEBE haber un color de fondo */
}

a.Ntooltip_no span {
display: none; /* el elemento va a estar oculto */
}

a.Ntooltip:hover span {
	display: block; /* se fuerza a mostrar el bloque */
	position: absolute; /* se fuerza a que se ubique en un lugar de la pantalla */
	top:2em;
	left:2em; /* donde va a estar */
	width:320px; /* el ancho por defecto que va a tener */
	padding:5px; 
	background-color: #FFFFFF; /* el color de fondo por defecto */
	color: #333333; /* el color de los textos por defecto */
	border: 1px solid #09F;
	border-radius: 8px;
	box-shadow: 0px 0px 4px 0px #000;
	font-size: 10px;
}

#anac {
	text-align:left;
	display: block;
	background-color: #FFFFFF;
	color: #333333;
	border: 1px solid #09F;
	border-radius: 8px;
	box-shadow: 0px 0px 4px 0px #000;
	padding: 5px;

}
#anac hr {
	margin-bottom:4px;
}
#anac h1 {
	font-size: 12px;
	font-weight: bold;
	line-height:10px;
	color: #333;
	margin-left:15px;
	margin-top:0px;
}

.celda1 {
	background-color:#e5edf8;
	width:80px;
	font-weight: bold;
	font-size: 12px;
	padding: 4px;
	text-align: center;
}
.celda2 {
	background-color:#d6e2f0;
	font-weight: bold;
	font-size: 12px;
	padding: 4px;
	text-align: center;
}
.celda3 {
	background-color:#c5d4e7;
	padding: 4px;
	text-align: center;
}
.celda4 {
	background-color:#a5b9d2;
	padding: 4px;
	text-align: center;
}

.tit {
	font-size:12px;
}

#anac {
	width:300px;
}

div.carrier_msg {
	font-size:10px;
	margin-bottom:2px;
}

.tooltip_anac_info {
	position: absolute; 
	width: 333px; 
	margin-top: -10px; 
	margin-left: -20px;
	/*border: solid 1px #cccccc;*/
}
.tooltip_anac_info .top {
	background: url(/images/compra/top_tooltip_info.png) center bottom no-repeat;
	width: 370px;
	height: 12px;
}
* html .tooltip_anac_info .top {
	background: url(/images/compra/top_tooltip_info.gif) center bottom no-repeat;
}

.tooltip_anac_info .middle {
	background: url(/images/compra/bg_tooltip_info.png) center repeat-y;
	width: 340px;
	/*padding: 0 21px 0 14px;*/
	padding-left: 30px;
	text-align: center;
	font-size: 0.9em;
}
* html .tooltip_anac_info .middle {
	background: url(/images/compra/bg_tooltip_info.gif) center top repeat-y;
}

.tooltip_anac_info .bottom {
	background: url(/images/compra/bottom_tooltip_info.png) center top no-repeat;
	width: 370px;
	height: 16px;
}
* html .tooltip_anac_info .bottom {
	background: url(/images/compra/bottom_tooltip_info.gif) center top no-repeat;
}

</style>




<script id="anac_data_template" type="text/x-jquery-tmpl">
<table border="0" class="anac" style="font-size:9px;">
  <tr>
  	<td class="celda1" rowspan="2">{_LABEL_TRAMO}</td>
    <td class="celda1" rowspan="2">{_LABEL_PORCENTAJE_VUELOS_CANCELADOS}</td>
    <td class="celda2" colspan="2">{_LABEL_PORCENTAJE_VUELOS_ATRASADOS}</td>
  </tr>
  <tr>
    <td class="celda3">{_LABEL_SUPERIOR_TREINTA_MINUTOS}</td>
    <td class="celda3">{_LABEL_SUPERIOR_SESENTA_MINUTOS}</td>
  </tr>
  {{for data}}
  <tr>
    <td class="celda4" style="text-align:center">{{:origin}}-{{:destination}}</td>
	{{if percent_cancelation != null}}
    <td class="celda4">{{:percent_cancelation}}%</td>
    <td class="celda4">{{:over_30}}%</td>
    <td class="celda4">{{:over_60}}%</td>
	{{else}}
    <td class="celda4" colspan="3">{_MSG_NO_EXISTE_INFORMACION_ANAC}</td>
	{{/if}}
  </tr>
  {{/for}}
</table>
</script>

<script id="anac_tooltip_template" type="text/x-jquery-tmpl">
<div id="anac">
{{if operado && marketeado}}
 <div class="carrier_msg">
 		{_LABEL_OPERADO_POR_INI} {{:operado}} {_LABEL_OPERADO_POR_FIN}{_PALABRA_Y}
		{_PALABRA_VUELO} {_LABEL_MARKETEADO_POR_INI} {{:marketeado}} {_LABEL_MARKETEADO_POR_FIN}
 </div>
 <hr>
{{/if}}
 <h1>{_LABEL_PUNTUALIDAD_ANAC}</h1>
 <div id="anac_data_table">
  <img src="/images/sitio_personas/layout/ajax.gif" height="16" width="16" alt="loading...">
 </div>
</div>
</script>


<script type="text/javascript">

	var anac_cache = {};
	var anac_query = {};

	function activa_flight_info_anac(operado_por, marketeado_por, id_class, flight_stats_query) {
		var data = {};
		if (operado_por && marketeado_por && !operado_por.match('&')) {
			data['operado'] = operado_por;
			data['marketeado'] = marketeado_por;
		}
		jQuery("#ttip_flight_info").html(jQuery("#anac_tooltip_template").render(data));
		jQuery("#following_tooltip").html(jQuery("#ttip_flight_info").html()).removeClass().addClass("tooltip_anac_info");
		document.onmousemove = follow;

		if (anac_cache[flight_stats_query] !== undefined) {
			//console.log("Showing cached data : " + flight_stats_query);
			showAnacResults(anac_cache[flight_stats_query]); 
		}
		else {
			if (anac_query[flight_stats_query])
				return;
			anac_query[flight_stats_query] = 1;

			//console.log("Calling ajax for : " + flight_stats_query);

			var current_ajax_count = count_props(anac_query);
			
			jQuery.ajax({
				data : flight_stats_query,
				url: '/cgi-bin/flight_stats.cgi',
				cache : false,
				dataType: "json",
				success: function(json) { 
					anac_cache[flight_stats_query] = json;
					showAnacResults(anac_cache[flight_stats_query], current_ajax_count);
				}
			});
		}
	}

	function showAnacResults(data, count) {
		if (count && count < count_props(anac_query))
			return;
		jQuery("#anac_data_table").html(jQuery("#anac_data_template").render({data: data}));
		//jQuery("#div_flight_info").html(jQuery("#anac").html());
	}

	function count_props(object) {
		var i=0;
		for (var name in object) {
			++i;
		}
		return i;
	}


</script>

<!-- TODO MOVE TO BASE TEMPLATE -->
<script type="text/javascript" src="/js/jsrender.js"></script>

