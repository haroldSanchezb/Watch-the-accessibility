{_LABEL_PUEDES_PAGAR} {MENSAJE_COMERCIOS}.<br>
    {*COMERCIO}
        <li>
					<table>
					<tr>
					<td>
          &nbsp;&nbsp;&nbsp;<input type=radio name="forma_pago" id="id_{COMERCIO}" value="OFFLINE" {CHECKED} onClick="this.form.comercio.value='{COMERCIO}'"></td><td> {ICON}</td><td style='vertical-align: middle'> {NOMBRE_COMERCIO}</td>
					</tr>
					</table>
        </li>
    {/COMERCIO}
<input type="hidden" name="comercio" id="comercio" value="">
<script type="text/javascript">
</script>
