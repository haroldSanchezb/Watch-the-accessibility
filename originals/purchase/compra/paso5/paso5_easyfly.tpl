<script type='text/javascript'>
function valida_forma_pago(f)
	{
	var msg = "{MSG_ERROR}";
	if (msg)
		{
		msg += "\n\n";
		}
	return(msg);
	}
</script>

{*EASYFLY}
<table class="table" cellpadding='0' cellspacing='0' width="100%">

{*CUPONERA}
<tr>
	<th colspan="4"><b>{_LABEL_CUPONERA}: {ID_CUPONERA}</b></th>
</tr>
{*CUPON}
<tr class="{PAR}">
	<td>{_LABEL_CUPON} {NUMERO_CUPON}</td>
	<td>{ORIGEN} - {DESTINO}</td>
	<td>{PASAJERO}</td>
	<td>{RUT}</td>
</tr>
{/CUPON}
{/CUPONERA}

</table>
{/EASYFLY}
