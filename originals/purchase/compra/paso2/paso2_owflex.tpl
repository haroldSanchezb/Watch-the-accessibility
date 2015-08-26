{*BLOQUE_JS_OWFLEX}
<script type="text/javascript" src="/js/json.js"></script>
<script type="text/javascript" src="/js/prototype.js"></script>

<script type="text/javascript" src="/js/scriptaculous/effects.js"></script>
<script type="text/javascript" src="/js/scriptaculous/dragdrop.js"></script>

<script type="text/javascript" src="/js/json_services.js"></script>
<script type="text/javascript" src="/js/dynamic_components.js"></script>
<script src="/js/jquery/jquery_1_4_2_min.js" type="text/javascript"></script>


<script type="text/javascript">
function printfire()
	{
    if (document.createEvent)
    	{
        printfire.args = arguments;
        var ev = document.createEvent("Events");
        ev.initEvent("printfire", false, true);
        dispatchEvent(ev);
	    }
	}

function precheck_and_submit(f)
	{
	// Eat the return value
	check_and_submit_owflex(f);
	}

function despliegue_mensaje()
	{
 	var precio_final = parseInt('{HOME_PRECIO_FINAL}');
	var muestra_msg_fee = parseInt('{MUESTRA_MSG_CON_FEE}');
	
	if ({NUM_SEGMENTOS} == 2)
		{
 		if (!precio_final || precio_final == 0)
 			{
			if(!muestra_msg_fee || muestra_msg_fee == 0)
				{
	 			$('msg_precios_ow').innerHTML = '{_MSG_PRECIOS_OW_JS}';
				}
			else
				{
				$('msg_precios_ow').innerHTML = '{_MSG_PRECIOS_OW_CON_FEE_JS}';
				}
 			}
 		else
 			{
 			$('msg_precios_ow').innerHTML = '{_MSG_PRECIOS_OW_PRECIO_FINAL_JS}';
 			}
		}
	}

function check_and_submit_owflex(f)
	{
	if (buttonDisabled(0))
		{
		return false;
		}

	var elem, i, errores;
	errores = '';

	var fixed_family = '';
	for (i = 1; i <= {NUM_SEGMENTOS} +0; i++)
		{
		elem = eval("f.elements['vuelo_segmento" + i + "']");
		if (elem.value == '')
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
		if (typeof ClickTaleRegisterFormSubmit == 'function') {
			ClickTaleRegisterFormSubmit(f); 
			ClickTaleTag("form_submit_fail");
		}
		alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
		reenableButton(0);
		return false;
		}

	get_selected_id_from_radio('{FORM_OBJECT}', 'vueloida');
	get_selected_id_from_radio('{FORM_OBJECT}', 'vuelovuelta');

	var flag = '{PASO_EZREZ}';
	if (flag == 'special')
		{
		document.getElementById('externo').style.display = 'none';
		document.getElementById('waiting').style.display = 'block';
		window.scroll(0,0);
		f.action='paso3_special.cgi?just_refresh=1;session_id={SESSION_ID}{IS_RESERVA}';
		}
	else
		{
		f.action='{URL_PREFIX}/cgi-bin/{APPLICATION}/paso3.cgi?just_refresh=1;session_id={SESSION_ID}{IS_RESERVA}';
		}

	if (typeof ClickTaleRegisterFormSubmit == 'function') {
		ClickTaleRegisterFormSubmit(f); 
		ClickTaleTag("form_submit_success");
	}
	f.submit();
	}

function check_horarios(f)
	{
	var h_llegada = '';
	var h_salida = '';
	var status = 1;
	for (var i = 1; i <= {NUM_SEGMENTOS}+0; i++)
		{
		var horas = '';
		var vs = document.getElementById("vuelo_segmento" + i).value;

		if (vs == '') return 1;
		horas = f.elements['HORARIO_SEG'+i+'_VUE'+vs].value;
		var vals = horas.split("|");
		if (i > 1)
			{
			h_salida = vals[0];
			var delta = h_salida - h_llegada;
			if (delta < 3600)
				{
				status = 0;
				}
			h_llegada = vals[1];
			}
		else
			{
			h_llegada = vals[1];
			}
		}
	return (status);
	}

function cobro_premio_offline_click(id)
	{
	var url = location.href;
	url=url.replace(/[;&]owflex_oneworld=[01]/g, '');
	window.location=url + '&owflex_oneworld=' + id;
	}

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
	
function onload_owflex()
		{
		limpiar_combinaciones ();
		calcula_tarifa();
		despliegue_mensaje();

		{*LLAMADA_DESPLIEGUE_TARIFAS_PROMOCIONALES}
		if (document.getElementById('mowflex').value != '1')
		{
		despliega_componente_tarifas_promocionales();
		}
		{/LLAMADA_DESPLIEGUE_TARIFAS_PROMOCIONALES}
	}

</script>
{/BLOQUE_JS_OWFLEX}

{JS_OWFLEX}

{MENSAJE_DESCUENTO}
{FORM_TARIFAS_PROMOCIONALES}
{PROMOCION_CALENDARIO}
{*BLOQUE_FORMULARIO_OWFLEX_INICIO}
<form action='#' method='POST' name='paso2'>
    <input type='hidden' id='mowflex' value='{MOWFLEX}' />
	<input type='hidden' name='session_id' value='{SESSION_ID}'>
	<input type='hidden' name='tipo_paso2' value='{TIPO_PASO2}'>
	<input type='hidden' name='rand_check' value='{RAND_CHECK}'>
	<input type='hidden' name='currency_cotizacion' value='{ID_MONEDA}'>
    <input type="hidden" name="url_promo" id="url_promo" value="{URL_PROMO}">
	<input type="hidden" name="q_desplegado_paso2" id="q_desplegado_paso2" value="">
{/BLOQUE_FORMULARIO_OWFLEX_INICIO}

{_TITULO_PASO_2_OW}
{_BAJADA_PASO_2_OW}
<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
		    <td>{SELECCION}</td>
		</tr>
 </table>
 
<div id="contenido_tarifas_promocionales_owflex" style="display:none">
</div>
 	<div id="msg_precios_ow"></div>
	<div id="msg_mas_de_un_aeropuerto">{MAS_DE_UN_AEROPUERTO}</div>
	<div id="msg_contingencia">{MENSAJES_CONTINGENCIA}</div>

<br/>
{*COBRO_PREMIO_OFFLINE_INICIO}
    <ul id="cobro_premio_offline">
        <li class="{CLASS_NO_OFFLINE}" id="tab_no_offline"><a onclick="cobro_premio_offline_click(0);"><b>{_LABEL_VUELOS_NO_OFFLINE}</b></a></li>
        <li class="{CLASS_OFFLINE}" id="tab_offline"><a onclick="cobro_premio_offline_click(1);"><b>{_LABEL_VUELOS_OFFLINE}</b></a></li>
     </ul>
<div id="box-content">
	<div id="box-int-border">
{/COBRO_PREMIO_OFFLINE_INICIO}
	{SELECCION_VUELOS}
{*COBRO_PREMIO_OFFLINE_FIN}
	</div>
</div>
{/COBRO_PREMIO_OFFLINE_FIN}

{*BLOQUE_FORMULARIO_OWFLEX_FIN}
	<table cellspacing="0" cellpadding="0" width="40%" id=barra-continuar>

		<tr>
			
		  <td><input type='button' class="button-process" id='submitButton_owflex' value='{_LABEL_CONTINUAR}' name="submitButton" onclick="check_and_submit_owflex(document.forms.paso2)"/></td>
		</tr>
	</table>
</form>
{/BLOQUE_FORMULARIO_OWFLEX_FIN}


<script type='text/javascript'>
  hide_layer('espera');

// To allow temporary deactivation of buttons
	if (document.paso2.submitButton)
		{
		disabledButton[0] = new Array(1);
		disabledButton[0][0] = document.paso2.submitButton;
	}

		advierte_errores_validacion_posteriores(document.paso2);
		window.onload = onload_owflex();
		
</script>
