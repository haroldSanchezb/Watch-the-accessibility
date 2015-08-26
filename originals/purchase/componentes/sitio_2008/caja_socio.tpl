<div id="cabecera_acceso_clientes_logged">
	<img src="/images/common/candado.jpg" class="flotar_der" alt="" height="17" width="14">
	<h2>{_LABEL_MI_CUENTA}</h2>
</div>
					
<div id="cuerpo_acceso_clientes" class="logged">
	<ul>
		<li><a href="/cgi-bin/profile/usuario.cgi">{_LABEL_MIS_DATOS}</a></li>
		
		<li><a href="/cgi-bin/profile/mis_amigos.cgi">{_LABEL_MIS_AMIGOS}</a></li>
		<li><a href="/profile/preferencias.html">{_MSG_DEBE_LLENAR_PREFERENCIAS}</a></li>
		<li><a href="/cgi-bin/lanpass/cartola.cgi">{_ESTADO_CUENTA}</a></li>
		{_ESTADO_FACTURAS}
		<br/>
		<li class="flotar_der no_bg"><a href="{LOGOUT_CGI}?page={HOME}">{_LABEL_CERRAR_SESION} x</a></li>
	</ul>
</div>
