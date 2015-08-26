<script type='text/javascript'>

function check_and_submit_pnr(f)
        {
        var errores = '';

        f.pnr.value      = Trim(f.pnr.value);
        f.apellido.value = Trim(f.apellido.value);

        if (f.pnr.value == '')
                {
                errores += "{_ERROR_PNR_INVALIDO_JS}\n";
                }

        if (!f.pnr.value.match(/^[0-9A-Za-z]{6}$/) && !f.pnr.value.match(/^[0-9]*$/))
                {
                errores += "{_ERROR_PNR_INVALIDO_JS}\n";
                }

        if (f.apellido.value == '')
                {
                errores += "{_ERROR_APELLIDO_INVALIDO_JS}\n";
                }

        if (errores.length > 0)
                {
                alert("{_ENCABEZADO_ERROR_JS}\n\n" + errores);
                return false;
                }

        f.action = '{NEXT_STEP}' || 'paso2.cgi';
        f.submit();
        }

</script>
<style type="text/css" media="screen" id="test">
</style>
<div id="panel-general">
	<br />
	<h1>{_TITULO_REVISE_ITINERARIO}</h1>
	<br />
	{_MSG_REVISA_ITINERARIO}
	<br />
	{FAIL_HTML}
	{*FAIL}
		<div id="fail" class="warning-info" style="padding-left: 70px; padding-top: 20px; padding-bottom:15px;">
			{_MSG_SELF_NOTIFY_PNR_NO_EXISTE}
		</div>
	{/FAIL}
        {*FAIL2}
                <div id="fail" class="warning-info" style="padding-left: 70px; padding-top: 20px; padding-bottom:15px;">
                        {_MSG_SELF_NOTIFY_ERROR_APELLIDO_PNR}
                </div>
        {/FAIL2}
	<br />

<div class="content_tb_process">
		<h2>{_LABEL_BUSQUEDA_VUELO}</h2>
		<div class="box_content_process">
			<div class="box_int_border_process">
				<div class="center_content">
					<form action="#" name="ingreso_pnr" method="post">
						<input type="hidden" name="session_id" value="{SESSION_ID}" />
							<table class="tabla_form_proceso" width="100%" cellspacing="0" cellpadding="0">
								<tr><td class="encabezado_tabla_form_proceso" colspan="4">{_LABEL_BUSQUEDA_POR_PNR}</td></tr>
								<tr>
									<td class="dato_tabla_form_proceso" style="padding-bottom:0; width: 200px;">{_LABEL_CODIGO_RESERVA}</td>
									<td class="campo_tabla_form_proceso" style="padding-bottom:0; width: 200px;"><input type="text" size="15" name="pnr" value="{PNR}">
									<br />
									{_LABEL_EJEMPLO_PNR}
									</td>
								</tr>
								<tr>
									<td class="dato_tabla_form_proceso" style="padding-bottom:0; width: 200px;">{_LABEL_APELLIDO_PASAJERO}</td>
									<td class="campo_tabla_form_proceso"style="padding-bottom:0; width: 200px;"><input type="text" size="15" name="apellido" id="apellido" value="{APELLIDO}" /></td>
								</tr>
							</table>
						<p><input type="button" onClick="check_and_submit_pnr(this.form)" value="{_LABEL_BUSCAR}" class="button-page float_right" name="submitbutton"/></p>
					</form>
				</div>
				<br />
			</div>
		</div>
	</div>
</div>
