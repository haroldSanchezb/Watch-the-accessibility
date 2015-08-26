<div id="panel_cliente" style="display:none">
	<span id="span_bienvenida"></span> <a href="/cgi-bin/logout.cgi?page=http://www.lan.com"  TITLE= "{_LABEL_CERRAR_SESION}"><img style = "vertical-align: middle" src="/images/common/cerrar_sesion.gif" HEIGHT = "20" WIDTH = "20" alt= "{_LABEL_CERRAR_SESION}"></a>
</div>

<script type="text/javascript">
function ucwords( str ) {
	return (str+'').replace(/^([^\s]+)|\s([^\s]+)/g, function ( $1 ) { return $1.capitalize(); } );
}

// Cargo el panel cliente solo si hay sesion
var lan_session = document.cookie.match(new RegExp('(^|;)\\s*' + escape('lan_session') + '=([^;\\s]*)'));
if (lan_session && document.getElementById('panel_cliente'))
	{
	var user_data = Cookie.get('user_data');
	if (user_data)
		{
		data = /^(.*)-(.)-(.)$/.exec(user_data);
		var bienvenida = '';
		if (data)
			{
			if (data[2] == 'M')
				{
				bienvenida = "{_LABEL_BIENVENIDA_MASC_JS}";
				}
			else if (data[2] == 'F')
				{
				bienvenida = "{_LABEL_BIENVENIDA_FEM_JS}";
				}
			else
				{
				bienvenida = "{_LABEL_BIENVENIDA_NEUTRO_JS}";
				}
			bienvenida = bienvenida + ' ' + ucwords(data[1]);
			$('span_bienvenida').innerHTML = bienvenida;
			$('panel_cliente').show();
			}
		}
	}
</script>
