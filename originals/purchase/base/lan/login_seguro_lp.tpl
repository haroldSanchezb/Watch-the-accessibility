
	<h1>{_ACCESO_SOCIO_LP}<img style="margin-left:10px;" src="/images/common/candado.gif" alt="sitio seguro" title="sitio seguro" width="16" height="16"></h1>
	<p> {_MSG_LOGIN}. </p>
	<b>{ERROR}</b><br>
	<form action="/cgi-bin/login.cgi" method="post" name="login_form" id="login_form">
	  <input type=hidden name=cm_target_action value="{ACTION}">
		<div>
		<table style=" background-color:#f3f4f9; margin-left: auto; margin-right: auto; text-align: left; ">
	    <col width="50%">
	    <col width="50%">
	    <tr>
			<td colspan="2">
				<!--<h2>{_LABEL_MEMBER_ACCESS}</h2>-->
			</td>
		</tr>
		<tr>
	      <td style="padding: 10px; ">
	        <strong>{_LABEL_LOGIN} / {_LABEL_SOCIO_LANPASS}</strong><br>
	      </td>
	      <td style="padding: 10px; " class='right'>
	        <input name="login" type="text" class="input-normal" value="" tabindex='1'>
	      </td>
	    </tr>
	    <tr>
	      <td style="padding: 10px; ">
	        <strong>{_LABEL_PASSWORD}</strong><br>
	      </td>
	      <td style="padding: 10px; " class='right'>
	        <input name="password" type="password" class="input-normal" tabindex='2'>
	      </td>
	    </tr>

		<td style="padding: 10px; ">
		
		</td>
		<td style="padding: 10px; " class='right'><input type="submit" class=boton-secundario name='enter' value="{_LABEL_INGRESAR}" tabindex='3'></td>
	    </tr>
	</table>
		<div style="margin-top: 50px;">
		<h2>{_TITULO_NO_PUEDE_INGRESAR}</h2>
			<ul style="margin:10px; ">
			<li><a href='/cgi-bin/profile/forgot_login.cgi'>{_TITULO_FORGOT_LOGIN}</a></li>
			<li><a href="{_URL_OLVIDO_CLAVE}">{_LABEL_FORGOT_PASSWORD}</a></li>
			<li><a href="{_URL_REGISTRO}">{_LABEL_REGISTRESE}</a></li>
			</ul>
		</div>
	</div>
	</form>

