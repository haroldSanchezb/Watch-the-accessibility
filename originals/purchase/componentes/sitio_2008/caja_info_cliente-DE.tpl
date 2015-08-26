	<div id="caja_no_logged" class="bloque" style="display:none">
		<table>
		<tr>
			<td>
			<img src="/images/common/socio_lp_180x140_de.jpg" width="187" height="140" border="0" usemap="#espanol" alt="Acceso socios LANPASS" title="Acceso socios LANPASS">
			<map name="espanol">
				<area shape="rect" coords="56,55,132,78" href="/cgi-bin/site_login.cgi?page={RETORNO}" alt="ingresar">
				<area shape="rect" coords="23,102,98,117" href="{_URL_OLVIDO_CLAVE}" alt="Obtener clave">
				<area shape="rect" coords="22,118,132,134" href="/cgi-bin/profile/usuario.cgi" alt="inscripcion LANPASS">
			  </map>
			</td>
		</tr>
		</table>
	</div>
	<div id="caja_logged" class="bloque" style="display:none">
		<table id="acceso_clientes">
		<tr>
			<td>
			<div id="cabecera_acceso_clientes_logged">
				<img src="/images/common/candado.jpg" class="flotar_der" alt="" height="17" width="14">
				<h2>{_LABEL_MI_CUENTA}</h2>
			</div>
								
			<div id="cuerpo_acceso_clientes" class="logged">
				<ul>
					<li><a href="/cgi-bin/profile/usuario.cgi">{_LABEL_MIS_DATOS}</a></li>
					
					<li><a href="/cgi-bin/profile/mis_amigos.cgi">{_LABEL_MIS_AMIGOS}</a></li>
					<li><a href="/profile/preferencias.html">{_MSG_DEBE_LLENAR_PREFERENCIAS}</a></li>
					{_ESTADO_FACTURAS}
					<li><a href="/cgi-bin/lanpass/cartola.cgi">{_ESTADO_CUENTA}</a></li>
					<br>
					<li class="flotar_der no_bg"><a href="/cgi-bin/logout.cgi">{_LABEL_CERRAR_SESION} x</a></li>
				</ul>
			</div>
			</td>
		</tr>
		</table>
	</div>


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
