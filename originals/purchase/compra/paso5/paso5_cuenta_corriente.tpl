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

<ul class=list>
<!--{_MSG_CONFIANZA_ANULACIONES} -->
	<li><strong>Seleccione su banco</strong></li>
	<li id="id_ctacte"> 
		<input type="radio" name="banco_ctacte" value='SANTANDER_SANTIAGO'>
		<label for="id_ctacte">Banco Santander</label>
	</li>
	<li> 
		<input type="radio" name="banco_ctacte" value='CHILE'>
		<label for="id_ctacte">Banco de Chile/Banco Edwards</label>
	</li>
</ul>
<P>Una vez que seleccione el banco deber&aacute; realizar el pago con transferencia de fondos desde su cuenta corriente, por lo que aseg&uacute;rese de tener a su alcance la tarjeta <strong>S&uacute;per clave</strong> si eligi&oacute; Santander o <strong>Digipass</strong> si su banco es Chile/Edwards.</P>

