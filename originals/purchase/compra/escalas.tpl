<form name="form1" method="post" action="">
	<table width="100%" class=table cellpadding="0" cellspacing="0">
		<tr>
   	   <td colspan=4 class=titulo>{_ESCALAS_TITULO}</td>
		</tr>
  		<tr> 
			<td colspan=4 class=sub-titulo>{_FRASE_ESCALAS_DEL_VUELO} {LINEA} {VUELO} {_PALABRA_DESDE} {ORIGEN} {_PALABRA_HASTA} {DESTINO}</td>
		</tr>
		<tr> 
			<th>{_LABEL_DESDE}</th>
			<th>{_LABEL_HACIA}</th>
			<th>{_LABEL_HORA_SALIDA}</th>
			<th>{_LABEL_HORA_LLEGADA}</th>
		</tr>
		{TABLA}
	</table>
	<br>
	<div class=middle>
		<input name="Submit" type="submit" class="boton-secundario" onClick="javascript:window.close();" value="{_LABEL_CERRAR_VENTANA}">
	</div>
</form>

