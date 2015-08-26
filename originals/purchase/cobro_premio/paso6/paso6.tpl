<link rel="stylesheet" href="/css/cajero.css" type="text/css" title="Cajero">

<script type="text/javascript">

	function check_and_submit(f)
		{
		var errores = '';
		f.action = '{_URL_HOME}';
		f.submit();
		}
	function imprimir(f)
		{
		var errores = '';
		f.action = 'javascript:window.print()';
		f.submit();
		}
	</script>

<h2>{MENSAJE_STATUS}</h2>

<script type="text/javascript">
hide_layer('espera');
show_layer('espera2');
</script>

<h1 style="font-size: 1.6em; margin: 0px">{_LABEL_CODIGO_RESERVA}: <span id="pnr_id_paso6">{PNR}</span></h1>
<div id= "contenido_mensaje">
<form action="#" name='aux2'>
	<input type="hidden" name="id_venta" id="id_venta" value='{PNR}L'>
</form>
<p>{MENSAJE_ERROR}</p>
</div>
{MENSAJE_PAGO}
{ITINERARIO}

<div id="application_message_div"></div>

<p>{DETALLE_VUELOS}<br>
<br>{+TEMPLATE('/cobro_premio/paso6/paso6_invitacion_seleccion_asiento.tpl')}<br>
  {PASAJEROS}<br>
  
  {*BLOQUE_TICKETS}
  {TICKETS}<br>
  {/BLOQUE_TICKETS}
  
  {TARIFA}<br>
  {RESUMEN_KMS}
  
  {*BLOQUE_INFO_PAGO}</p>
<h4 style="background-color: #033d7d; font: 14px Arial, Helvetica, sans-serif; color: #fff; text-align: left; font-weight: bold; padding: 6px 4px 6px 8px; margin:0px; border:none; ">{_LABEL_INFORMACION_PAGO}</h4>
	{INFORMACION_PAGO}
{/BLOQUE_INFO_PAGO}

{CONTENIDO}
{*BLOQUE_CUPON_PAGO}
	{INFORMACION_PAGO}<br>
{/BLOQUE_CUPON_PAGO}
{CUV}<br>
{*BLOQUE_INFO_COMPRA_OK}
	<br>
	{INFORMACION_DE_ENTREGA}<br>
	{REGULACIONES}<br>
	{RECOMENDACIONES}<br>
{/BLOQUE_INFO_COMPRA_OK}

{CALLCENTER}<br>
{+BANNER_TRAVEL_ASSIST(pnr={PNR},apellido={TRAVEL_ASSIST_APELLIDO})}
<form action="#">
	<table width='100%' cellpadding="0" cellspacing="0">
		<tr>
			<td class="left">
				<input type='button' class="button-process-small-back bluegrey-back" onclick='check_and_submit(this.form)' value='{_LABEL_VOLVER_AL_HOME}' name="home">
			</td>
			<td class="right">
				<input type='button' class="button-page-bluegrey" onclick='imprimir(this.form)' value='{_LABEL_IMPRIMIR_PAGINA}' name="boton_imprimir">
			</td>
  		</tr>
	</table>
</form>
<script type="text/javascript">
  ApplicationMessage.show("{APPLICATION_MESSAGES}");

hide_layer('espera');
hide_layer('espera2');
</script>
</div>