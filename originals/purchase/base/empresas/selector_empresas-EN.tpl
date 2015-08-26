<td id="contenido">



<div class="formulario">
<h2>Select your branch </h2>
<form action='/cgi-bin/empresas/select_empresa.cgi'>
	<div>
		<input type='hidden' name='cm_target_action' value='{PAGINA}'>
	</div>

	<table>
		<tr>
			<th align="left">Branch</th>
		</tr>
		<tr>
	    <td colspan="2" class="submit"><select name='id_empresa_sucursal'>
			  {LISTA_EMPRESAS}
				
			  </select>	      
			  </td>
			  </tr>
		
		<tr>
			<td colspan="2" class="submit">
		<input type='submit' name='go' value='Select' class="btn_form2 flotar_der">	</td>	    </tr>
	</table>
</form>

</div>

<td>