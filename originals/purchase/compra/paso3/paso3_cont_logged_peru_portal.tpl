<table cellspacing="0" cellpadding="0" width='100%'>
    <tr>
        <td>&nbsp;</td>
		<td style="width: 46%;">
			<table cellspacing="0" cellpadding="0" id=barra-continuar>
				<tr>
					
					<td>
						<input id='submitButton' type="button" class="button-process" name='next_step' onClick='check_and_submit(this.form)' value="{_LABEL_CONTINUAR}" {DISABLED}>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!--{+TEMPLATE('')}-->

<script type="text/javascript">
	if (typeof(check_sellup) != 'undefined')
		{
		check_sellup();
		}
</script>
<script type="text/javascript" src="/js/PurchesPeru/jsonPeru.js"></script>