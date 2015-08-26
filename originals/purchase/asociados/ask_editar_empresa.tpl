<html>
<script type="text/javascript">
function isFloat(value)
{
	var pattern=new RegExp("^[0-9\.]+$");
	return value.match(pattern);
}

function validar_datos()
{
	var codigo_holding_agencia = document.getElementById("codigo_holding_agencia").value;
	var codigo_holding_antiguo = document.getElementById("codigo_holding_antiguo").value;

	if (codigo_holding_antiguo != "")
	{
		if(codigo_holding_agencia == "" || !isFloat(codigo_holding_agencia))
		{
		alert ("Debe ingresar un codigo holding de agencia valido");
		return false;
		}
	}

	document.form_empresa.submit();
}
</script>
	<body style="background-color:# white">
		<div style="text-align: center">
			<p style="text-align:center">
				Editar Asociados
			</p>
			<p style="color:red; text-align:center">
				{ERROR}
			</p>
			<table width=90% border=0>
				<tr>
					<td>						
						<table border='0' cellpadding='0' cellspacing='0' style="text-align:center">
													{*SI_RESULTS}
							<tr style="background-color:#003366">
								<td>
									<table width='*' border='0' cellpadding='4' cellspacing='1'>
										<tr>
											<td style="background-color:#EEEEEE" colspan=6>
												Asociado
											</td>
										</tr>
										<tr>
											<form action="#" name=form_empresa id=form_empresa onSubmit="validar_datos(); return false;">
											<input type=hidden name=accion id=accion value="editar_empresa">
											<input type=hidden name=id_empresa value="{ID_EMPRESA}">
	
											<td style="background-color:#EEEEEE">
												Nombre
											</td>
											<td style="background-color:#FFFFFF" colspan=3>
												{NAME}
											</td>
											<td style="background-color:#EEEEEE">
												Fecha Inscripci&oacute;n
											</td>
											<td style="background-color:#FFFFFF">
												{FECHA_CREACION}
											</td>
										</tr>
										<tr>
											<td style="background-color:#EEEEEE">
												Rut
											</td>
											<td style="background-color:#FFFFFF">
												{RUT}
											</td>
											<td style="background-color:#EEEEEE">
												Giro
											</td>
											<td style="background-color:#FFFFFF" colspan =3>
												{GIRO}
											</td>
										</tr>

										<tr>
											<td style="background-color:#EEEEEE" colspan=6>
												Contacto
											</td>
										</tr>
									
										<tr>
											<td style="background-color:#EEEEEE">
												Fax
											</td>
											<td style="background-color:#FFFFFF" colspan="2">
												<input type="text" name="fax" value="{FAX}">
											</td>
											<!-- <td style="background-color:#EEEEEE">
												Email
											</td>
											<td style="background-color:#FFFFFF">
												<input type="text" name="email" value="{EMAIL}">
											</td> -->
											<td style="background-color:#EEEEEE">
												Tel&eacute;fono
											</td>
											<td style="background-color:#FFFFFF" colspan="2">
												<input type="text" name="telefono" value="{TELEFONO}">
											</td>
										</tr>

										<tr>
											<td style="background-color:#EEEEEE" colspan=6>
												Direcci&oacute;n
											</td>
										</tr>
										<tr>
											<td style="background-color:#EEEEEE">
												Direcci&oacute;n
											</td>
											<td style="background-color:#FFFFFF">
												<input type="text" name="direccion" value="{DIRECCION}">
											</td>
											<td style="background-color:#EEEEEE">
												Ciudad
											</td>
											<td style="background-color:#FFFFFF">
												<input type="text" name="ciudad" value="{CIUDAD}">
											</td>
											<td style="background-color:#EEEEEE">
												Comuna
											</td>
											<td style="background-color:#FFFFFF">
												<input type="text" name="comuna" value="{COMUNA}">
											</td>
										</tr>
										
										<tr>
											<td style="background-color:#EEEEEE" colspan=6>
												Atributos
											</td>
										</tr>
										
			<tr>
				<td style="background-color:#EEEEEE">Emisi&oacute;n diferida</td>
				<td style="background-color:#FFFFFF" colspan=1>
					<select name="emision_diferida">
					{OPTIONS_EMISION_DIFERIDA}
					</select>
				</td>
				<td style="background-color:#EEEEEE">Pago BSP</td>
				{*PAGO_BSP_FIXED}
				<td style="background-color:#FFFFFF"colspan=1>{PAGO_BSP}</td>
				{/PAGO_BSP_FIXED}
				{*PAGO_BSP_VAR}
				<td style="background-color:#FFFFFF"colspan=1>
					<select name=pago_bsp>
					{OPTIONS_BSP}
					</select>
				</td>
				{/PAGO_BSP_VAR}
				<td style="background-color:#EEEEEE">Target</td>
				<td style="background-color:#FFFFFF"colspan=1>
					<select name=target>
					{OPTIONS_TARGET}
					</select>
				</td
				
			</tr>
										
			<tr> 
			   <td style="background-color:#EEEEEE" colspan=6>Otros</td> 
			</tr> 
			                			<tr> 
										  	<td style="background-color:#EEEEEE">C&oacute;digo holding agencia</td> 
										  	<td style="background-color:#FFFFFF" colspan="5">
										  		<input type="text" name="codigo_holding_agencia" id="codigo_holding_agencia" value="{CODIGO_HOLDING_AGENCIA}" maxlength="15">
										  		<input type="hidden" name="codigo_holding_antiguo" id="codigo_holding_antiguo" value="{CODIGO_HOLDING_AGENCIA}">
											</td> 							
										</tr>
										
										<tr>
											<td colspan="6" style="background-color:#FFFFFF">
												<input type="submit" value="Actualizar datos" name="editaempresa">
											</td>
											</form>
										</tr>
																				{/SI_RESULTS}
									</table>
								</td>
							</tr>
														{*NO_RESULTS}
							<tr>
								<td style="background-color:#FFFFFF; text-align:center" colspan = 4>
									El asociado a editar no existe
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
