<td id="contenido">

<div class="formulario">
<h2>Seleccione su {_PALABRA_SUCURSAL_EMPRESAS}</h2>
<form action='/cgi-bin/empresas/select_empresa.cgi'>
	<div>
		<input type='hidden' name='cm_target_action' value='{PAGINA}'>
	</div>

	<table cellpadding="6" cellspacing="0">
		<tr>
			<th align="left">{_PALABRA_SUCURSAL_EMPRESAS}</th>
		</tr>
		<tr>
	    	<td colspan="2" class="submit"> <select name='id_empresa_sucursal'>
					{LISTA_EMPRESAS}
				</select>
			</td>    	    
		</tr>
		<tr>
		  <td colspan="2" class="submit"><input type='submit' name='go' value='Seleccionar' class="btn_form2 flotar_der" /></td>
		</tr>
	</table>
</form>

</div>

<td>