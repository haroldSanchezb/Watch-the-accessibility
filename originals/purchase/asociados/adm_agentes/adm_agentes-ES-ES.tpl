<div id="contenedor_paso1_asociados">
<h1>Perfil del agente</h1>
<div class="content_tb_process">
<h2 style="width:770px; margin-left:auto; margin-right:auto">Perfil del agente</h2>

<div class="box_content_process" style="width:766px; margin-left:auto; margin-right:auto">
<div class="box_int_border_process">
<div class="center_content" style="width:600px">


<table class="tabla_form_proceso" width="600px" cellspacing="0" cellpadding="0">

	<tr>
		<td class="dato_tabla_form_proceso" style="width:50%">Nombre</td>
		<td class="campo_tabla_form_proceso">{NOMBRE}</td>
	</tr>
	<tr>
		<td class="dato_tabla_form_proceso">Email</td>
		<td class="campo_tabla_form_proceso">{EMAIL}</td>
	</tr>
	<tr>
		<td class="dato_tabla_form_proceso">Login</td>
		<td class="campo_tabla_form_proceso">{LOGIN} {LINK_CAMBIO_CLAVE}</td>
	</tr>
	<tr>
		<td class="dato_tabla_form_proceso">Sucursal</td>
		<td class="campo_tabla_form_proceso">{SUCURSAL}</td>
	</tr>
	<tr>
		<td class="dato_tabla_form_proceso">Admin. Sucursal</td>
		<td class="campo_tabla_form_proceso">{ADMIN_SUCURSAL}</td>
	</tr>
	<tr>
		<td class="dato_tabla_form_proceso">Admin. Empresa</td>
		<td class="campo_tabla_form_proceso"> {ADMIN_EMPRESA}</td>
	</tr>
	<tr>
		<td class="dato_tabla_form_proceso">Autorizado para emisi&oacute;n</td>
		<td class="campo_tabla_form_proceso"> {PUEDE_EMITIR}</td>
	</tr>
	<tr>
		<td class="dato_tabla_form_proceso">Autorizado para pagos BSP</td>
		<td class="campo_tabla_form_proceso"> {PUEDE_BSP}</td>
	</tr>
	<tr>
		<td class="dato_tabla_form_proceso">Autorizado para L&iacute;nea de cr&eacute;dito</td>
		<td class="campo_tabla_form_proceso"> {PUEDE_LCA}</td>
	</tr>
	<tr>
		<td class="dato_tabla_form_proceso">Agent sign-in</td>
		<td class="campo_tabla_form_proceso"> {AGENT_SIGNIN}</td>
	</tr>
	<tr>
		<td class="dato_tabla_form_proceso">Firma Maestra Activada</td>
		<td class="campo_tabla_form_proceso"> {FIRMA_MAESTRA}</td>
	</tr>
	{*BLOQUE_FIRMA_MAESTRA}
	<tr>
		<td class="dato_tabla_form_proceso">URL firma maestra</td>
		<td class="campo_tabla_form_proceso"> {URL_FIRMA_MAESTRA}</td>
	</tr>
	{/BLOQUE_FIRMA_MAESTRA}
</table>
<!--
{LINK_EDITAR_AGENTE}
-->
<input name="Submit" class="boton-destacado" onclick="MM_goToURL('parent','adm_agentes.cgi?accion=ask_editar&amp;id_agente={ID}');return document.MM_returnValue" value="Modificar informaci&oacute;n" onfocus="blur()" type="submit">


</div>
</div>
</div>
</div>
</div>