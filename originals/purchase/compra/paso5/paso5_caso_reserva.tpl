<script type="text/javascript">

function check_and_submit(f)
	{
	var errores = '';

	errores += valida_forma_pago(f);

	if (f.factura_razon_social)
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
	else
		{
		f.action = 'paso4r.cgi';
		f.submit();
		}
	}

</script>

{DATA_LAYER_LOCAL_DEFINITION}

<form action='paso4r.cgi' method='POST' name='paso5' onSubmit='return(false)' >
	<input type='hidden' name='session_id' value='{SESSION_ID}'>
	<input type='hidden' name='rand_check' value='{RAND_CHECK}'>

	{ITINERARIO}
	<br>
	{TARIFA}
	<br>
	{AVISO_CAMBIO_MONEDA}
   
	<h4>{FORMA_PAGO_TXT}</h4>
	{ERRORES_FORMA_PAGO}
	{DATOS_FORMA_PAGO}
	{TBM_FORM}
	{DATOS_FACTURA}

	<table cellspacing="0" cellpadding="0" id=barra-continuar>
		<tr>
			<td class=first id='id_checkbox'><input type="checkbox" name="checkbox" id="chk_ok" value="checkbox"> 
				<label for="chk_ok">
					<a title="{_LABEL_VER_CONDICIONES_COMPRA}" href="javascript:MM_openBrWindow('/cgi-bin/compra/show_condiciones.cgi','nombre','width=745,height=520,scrollbars=yes,resizable=yes');">
						{_MSG_ACEPTO_CONDICIONES_COMPRA}
					</a>
				</label>
			</td>
			<td class=last>&nbsp;&nbsp;</td>
			<td>
				<input type='button' class=boton-destacado onclick='check_and_submit(this.form)' name='next_step' value='{_LABEL_CONTINUAR}'>
			</td>
		</tr>
	</table>

	
</form>

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
