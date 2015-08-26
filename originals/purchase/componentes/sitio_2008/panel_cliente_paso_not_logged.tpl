<script type="text/javascript" src="/js/prototype.js"></script>
<script type="text/javascript" src="/js/scriptaculous/effects.js"></script>
<!--<script type="text/javascript" src="/js/scriptaculous/dragdrop.js"></script>-->

<script type="text/javascript">
	function muestra_panel_login()
		{
		if ($('panel_login').display != '')
			{
			if (typeof(Effect) != 'undefined')
				{
				$('panel_login').display = '';
				new Effect.BlindDown('panel_login');
				}
			else
				{
				$('panel_login').style.display = '';
				}
			}
		}

	function go_to_login_page(form)
		{
		var curr_location = window.location.href;
		var session_id = window.session_id || '';
		
		var search;
		
		if (!window.location.search)
			{
			search = '?session_id=' + session_id + '&just_refresh=1';
			}
		else
			{
			search = window.location.search;
			}
		
		$('login_cm_target_action').value = window.location.pathname + search;

		form.action = '{LOGIN_CGI}';
		form.submit();
		}
</script>

<div id="info">
	<div id="login">
		<a href="javascript:muestra_panel_login();">
			{_FF_NO_LOGUEADO}
		</a>
	</div>
</div>

<div id="panel_login" style="display: none;">
	<form name="login_proceso_paso" action="/no_js.html" method = 'POST' onSubmit="go_to_login_page(document.forms.login_proceso_paso); return false;">
		<input type="hidden" name="cm_target_action" id="login_cm_target_action" value="">

		<h1>{_MSG_USUARIO_REGISTRADO}</h1>
		<table class="table" cellspacing="0" cellpadding="0" width="100%">
			<tr> 
				<td colspan=2>{_MSG_USUARIO_REGISTRADO_DESC}<br>{ERROR_LOGIN}</td>
			</tr>
			<tr>
				<td>{_LABEL_LOGIN}</td>
				<td><input type=text name="login" id="id_login"></td>
			</tr>
			<tr>
				<td>{_LABEL_PASSWORD}</td>
				<td><input type=password name="password" id='id_password'></td>
			</tr>
			<tr>
				<td colspan=2><a href="{_URL_REGISTRO}" target='_blank'>{_LABEL_REGISTRESE}</a></td>
			</tr>
			<tr>
				<td colspan=2>
					<a href="{_URL_OLVIDO_CLAVE}" target='_blank'>{_LABEL_FORGOT_PASSWORD}</a>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: right;">
					<input class="boton-secundario" type="submit" value="{_LABEL_LOGIN_COMPRA}">
				</td>
			</tr>
		</table>
	</form>
</div>
<br>

<!--<script type="text/javascript">
	new Draggable('panel_login', {starteffect: '', endeffect: '', reverteffect: ''});
</script>-->
