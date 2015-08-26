<script type='text/javascript'>
function submitenter(myfield,e)
	{
	var keycode;
	if (window.event)
		{
		keycode = window.event.keyCode;
		}
	else if (e)
		{
		keycode = e.which;
		}
	else
		{
		return true;
		}

	if (keycode == 13)
		{
		check_and_submit(myfield.form);
		return false;
		}
	else
		{
		return true;
		}
	}

</script>

<table width="100%" cellpadding="0" cellspacing="0">
	<col width="45%">
	<tr> 
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
        		<tr> 
          		<td>Login</td>
        		</tr>
        		<tr> 
          		<td>Es necesario estar autentificado para tener acceso a sus reservas.</td>
        		</tr>
        		<tr> 
          		<td>
				 		{ERROR_LOGIN}<br> 
						<table width="100%" cellpadding="0" cellspacing="0">  
        					<tr> 
								<td>
									Usuario
									<input type="text" class=input name="login" id="id_login">
								</td>
          					<td>
								 	Clave<br> 
          						<input name="password" type="password" id='id_password' onKeyPress="return submitenter(this,event)"> 
          					</td>
        					</tr>
      				</table>
	  				</td>
        		</tr>
      	</table>
		</td>
		<td>	
			<table width="100%" cellspacing="0" cellpadding="0">
  				<tr>
    				<td> 
            		<div> 
              			<input type="button" onclick='check_and_submit(this.form)' value="Continuar" OnFocus="blur()" name="continuar">
            		</div>
					</td>
  				</tr>
			</table>
			<br>
