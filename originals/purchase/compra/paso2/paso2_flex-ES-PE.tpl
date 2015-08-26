<link href="/css/cajero.css" rel="stylesheet" type="text/css"/>
<script src="/js/jquery/jquery_1_4_2_min.js" type="text/javascript"></script>
<script src="/js/prototype.js" type="text/javascript"></script>
<script src="/js/json.js" type="text/javascript"></script>
<script src="/js/json_services.js" type="text/javascript"></script>
<script src="/js/dynamic_components.js" type="text/javascript"></script>
<script type="text/javascript">
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
	//alert(f.fecha1_dia.value + f.fecha1_anomes.value + '/' + f.fecha2_dia.value + f.fecha2_anomes.value);
	f.submit();
	return true;
	}

function despliega_owflex(fecha_ida, fecha_vuelta)
	{

	var id_casilla_matriz = "fechas_" + fecha_ida + "|" + fecha_vuelta;

	if (!document.getElementById(id_casilla_matriz))
		{
		alert("{_MSG_ERROR_MOWFLEX_FECHA_NO_DISPO_JS}");
		return;
		}
	
	var js_owflex_cargado = document.getElementById("js_owflex_cargado").value;
	var fechas_owflex_cargado = document.getElementById("fechas_owflex_cargado");
	var fecha_seleccionada = fecha_ida + '_' + fecha_vuelta;
	if (fechas_owflex_cargado.value == fecha_seleccionada)
		{
		return;
		}
	
	document.getElementById("contenido_despliegue_owflex").style.display = "none";
	showLightbox_espera_owflex('layer_espera_owflex');
	//window.location.href = '#foco_llamada_owflex';
	window.scrollTo(0,0);
	
	var parametros = new Object();
	parametros.session_id = '{SESSION_ID}';
	parametros.fecha_ida = fecha_ida;
	parametros.fecha_vuelta = fecha_vuelta;
	parametros.js_owflex_cargado = js_owflex_cargado;
	
	if (!fecha_vuelta) {
		parametros.fecha_vuelta = "''";
		fecha_vuelta = "''";
	}
	var now = new Date();
	var milisegundos_inicio = now.getTime();

	Dynamic_Components.refresh_component(
		"contenido_despliegue_owflex",
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
				setTimeout("muestra_owflex(" + fecha_ida + "," + fecha_vuelta + "," + js_owflex_cargado + ")", 4000 - diferencia_milisegundos);
				}
			else
				{
				muestra_owflex(fecha_ida, fecha_vuelta, js_owflex_cargado);
				}
			},
		function()
			{
			//maneja excepcion
			hideLightbox_espera_owflex('layer_espera_owflex');
			document.getElementById("contenido_despliegue_owflex").style.display = "block";
			},
			'1',
			'compra'
		);
	

	}

function muestra_owflex(fecha_ida, fecha_vuelta, js_owflex_cargado)
	{
	document.getElementById("contenido_despliegue_owflex").style.display = "block";
	hideLightbox_espera_owflex('layer_espera_owflex');
	
	var fechas_owflex_cargado = document.getElementById("fechas_owflex_cargado");
	fechas_owflex_cargado.value = fecha_ida + '_' + fecha_vuelta;
	
	celda_mouse_click(document.forms.paso1, fecha_ida, fecha_vuelta);

	window.location.href = '#foco_post_recarga_owflex';
	
//	if (js_owflex_cargado == '0')
//		{
//		document.getElementById("js_owflex_cargado").value = '1';
//		}

	}



</script>

{PROMOCION_CALENDARIO}
{FORM_TARIFAS_PROMOCIONALES}
<form action='/noJS.html' method='GET' name='paso1'>
	
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
{MENSAJE_DESCUENTO}
	<div id="msg_precios_ow_flex" {HIDDEN_MOWFLEX}>{_MSG_PRECIOS_OW}</div>
    <div id="msg_precios_ow_flex" {HIDDEN_MOWFLEX}>{_MSG_ROUNDTRIP_PE}</div>
	<h2>{MENSAJE}</h2>
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
	<br>
	{MSG_DISPO_MATRIZ}
	{MATRIZ}
	</div>
	<input type='hidden' id='js_owflex_cargado' value="0">
	<input type='hidden' id='fechas_owflex_cargado' value="{FECHAS_SELECCIONADAS}">
	<table cellspacing="0" cellpadding="0" id=barra-continuar {HIDDEN_MOWFLEX}>
	
		<tr>
			<td><input type='button' class="button-process" id='submitButton_matriz' value='{_LABEL_CONTINUAR}'  name="submitButton" onclick="check_and_submit(this.form)"/>
			</td>
		</tr>
	</table>
</form>

{*DESPLIEGUE_OWFLEX}

	{LAYER_ESPERA_OWFLEX}
	{LAYER_ESPERA_OWFLEX_TARIFAS_PROMOCIONALES}
	<div id="foco_post_recarga_owflex"></div>
	<div id="contenido_despliegue_owflex">
	{OWFLEX}
	
	</div>


{/DESPLIEGUE_OWFLEX}




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

</script>
