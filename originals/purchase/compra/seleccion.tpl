<script type="text/javascript">
function redirect_paso2_manana(reload, link_paso2, id_element, initial_reload, overnight)
	{

	// DE429: se debe recargar la pagina cambiando la fecha de retorno	
	var url = link_paso2 + "&overnight=" + overnight;
	if (initial_reload == '1')
		{
		alert("{_MSG_INITIAL_RELOAD_SPECIAL_JS}");
		window.location = url;
		}

	if (reload == '1')
		{
		if (confirm("{_MSG_RELOAD_SPECIAL_JS}") )
			{	
			window.location = url;
			}
		else
			{
			document.getElementById(id_element).checked = false;
			return;
			}
		}

	}

</script>

{MSG_ERROR_MONEDA}

<div id="content_tb_process">
<h2>{_LABEL_TABLA_ITINERARIO}</h2>
<div id="box_content_process">
<div id="box_int_border_process">
<table class="table_process" cellspacing="0" width="100%">
	<tr>
		{*HEAD_VUELO}
		<th>{TRAMO}</th>
		{/HEAD_VUELO}
		<th>{_LABEL_PASAJEROS}</th>
		<th>{_LABEL_CABINA}</th>
	</tr>
	<tr>
		{*VUELO}
		<td>{ORIGEN} - {DESTINO}<br>{FECHA}</td>
		{/VUELO}
		<td rowspan='{ROWSPAN}'>{PASAJEROS}</td><td rowspan='{ROWSPAN}'>{CABINA}</td>
	</tr>
	{*VUELOS_EXTRA}
	<tr>{HEAD_VUELO_EXTRA}</tr>
	<tr>{VUELO_EXTRA}</tr>
	{/VUELOS_EXTRA}
</table>
</div>
</div>
</div>
