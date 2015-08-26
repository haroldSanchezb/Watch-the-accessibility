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
	if (typeof(valida_boleta) == 'function')
		{
		errores += valida_boleta(f);
		}
	
	change_bg_for_id('id_checkbox', 'ok');

	if (! f.checkbox.checked)
		{
		change_bg_for_id('id_checkbox', 'dato-erroneo');
		errores += "--> {_MSG_ERROR_ACPETAR_CONDICIONES_COMPRA_JS}\n";
		}
	
	var elem_asist = eval(f.terminos_condiciones_asist);
	if (elem_asist)
		{
		change_bg_for_id('terminos_condiciones_asist', 'ok');

		if (! f.terminos_condiciones_asist.checked)
			{
			change_bg_for_id('terminos_condiciones_asist', 'dato-erroneo');
			errores += "--> {_MSG_ERROR_ACEPTAR_TERMINOS_CONDICIONES_ASISTENCIA_JS}\n";
			}
		}

	if (errores.length > 0)
		{
		if (typeof ClickTaleRegisterFormSubmit == 'function') {
			ClickTaleRegisterFormSubmit(f); 
			ClickTaleTag("form_submit_fail");
		}
		alert("{_ENCABEZADO_ERROR_JS} \n\n" + errores);
		return false;
		}

	f.action = 'paso6.cgi?session_id={SESSION_ID}';
	apagar_flag_encuesta();
	if (typeof ClickTaleRegisterFormSubmit == 'function') {
		ClickTaleRegisterFormSubmit(f); 
		ClickTaleTag("form_submit_success");
	}
	f.submit();
	}

function continuar(f)
	{
	f.paso5b.value = 1;
	f.action = 'paso5.cgi?session_id={SESSION_ID}';
	apagar_flag_encuesta();
	if (typeof ClickTaleRegisterFormSubmit == 'function') {
		ClickTaleRegisterFormSubmit(f); 
		ClickTaleTag("form_submit_success");
	}
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


</script>

<!-- FIN  MODIFICACION PARA POBLAR EL COMBO SELECT DE CUOTAS PARA LAS 12 CUOTAS SIN INTERES -->

{DATA_LAYER_LOCAL_DEFINITION}

<form autocomplete="off" action='paso6.cgi?session_id={SESSION_ID}' method='POST' name='paso5' id='paso5' onSubmit='return(false)' >
	<input type='hidden' name='rand_check' value='{RAND_CHECK}'>
 	<input type='hidden' name='paso5b' value='0'>
 	
	<h6>{ERROR}</h6>
	  {_MSG_LEGAL_CREDITO_PAGO_INTERNACIONAL}<br />
      {SELECCION} <br>
	  {AVISO_CAMBIO_MONEDA}
	  {AVISO_TRAVEL_VOUCHER}
	  {*PNR}
	  <h1 style="font-size: 1.6em; margin: 0px">{_LABEL_CODIGO_RESERVA}: <span id="pnr_id_paso6">{PNR}</span></h1>
	  {/PNR}
	  {ITINERARIO}
	  {LISTADO_TRAVEL_VOUCHERS}
	  {TARIFA}
	  {TABLA_ASISTENCIA}
	  {TABLA_PRECIO_FINAL}
	  {AVISO_IGV_IQT}
	  {TARIFA_RESUMEN_TRAVEL_VOUCHER}
	  {FORMA_PAGO_TXT}
	  {ERRORES_FORMA_PAGO}
	  {DATOS_FORMA_PAGO}
	  {TBM_FORM}
	  {DATOS_FACTURA}
	  {DATOS_BOLETA}
	  {DATOS_FACTURA_LANTOURS}
	  
    {*SHOW_CONDICIONES} </p>
<table cellspacing="0" cellpadding="0" id="barra-continuar">
		<tr>
			<td class="first" id='id_checkbox'>
				<input type="checkbox" name="checkbox" id="chk_ok" value="checkbox"> 
				<label for="chk_ok">
					<a title="{_LABEL_VER_CONDICIONES_COMPRA}" href="javascript:MM_openBrWindow('/cgi-bin/compra/show_condiciones.cgi','nombre','width=745,height=520,scrollbars=yes,resizable=yes');">
						{_MSG_ACEPTO_CONDICIONES_COMPRA}
					</a>
				</label>
			</td>
			<td class="last">&nbsp;&nbsp;</td>
			<td>
				<input type='button' class="button-process" onclick='check_and_submit(this.form)' name='next_step' value='{_LABEL_CONTINUAR}'>
			</td>
		</tr>
		<tr>
			<td colspan="2">{_MSG_NO_RETRACTO}</td>
		</tr>
  </table>
	{/SHOW_CONDICIONES}
	{*BOTON_CONTINUAR_PASO5B}
	<table cellspacing="0" cellpadding="0" id=barra-continuar>
		<tr>
			
			<td>
				<input type='button' class="button-process" onclick='continuar(this.form)' name='next_step' value='{_LABEL_CONTINUAR}'>
			</td>
		</tr>
	</table>
	{/BOTON_CONTINUAR_PASO5B}
</form>

{+TEMPLATE('/affiliates/world_media_b2l.tpl')}

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

<br><br><br><br><br>
{WIDGET_PREFETCH}

