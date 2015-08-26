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

<table width="100%" cellpadding="0" cellspacing="0">
	<tr><th>Los pasajes indicados se facturaran a</th></tr>
	<tr><td>{DIRECCION_EMPRESA} - {CONTACTO}</td></tr>
</table>

{*LC_EMPRESAS}
<br>
<br>
<h4>L&iacute;nea cr&eacute;dito empresas</h4>
<table class="table" cellpadding='0' cellspacing='0' width="100%">
<tr class="no-par">
<td>Cr&eacute;dito aprobado:</td><td style="text-align: right">{MONTO_APROBADO}</td><td>{MONEDA}</td>
</tr>
<tr class="no-par">
<td>Cr&eacute;dito utilizado:</td><td style="text-align: right">{MONTO_UTILIZADO}</td><td>{MONEDA}</td>
</td>
</tr>
<tr class="par">
<td style="color: {COLOR}">Cr&eacute;dito disponible:</td><td style="text-align: right">{MONTO_DISPONIBLE}</td><td>{MONEDA}</td>
</td>
</tr>
</table>
{/LC_EMPRESAS}
