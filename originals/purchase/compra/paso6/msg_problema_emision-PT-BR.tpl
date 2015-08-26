</h2>
<div id="msg-op" class="warning-warning">
	<p>{_MSG_PAGO_RESERVA_PASO6}</p>
    <p>
	{_MSG_CALL_BACK}
	    <a href="javascript:ajaxpage('/cgi-bin/callback/callback.cgi?pnr={PNR}','content_layer_espera_proceso');showLightbox_espera_procesa_pago('layer_general');" rel="mx" class="btn btn-blue">{_LABEL_CALLBACK_LINK}</a>
		<div id='layer_general' class="overbox_layer_espera_proceso" style="display: none">
			<div id="content_layer">

				<div class="cerrar_layer">
					<div class="texto_cerrar_layer">
					<a href="javascript:hideLightbox_espera_procesa_pago('layer_general');">Cerrar</a>
					</div>
					<div class="imagen_cerrar_layer"><a href="javascript:hideLightbox_espera_procesa_pago('layer_general');">
					<img height="15" width="13" alt="Cerrar" src="/es_un/images/common/cerrar_lightbox.png"></a>
					</div>
				</div>
				<div id="content_layer_espera_proceso">
				<p style="padding:50px 0 50px 0"><img src="/images/cajero/wait_pago.gif" width="32" height="32" alt=""></p>
				</div>
			</div>
		</div>
		<div id='fade_layer_espera' class="fadebox_layer_espera_proceso">
		&nbsp;
		</div>
	</p>
	<p>{_MSG_LLAME_CC_O_INGRESE_PAGO_RESERVA} <a title="{_FRASE_PAGINA_PAGO_RESERVA}" href="{_URL_NUEVO_PAGO_RESERVA}pnr={PNR}&apellido={APELLIDO}">{_FRASE_PAGINA_PAGO_RESERVA}</a>
	{_MSG_LLAME_CC_O_INGRESE_PAGO_RESERVA_2}</p>
</div>
<h2>
<div id='omniture_override' style='visibility: hidden; display: none'>
<form action='#'>
<input type="hidden" name="omniture_override_pagename" id = "omniture_override_pagename" value='msg_callback_es_cl'>
</form>
</div>
