<div id="caja_socio">
	<br><br><br>
	<div style="text-align: center;">
		<img src="/images/common/ajax_loader_32.gif" alt="loading" width="32" height="32"><br>
		{_LABEL_LOADING}
	</div>
</div>

<div id="caja_socio_not_logged" style="display: none;">
	{+SITIO_2008::CAJA_SOCIO(not_logged='1')}
</div>

<script type="text/javascript">
	// Cargo la caja de loggeo solo si tengo el session_id
	var lan_session = document.cookie.match(new RegExp('(^|;)\\s*' + escape('lan_session') + '=([^;\\s]*)'));
	if (lan_session && document.getElementById('caja_socio'))
		{
		Dynamic_Components.add_component("caja_socio","100");
		}
	else
		{
		if (document.getElementById('caja_socio_not_logged'))
			{
			document.getElementById('caja_socio').innerHTML = document.getElementById('caja_socio_not_logged').innerHTML;
			}
		}
</script>
