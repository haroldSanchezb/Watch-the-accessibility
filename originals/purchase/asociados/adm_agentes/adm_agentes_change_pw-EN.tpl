
<h1>Change password </h1>

<form action='adm_agentes.cgi'>
	<div>
		<input type='hidden' name='accion' value='change_pw'>
		<input type='hidden' name='id_agente' value='{ID}'>
	</div>

	<table class="table" width="100%" cellspacing="0" cellpadding="0">
		<colgroup>
			<col width="25%">
			<col>
		</colgroup>
		<tr> 
			<td class="sub-titulo">Login</td>
			<td>{LOGIN}</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Password</td>
			<td> 
				<input name='password' type='password' class="input" id="password">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Repeat password </td>
			<td> 
				<input name='password2' type='password' class="input" id="password2">
			</td>
		</tr>
	</table>
	
	<p><input type='submit' value='Change password' class="boton-destacado" onfocus="blur()" name="submitbutton">
	</p>
	
</form>
