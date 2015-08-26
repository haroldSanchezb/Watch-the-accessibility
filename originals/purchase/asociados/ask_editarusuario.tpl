<html>
<script type="text/javascript">
function isFloat(value)
{
var pattern=new RegExp("^[0-9\.]+$");
return value.match(pattern);
}
function validar_datos()
{
var email = document.getElementById("email").value;
if(email != "")
{
document.form_usuario.submit();
}
else
{
alert ("Debe ingresar un email");
}
}
function update_sucursal()
{
if (confirm('Esta seguro que desea cambiar al usuario de sucursal'))
{
document.getElementById("accion").value = "update_sucursal_usuario";
document.form_usuario.submit();
}
}
</script>
	<div style="text-align: center;">
		<p style="text-align:center">
			Editar usuario
		</p>
		<p style="color:red; text-align:center">
			{ERROR}
		</p>
		<table width="90%"" border=0>
			<tr>
				<td>
					<table border='0' cellpadding='0' cellspacing='0' style="text-align:center">
											{*SI_RESULTS}
						<tr style="background-color:#003366">
							<td>								
								<table width='*' border='0' cellpadding='4' cellspacing='1'>
									<tr>
										<td style="background-color:#EEEEEE" colspan = 11>
											Usuario Asociado
										</td>
									</tr>
									<tr>
										<td style="background-color:#EEEEEE">
											Login
										</td>
										<td style="background-color:#EEEEEE">
											Nombre
										</td>
										<td style="background-color:#EEEEEE">
											Rut
										</td>
										<td style="background-color:#EEEEEE">
											email
										</td>
										<td style="background-color:#EEEEEE">
											Admin Emp
										</td>
										<td style="background-color:#EEEEEE">
											Admin Suc
										</td>
										<td style="background-color:#EEEEEE">
											Puede emitir
										</td>
										<td style="background-color:#EEEEEE">
											Pago BSP
										</td>
										<td style="background-color:#EEEEEE">
											L&iacute;nea Cr&eacute;dito
										</td>
										<td style="background-color:#EEEEEE">
											Sucursal
										</td>
									</tr>									{*FILA_USUARIO}
									<tr>
										<form action="#" name=form_usuario id=form_usuario onSubmit="validar_datos(); return false;">
											<input type=hidden name=accion id=accion value="editarusuario">
											<input type=hidden name=id_asociado value="{ID_ASOCIADO}">
											<input type=hidden name=id_empresa value="{ID_EMPRESA}">
											<td rowspan="2" style="background-color:#FFFFFF">
												{LOGIN}
											</td>
											<td rowspan="2" style="background-color:#FFFFFF">
												<a href="javascript:location.search='?accion=ventasasociados&amp;id_asociado={ID_ASOCIADO}&amp;filtroactivos=Y'">{NOMBRE}</a>
											</td>
											<td rowspan="2" style="background-color:#FFFFFF">
												{RUT_USUARIO}
											</td>
											<td style="background-color:#FFFFFF">
												<input name=email id=email type=text value="{EMAIL}">
											</td>
											<td style="background-color:#FFFFFF">
												<select name=admin_empresa >
													{OPTIONS_ADMIN_EMPRESA}
												</select>
											</td>
											<td style="background-color:#FFFFFF">
												<select name=admin_sucursal >
													{OPTIONS_ADMIN_SUCURSAL}
												</select>
											</td>
											<td style="background-color:#FFFFFF">
												<select name=puede_emitir >
													{OPTIONS_PUEDE_EMITIR}
												</select>
											</td>
											<td style="background-color:#FFFFFF">												{*PAGO_BSP_VAR}
												<select name=pago_bsp >
													{OPTIONS_PAGO_BSP}
												</select>												{/PAGO_BSP_VAR}												{*PAGO_BSP_FIXED}
												<input name=pago_bsp type=hidden value="{PAGO_BSP}">												{PAGO_BSP}												{/PAGO_BSP_FIXED}
											</td>
											<td style="background-color:#FFFFFF">												{*PAGO_LCA_VAR}
												<select name=pago_lca >
													{OPTIONS_PAGO_LCA}
												</select>												{/PAGO_LCA_VAR}												{*PAGO_LCA_FIXED}
												<input name=pago_lca type=hidden value="{PAGO_LCA}">												{PAGO_LCA}												{/PAGO_LCA_FIXED}
											</td>											
											<td rowspan="2" style="background-color:#FFFFFF">
												<select name=id_sucursal onChange="update_sucursal();">
													{OPTIONS_SUCURSAL}
												</select>
											</td>
									</tr>
									<tr>
										<td colspan="6" style="background-color:#FFFFFF">
											<input type="submit" value="Actualizar datos" name="editausuario">
										</td>
										</form>
									</tr>									{/FILA_USUARIO}
																		{/SI_RESULTS}
								</table>
							</td>
						</tr>
												{*NO_RESULTS}
						<tr>
							<td style="background-color:#FFFFFF; text-align:center" colspan = 4>
								El usuario a editar no existe
							</td>
						</tr>
												{/NO_RESULTS}
					</table>					
				</td>
			</tr>
		</table>
	</div>
	</body>
</html>
