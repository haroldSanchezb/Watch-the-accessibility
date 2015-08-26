<script type='text/javascript'>
function valida_forma_pago(f)
	{
	var msg = '';

	change_bg_for_id("id_ctacte", "ok"); 


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

{DATA_LAYER_LOCAL_DEFINITION}

<h3 class=sub-titulo>Seleccione su banco</h3>
<table class=table width="100%" cellpadding="0" cellspacing="0">
	<tr>
		<td id="id_ctacte"> 
			<input type="radio" name="banco_ctacte" value='SANTANDER_SANTIAGO' CHECKED>
			<label for="id_ctacte">Banco Santander Santiago</label>
		</td>
		<td> 
			<input type="radio" name="banco_ctacte" value='CHILE'>
			<label for="id_ctacte">Banco de Chile/Banco Edwards</label>
		</td>
	</tr>
</table>
<p>En este paso usted s&oacute;lo ha seleccionado la forma de pago. Para poder realizar el pago a trav&eacute;s de la transferencia de fondos desde su cuenta corriente bancaria, deber&aacute; continuar al pr&oacute;ximo paso.</p>
