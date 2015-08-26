<div id="componente_PANEL_CLIENTE">
</div>

<script type="text/javascript">
	// Cargo el panel cliente solo si hay sesion
	var lan_session = document.cookie.match(new RegExp('(^|;)\\s*' + escape('lan_session') + '=([^;\\s]*)'));
	if (lan_session && document.getElementById('componente_PANEL_CLIENTE'))
		{
		Dynamic_Components.add_component("componente_PANEL_CLIENTE","98");
		}
</script>
