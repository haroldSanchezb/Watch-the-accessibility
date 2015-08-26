<script type="text/javascript">

function check_and_submit_tarifas_promocionales(f,id_promocion, fecha_calendario_ida, fecha_calendario_vuelta, id_farebasis_tarifa_promocional)
	{
	var promocion = "link_promocion_" + id_promocion;
	var tarifa_click = document.getElementById(promocion);
	tarifa_click.style.backgroundColor = "#FDE966";
	tarifa_click.style.color = "#000000";
	var form = document.getElementById(f);
	var div_despliegue = "contenido_tarifas_promocionales_{TP_DESPLIEGUE}"; 
	document.getElementById(div_despliegue).style.display = "none";
	showLightbox_espera_owflex('layer_espera_owflex_tarifas_promocionales');
	window.scrollTo(0,0);
	form.id_promocion.value = id_promocion;
	form.fecha_inicio_calendario_ida.value = fecha_calendario_ida;
	form.fecha_inicio_calendario_vuelta.value = fecha_calendario_vuelta;
	form.id_farebasis_tarifa_promocional.value = id_farebasis_tarifa_promocional;
	form.back_url.value = document.URL;
	
	form.submit();
	}

function despliega_componente_tarifas_promocionales()
	{

	var center_monto = document.getElementById('fecha_monto_seleccionada');
	var no_desplegar = document.getElementById("tp_no_tarifas_promocionales").value;
	
	if(no_desplegar == '1')
		{
		return ;
		}
		
	var parametros = new Object();
	
	parametros.origen = document.getElementById("tp_origen").value; 
	parametros.destino = document.getElementById("tp_destino").value; 
	parametros.cabina = document.getElementById("tp_cabina").value; 
	if (center_monto) {
		parametros.precio_referencia = center_monto.value;
	} else {
		parametros.precio_referencia = document.getElementById("tp_precio_referencia").value; 
	}
	parametros.fecha_ida = document.getElementById("tp_fecha_ida").value; 
	parametros.fecha_vuelta = document.getElementById("tp_fecha_vuelta").value; 
	parametros.portal = document.getElementById("tp_portal").value; 
	parametros.home = document.getElementById("tp_home").value; 
	parametros.nadults = document.getElementById("tp_nadults").value; 
	parametros.nchildren = document.getElementById("tp_nchildren").value; 
	parametros.ninfants = document.getElementById("tp_ninfants").value; 
	parametros.fecha_vuelo_ida = document.getElementById("tp_fecha_vuelo_ida").value; 
	parametros.despliegue = document.getElementById("tp_despliegue").value; 
	parametros.tipo_viaje = document.getElementById("tp_tipo_viaje").value; 
	parametros.lugar_despliegue = document.getElementById("tp_lugar_despliegue").value; 
	
	var div_despliegue = "contenido_tarifas_promocionales_" + parametros.despliegue; 
	Dynamic_Components.refresh_component(
		div_despliegue,
		"114",
		parametros,
		function()
			{
			//OK
			document.getElementById(div_despliegue).style.display = "block";
			},
		function()
			{
			//maneja excepcion
			},
			'1',
			'compra'
		);

	}

</script>

<input type="hidden" id="tp_origen" value="{TP_ORIGEN}" />
<input type="hidden" id="tp_destino" value="{TP_DESTINO}" />
<input type="hidden" id="tp_cabina" value="{TP_CABINA}" />
<input type="hidden" id="tp_precio_referencia" value="{TP_PRECIO_REFERENCIA}" />
<input type="hidden" id="tp_fecha_ida" value="{TP_FECHA_IDA}" />
<input type="hidden" id="tp_fecha_vuelta" value="{TP_FECHA_VUELTA}" />
<input type="hidden" id="tp_portal" value="{TP_PORTAL}" />
<input type="hidden" id="tp_home" value="{TP_HOME}" />
<input type="hidden" id="tp_nadults" value="{NADULTS}" />
<input type="hidden" id="tp_nchildren" value="{NCHILDREN}" />
<input type="hidden" id="tp_ninfants" value="{NINFANTS}" />
<input type="hidden" id="tp_fecha_vuelo_ida" value="{FECHA_VUELO_IDA}" />
<input type="hidden" id="tp_despliegue" value="{TP_DESPLIEGUE}" />
<input type="hidden" id="tp_tipo_viaje" value="{TP_TIPO_VIAJE}" />
<input type="hidden" id="tp_no_tarifas_promocionales" value="{TP_NO_TARIFAS_PROMOCIONALES}" />
<input type="hidden" id="tp_lugar_despliegue" value="{TP_LUGAR_DESPLIEGUE}" />

{+TEMPLATE('compra/paso2/layer_espera_owflex_tarifas_promocionales.tpl')}
{+TEMPLATE('compra/paso2/layer_espera_owflex.tpl')}

<form id='form_tarifas_promocionales' name='form_tarifas_promocionales'  action='/cgi-bin/compra/paso_calendario.cgi'  method='post'>
	<input name="id_promocion" type="hidden" id="id_promocion" value=''/>
	<input name="nadults" type="hidden" id="nadults" value='{NADULTS}'/>
	<input name="nchildren" type="hidden" id="nchildren" value='{NCHILDREN}'/>
	<input name="ninfants" type="hidden" id="ninfants" value='{NINFANTS}'/>
	<input name="fecha_vuelo_ida" type="hidden" id="fecha_vuelo_ida" value='{FECHA_VUELO_IDA}'/>
	<input name="fecha_inicio_calendario_vuelta" type="hidden" id="fecha_inicio_calendario_vuelta" value=''/>
	<input name="fecha_inicio_calendario_ida" type="hidden" id="fecha_inicio_calendario_ida" value=''/>
	<input name="id_farebasis_tarifa_promocional" type="hidden" id="id_farebasis_tarifa_promocional" value=''/>
	<input name="back_url" type="hidden" id="back_url" value=''/>
	
</form>
