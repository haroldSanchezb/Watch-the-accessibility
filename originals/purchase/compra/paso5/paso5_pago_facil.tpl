<script type='text/javascript'>
function valida_forma_pago(f)
	{
	var msg = '';


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


<table class="table" width="100%" border='0' cellpadding="0" cellspacing="0">
  <tr> 
	<td class="dato-tabla">
	El pago en las oficina de Pago F&aacute;cil, lo podr&aacute; realizar hasta el dia {FECHA_LIMITE_DE_PAGO} ({_HORA_DE} {CITY_PAGO} {_TIME_OF}).<br>
{_HTML_RESERVA_RESPETADA_2}
<br>
<br>
<span class="txt-arial-11-azul-bold">{_LABEL_IMPORTANTE}:</span>
{_MSG_PF_POSIBLE_ADELANTO}
	</td>
  </tr> 
</table>
