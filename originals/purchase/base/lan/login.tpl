
	<h1>{_ACCESO_SOCIO_LP}<img style="margin-left:10px;" src="/images/common/candado.gif" alt="sitio seguro" title="sitio seguro" width="16" height="16"></h1>
	<p> {_MSG_LOGIN}. </p>
	<b>{ERROR}</b><br>
	<form action="/cgi-bin/login.cgi" method="post" name="login_form" id="login_form">
	  <input type=hidden name=cm_target_action value="{ACTION}">
		<div>
		<table class="table_formulario_lanpass" style=" background-color:#f3f4f9; margin-left: auto; margin-right: auto; text-align: left; ">
	    <col width="50%">
	    <col width="50%">

		<tr>
	      <td style="padding: 10px; ">
	        <strong>{_LABEL_LOGIN} / {_LABEL_SOCIO_LANPASS}</strong><br>
	      </td>
	      <td style="padding: 10px; " class="table_formulario_lanpass_blanco" >
	        <input name="login" type="text" class="input-normal" value="" tabindex='1'>
	      </td>
	    </tr>
	    <tr>
	      <td style="padding: 10px; ">
	        <strong>{_LABEL_PASSWORD}</strong><br>
	      </td>
	      <td style="padding: 10px; " class="table_formulario_lanpass_blanco">
	        <input name="password" type="password" class="input-normal" tabindex='2'>
	      </td>
	    </tr>
	</table>
	<table style=" background-color:#f3f4f9; margin-left: auto; margin-right: auto; text-align: left; ">
		<tr>
			<td><input type="submit" class=boton-secundario name='enter' value="{_LABEL_INGRESAR}" tabindex='3'></td>
		</tr>
	</table>
	<table style=" margin-left: auto; margin-right: auto; width: 300px;">
	<tr>
	<td>
		<div style="margin-top: 50px;">
		<h2>{_AYUDA}</h2>
			<ul style="margin:10px; ">
			<li>{_LINK_VERIFICA_TU_NUMERO_SOCIO_LP}</li>
			<li>{_LINK_OBTEN_NUEVA_CLAVE_LP}</li>
			<li>{_LINK_INSCRIBETE_EN_LAN}</li>
			</ul>
		</div>
		</td>
	  </tr>
		</table>
	</div>
	</form>

