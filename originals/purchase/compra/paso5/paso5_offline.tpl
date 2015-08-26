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

<ul class=list>
	<li>{LOGO_COMERCIO} {EXPLICACION_COMERCIO}</li>
	<li>{_LABEL_FECHA_LIMITE_PAGO}: {FECHA_LIMITE}</li>
</ul>
