
<h1>Modificar Time Limit</h1>

<form name='ff' action='/cgi-bin/asociados/adm_aviso_tl.cgi' enctype='multipart/form-data' method='POST'>
	<div>
		<input type='hidden' name='accion' value='grabar'>
		<input type='hidden' name='id_venta' value='{ID_VENTA}'>
	</div>

	<table class="table" width="100%" cellspacing="0" cellpadding="2">
		<colgroup>
			<col width="30%">
			<col>
		</colgroup>
		<tr> 
			<td class="sub-titulo">
				Fecha aviso:<br>Ej 2003-05-21
			</td>
			<td>
				<input type='text' name='tl_fecha_aviso' value='{TL_FECHA_AVISO}' maxlength='18' class="input">
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">
				Mensaje:<br>
        El siguiente mensaje le ser&aacute; enviado por e-mail en la fecha indicada. 
      </td>
			<td>
				<input type='text' name=tl_msg_aviso value='{TL_MSG_AVISO}' maxlength='80' class="input">
			</td>
		</tr>
	</table>
	
	<p>
		<input type='submit' value='Grabar Time Limit' class="boton-destacado" onfocus="blur()" name="submitbutton">
	</p>
</form>
