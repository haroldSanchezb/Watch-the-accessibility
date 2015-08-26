<script type="text/javascript">
 
if ('{_ENCUESTA_ABANDONO}' == '1')
	{
	setTimeout("encender_flag_encuesta()", 30000);
	}

function check_and_submit(f)
	{
	var errores = '';

	errores += valida_forma_pago(f);
	if (typeof(valida_factura) == 'function')
		{
		errores += valida_factura(f);
		}
	if (f.tbm_address)
		{
		errores += valida_tbm(f);
		}

	change_bg_for_id('id_checkbox', 'ok');

	if (! f.checkbox.checked)
		{
		change_bg_for_id('id_checkbox', 'dato-erroneo');
		errores += "--> {_MSG_ERROR_ACPETAR_CONDICIONES_COMPRA_JS}\n";
		}

	if (errores.length > 0)
		{
		alert("{_ENCABEZADO_ERROR_JS} \n\n" + errores);
		return false;
		}

	f.action = 'paso6.cgi?just_refresh=1;session_id={SESSION_ID}&reserva={IS_RESERVA}';
	apagar_flag_encuesta();
	f.submit();
	}

function continuar(f)
	{
	f.paso5b.value = 1;
	f.action = 'paso5.cgi?session_id={SESSION_ID}';
	apagar_flag_encuesta();
	f.submit();
	}
	
</script>

<!-- INICIO MODIFICACION PARA POBLAR EL COMBO SELECT DE CUOTAS PARA LAS 12 CUOTAS SIN INTERES -->


<script type="text/javascript">
function cambia_select() 
	{
	if (document.paso5.cuotas_normales.checked)  
		{
		// Muestro cuotas normales -> 1.- Limpio cuotas CIC
		var largo_del_select=document.paso5.cuotas.options.length
		for (i=1; i<=largo_del_select; i++)
			{
			document.paso5.cuotas.options[0] = null; // el primero siempre sera el que hay que borrar
			}

		// Muestro cuotas normales -> 2.- Ingreso cuotas normales
		var indice_del_select=0;
		for (i=0; i<=12; i++)
			{
			if (i==0)
				{
					document.paso5.cuotas.options[indice_del_select] = new Option('Sin cuotas',i);
					indice_del_select++;
				}
			else if (i==1 || i==2 || i==5)
				{
					// aqui no hacemos nada porque, no podemos vender este nro de cuotas normales por contrato
					// document.paso5.select_cuotas.options[indice_del_select] = new Option('sin cuotas',i);
					// indice_del_select++;
				}
			else if (i==3)
				{
					document.paso5.cuotas.options[indice_del_select] = new Option(i+' cuotas',i);
					indice_del_select++;
				}
			else 
				{
					document.paso5.cuotas.options[indice_del_select] = new Option(i+' {_LABEL_CUOTAS_SIN_INTERESES_JS}',i);
					indice_del_select++;
				}
			}
		}
	else
		{
		// Muestro cuotas CIC 
		apagar_flag_encuesta();
		document.location = 'paso5.cgi?session_id={SESSION_ID}&just_refresh=1';
		}
	}

function valida_forma_pago(f)
	{
	var msg = '';
	change_bg_for_id("id_validacion_anti_robot", "ok");
	if (f.validacion_anti_robot.value == '')
		{
		change_bg_for_id("id_validacion_anti_robot", "dato-erroneo");
		msg += "--> {_ERROR_CODIGO_MAL_INGRESADO_JS}\n";
		}
	if (msg != '')
		{
		return(msg);
		}
	else
		{
		return('');
		}
	}


</script>

<!-- FIN  MODIFICACION PARA POBLAR EL COMBO SELECT DE CUOTAS PARA LAS 12 CUOTAS SIN INTERES -->


<form autocomplete="off" action='paso6.cgi?just_refresh=1;session_id={SESSION_ID}&amp;reserva={IS_RESERVA}' method='POST' name='paso5' id='paso5' onSubmit='return(false)' >
	<input type='hidden' name='rand_check' value='{RAND_CHECK}'>
 	<input type='hidden' name='paso5b' value='0'>
 	
	<h6>{ERROR}</h6>
	{SELECCION}
	{AVISO_CAMBIO_MONEDA}
 	{AVISO_TRAVEL_VOUCHER}
	{ITINERARIO}
	<br/>
	{RESUMEN_TARIFA}
 	{LISTADO_TRAVEL_VOUCHERS}
	{TARIFA}
	{TOTAL_TARIFA}
 	{AVISO_IGV_IQT}
 	{TARIFA_RESUMEN_TRAVEL_VOUCHER}
	{ERRORES_FORMA_PAGO}
	{TBM_FORM}

	{*BOTON_CONTINUAR_PASO5B}
	<table cellspacing="0" cellpadding="0" id=barra-continuar>
		<tr>
			
			<td>
				<input type='button' class="button-process" onclick='continuar(this.form)' name='next_step' value='{_LABEL_CONTINUAR}'>
			</td>
		</tr>
	</table>
	{/BOTON_CONTINUAR_PASO5B}
	{*RESERVA}
	<div class=table>
		<p>{_HTML_RESERVA_RESPETADA_1} {FECHA_LIMITE_RESERVA}.</p>
		<p>{_HTML_RESERVA_RESPETADA_2}</p>
		<br>    
		<p>{_LABEL_IMPORTANTE}: {_MSG_HTML_POSIBLE_ADELANTO_1} {_PALABRA_OFICINAS}.<br>
	<!--    <a href="javascript:MM_openBrWindow('/cgi-bin/compra/show_oficinas.cgi?session_id={SESSION_ID}','nombre','width=600,height=520,scrollbars=yes');">{_PALABRA_OFICINAS}</a>.-->
		{_MSG_HTML_POSIBLE_ADELANTO_2}</p> 
	</div>
	{LISTA_OFICINAS}
	<h4>{_HTML_RESERVA_EXPLICACION}</h4>
	<table class=table cellpadding=0 cellspacing=0 width="100%">
		<tr>    
			<td>    
				<strong>{_HTML_RESERVA_CODIGO}</strong>
			</td>   
			<td id="id_validacion_anti_robot">
				<input type=text name='validacion_anti_robot' maxlength='5' size='10'>
			</td>
			<td> 
				<img src='/cgi-bin/compra/genera_imagen_validacion.cgi?session_id={SESSION_ID}' width=180 height=80 alt=''>
			</td>        
	</table>
	{*SHOW_CONDICIONES}
	<table cellspacing="0" cellpadding="0" id=barra-continuar>
	<tr>    
		<td class=first id='id_checkbox'><input type="checkbox" name="checkbox" id="chk_ok" value="checkbox">
			<label for="chk_ok">
			<a href="javascript:MM_openBrWindow('/cgi-bin/compra/show_condiciones.cgi','nombre','width=745,height=520,scrollbars=yes,resizable=yes');">
			{_MSG_ACEPTO_CONDICIONES_COMPRA}
			</a>
			</label>
		</td>   
		<td class=last>&nbsp;&nbsp;</td>
		<td>
			<input type='button' class="button-process" onclick='check_and_submit(this.form)' name='next_step' value='{_LABEL_CONTINUAR}'>
		</td>
	</tr>
	</table>
	{/SHOW_CONDICIONES}
	{/RESERVA}

</form>


{+TEMPLATE('/affiliates/world_media_b2l.tpl')}


{WIDGET_PREFETCH}
{CAJERO}
<script type='text/javascript'>
  hide_layer('espera');

function advierte_errores_validacion_posteriores(f)
        {
	var errores;

	errores = '';

	{INSTRUCCIONES_ERROR}
	
	if (errores.length > 0)
		{
		alert("{_ENCABEZADO_ERROR_JS} \n\n" + errores);
		return false;
		}
        }

advierte_errores_validacion_posteriores(document.paso5);
</script>
