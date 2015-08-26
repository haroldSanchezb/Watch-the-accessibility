	<span id="caja_no_logged" style="display:none">
		{+SITIO_2008::CAJA_SOCIO(not_logged=1)}
	</span>
	<span id="caja_logged" style="display:none">
		{+TEMPLATE('acceso_usuarios/acceso_mi_cuenta.tpl')}
	</span>


<script type="text/javascript">
// Cargo el caja de login solo si hay sesion
var lan_session = document.cookie.match(new RegExp('(^|;)\\s*' + escape('lan_session') + '=([^;\\s]*)'));

if (document.getElementById('caja_no_logged') && document.getElementById('caja_logged'))
	{
	if (lan_session)
		{
		$('caja_no_logged').style.display = 'none';
		$('caja_logged').style.display = 'block';
		}
	else
		{
		$('caja_no_logged').style.display = 'block';
		$('caja_logged').style.display = 'none';
		}
	}
</script>

