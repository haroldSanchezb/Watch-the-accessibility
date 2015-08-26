<html>
<script type="text/javascript">
function isFloat(value)
  {
  var pattern=new RegExp("^[0-9\.]+$");
  return value.match(pattern);
  }

function cambiar_holding_sucursal()
	{
	var codigo = document.getElementById("codigo_holding_sucursal").value;
	if(codigo != "" && isFloat(codigo))
		{
		return true;
		}
	else
		{
		alert ("Codigo invalido");
		return false;
		}	
	}

function cambiar_ma(id_sucursal)
	{
	var ma = prompt ("Ingrese el nuevo Monto Aprobado", "");
	if (ma)
		{
		document.m_a.id_sucursal.value = id_sucursal;
		document.m_a.monto.value = ma;
		document.m_a.submit();
		}
	}


function abonar(id_sucursal)
	{
	var monto = document.getElementById("monto_a_abonar" + id_sucursal).value;

	if(isFloat(monto) && monto != "0")
		{
		document.abono.id_sucursal.value = id_sucursal;
		document.abono.monto.value = monto;
		document.abono.submit();
		}
	else
		{
		alert ("Debe ingresar un monto");
		}
	}


function debitar(id_sucursal)
	{
	var monto = document.getElementById("monto_a_debitar" + id_sucursal).value;
	var concepto = document.getElementById("concepto_a_debitar" + id_sucursal).value;

	if(isFloat(monto) && monto != "0")
		{
		document.debito.id_sucursal.value = id_sucursal;
		document.debito.monto.value = monto;
		document.debito.concepto.value = concepto;
		document.debito.submit();
		}
	else
		{
		alert ("Debe ingresar un monto para debitar");
		}
	}


</script>
	<body style="background-color:# white"> 
		<form name="m_a" id="m_a" action="#">
			<input type=hidden name=accion value="updatema">
			<input type=hidden name=id_sucursal value="">
			<input type=hidden name=id value="{ID}">
			<input type=hidden name=monto value="">
		</form>
		<form name="abono" id="abono" action="#">
			<input type=hidden name=accion value="abonar_monto">
			<input type=hidden name=id_sucursal value="">
			<input type=hidden name=id value="{ID}">
			<input type=hidden name=monto value="">
		</form>
		<form name="debito" id="debito" action="#">
			<input type=hidden name=accion value="debitar_monto">
			<input type=hidden name=id_sucursal value="">
			<input type=hidden name=id value="{ID}">
			<input type=hidden name=monto value="">
			<input type=hidden name=concepto value="">
		</form>
		<div style="text-align: center">
			<p style="text-align:center">Detalle Asociados</p> 
			<p style="color:red; text-align:center">{ERROR}</p>
			<table width='90%' border='0'>
				{*SI_RESULTS}
				<tr> 
					<td>
						<!-- ASOCIADO -->
						<table border='0' cellpadding='0' cellspacing='0' style="text-align:center"> 
							<tr style="background-color:#003366"> 
								<td>
									<table width='*' border='0' cellpadding='4' cellspacing='1'> 
										<tr><td style="background-color:#EEEEEE" colspan=6>Asociado</td></tr> 
										<tr>
											<td style="background-color:#EEEEEE">Nombre</td>
											<td style="background-color:#FFFFFF" colspan=3>{NAME}</td> 
											<td style="background-color:#EEEEEE">Fecha Inscripci&oacute;n</td> 
											<td style="background-color:#FFFFFF">{FECHA_CREACION}</td> 
										</tr>
										<tr>
											<td style="background-color:#EEEEEE">Rut</td> 
											<td style="background-color:#FFFFFF">{RUT}</td> 
											<td style="background-color:#EEEEEE">Giro</td> 
											<td style="background-color:#FFFFFF" colspan=3>{GIRO}</td> 
										</tr> 
										<tr> 
											<td style="background-color:#EEEEEE" colspan=6>Contacto</td> 
										</tr> 
										<tr> 
											<td style="background-color:#EEEEEE">Fax</td> 
											<td style="background-color:#FFFFFF" colspan="2">{FAX}</td> 
											<!-- <td style="background-color:#EEEEEE">Email</td> 
											<td style="background-color:#FFFFFF">{EMAIL}</td> --> 
											<td style="background-color:#EEEEEE">Tel&eacute;fono</td> 
											<td style="background-color:#FFFFFF" colspan="2">{TELEFONO}</td> 
										</tr> 
										<tr> 
											<td style="background-color:#EEEEEE" colspan=6>Direcci&oacute;n</td> 
										</tr> 
										<tr> 
											<td style="background-color:#EEEEEE">Direcci&oacute;n</td> 
											<td style="background-color:#FFFFFF">{DIRECCION}</td> 
											<td style="background-color:#EEEEEE">Ciudad</td> 
											<td style="background-color:#FFFFFF">{CIUDAD}</td> 
											<td style="background-color:#EEEEEE">Comuna</td> 
											<td style="background-color:#FFFFFF">{COMUNA}</td> 
										</tr> 
										<tr> 
											<td style="background-color:#EEEEEE" colspan=6>Atributos</td> 
										</tr> 
										<tr> 
											<td style="background-color:#EEEEEE">Emisi&oacute;n diferida</td> 
											<td style="background-color:#FFFFFF" colspan=1>{EMISION_DIFERIDA}</td> 
											<td style="background-color:#EEEEEE">Pago BSP</td> 
											{*PAGO_BSP_FIXED}
											<td style="background-color:#FFFFFF"colspan=1>{PAGO_BSP}</td> 
											{/PAGO_BSP_FIXED}
											{*PAGO_BSP_VAR}
											<td style="background-color:#FFFFFF"colspan=1>
												<form action="#">
													<input type=hidden name=accion value="updatebsp">
													<input type=hidden name=id_empresa value="{ID_EMPRESA}">
													<select name=pago_bsp>{OPTIONS_BSP}</select>&nbsp;&nbsp;
													<input type="submit" value="cambiar BSP" name="cambia_bsp">
												</form>
											{/PAGO_BSP_VAR}
											</td>
											<td style="background-color:#EEEEEE">Target</td>
											<td style="background-color:#FFFFFF"colspan=1>{TARGET}</td>
										</tr>
										<tr>
											<td style="background-color:#EEEEEE" colspan=6>Otros</td> 
										</tr> 
										<tr> 
											<td style="background-color:#EEEEEE">C&oacute;digo holding agencia</td> 
											<td style="background-color:#FFFFFF" colspan="5">{CODIGO_HOLDING_AGENCIA}</td> 							
										</tr>
										{*EDITAR_EMPRESA}
										<tr>
											<td style="background-color:#FFFFFF" colspan="6">
												<form action="#">
													<input type=hidden name=id_empresa value="{ID_EMPRESA}">
													<input type=hidden name=accion value="ask_editar_empresa">
													<input type="submit" value="Editar" name="editar">
												</form>
											</td>
										</tr>
										{/EDITAR_EMPRESA}
									</table>
								</td> 
							</tr> 
						</table>
						<!-- FIN Asociado -->
					</td>
				</tr>
				<tr>
					<td>
						&nbsp; 
					</td>
				</tr>
				<tr>
					<td>
						<!-- Sucursales --> 
						<table border='0' cellpadding='0' cellspacing='0' style="text-align:center"> 
							<tr style="background-color:#003366"> 
								<td>
									<table width='*' border='0' cellpadding='4' cellspacing='1'> 
										<tr> 
											<td style="background-color:#EEEEEE" colspan={NUM_COL}>Sucursales</td> 
										</tr> 
										<tr> 
											<td style="background-color:#EEEEEE">Sucursal</td> 
											<td style="background-color:#EEEEEE">C&oacute;digo IATA</td> 
											<td style="background-color:#EEEEEE">C&oacute;digo Comercio LanCard</td> 
											<td style="background-color:#EEEEEE">Oficina Amadeus MLI</td>
											<td style="background-color:#EEEEEE">C&oacute;digo Holding Sucursal</td>
											<td style="background-color:#EEEEEE">L&iacute;nea cr&eacute;dito Agencias</td>
											{*HEAD_IMPUESTO}<td style="background-color:#EEEEEE">Impuesto sobre la comisi&oacute;n</td>{/HEAD_IMPUESTO} 
										</tr> 
										{*FILA_SUCURSAL}
										<tr> 
											<td style="background-color:#FFFFFF">{NOMBRE}</td> 
											<td style="background-color:#FFFFFF">{IATA}</td> 
											<td style="background-color:#FFFFFF">{CCLC}</td> 
											<td style="background-color:#FFFFFF">{OFICINA_AMADEUS_MLI}</td>
											<td style="background-color:#FFFFFF">{CODIGO_HOLDING_SUCURSAL}</td>
											<td style="background-color:#FFFFFF">
												<form action="#">
													<input type=hidden name=accion value=updatelca>
													<input type=hidden name=id_sucursal value="{ID_SUCURSAL}">
													<input type=hidden name=id value="{ID}">
													<select id="lca_activo" name="lca_activo" {LCA_BSP_DISABLED} onChange="this.form.submit()">
														<option value='Y' {LCA_S_SI}>Activa</option>
														<option value='N' {LCA_S_NO}>Bloqueada</option>
													</select>
												</form>
											</td>
											{*FILA_IMPUESTO}<td style="background-color:#FFFFFF">{IMPUESTO}</td>{/FILA_IMPUESTO}
										</tr>
										{*UPDATE}
										<tr>
											<td style="background-color:#FFFFFF">&nbsp;</td>
											<td style="background-color:#FFFFFF">IATA:
												{*IATA_UPDATE}
												<form action="#">
													<input name=iata type=text id="iata">
													<input type=hidden name=accion value="updateiata">
													<input type=hidden name=id_sucursal value="{ID_SUCURSAL}">
													<input type=hidden name=id value="{ID}"><br>
													<input type=submit value='Ingresar' name="ingresar_iata">
												</form>
												{/IATA_UPDATE}
											</td>
											<td style="background-color:#FFFFFF">CCLC:
												{*CCLC_UPDATE}
												<form action="#">
													<input name=cclc type=text id="cclc">
													<input type=hidden name=accion value="updatecclc">
													<input type=hidden name=id_sucursal value="{ID_SUCURSAL}">
													<input type=hidden name=id value="{ID}"><br>
													<input type=submit value='Ingresar' name="ingresar_cclc">
												</form>
												{/CCLC_UPDATE}
											</td>
											<td style="background-color:#FFFFFF">MLI:
												{*MLI_UPDATE}
												<form action="#">
													<input name=oficina_amadeus_mli type=text id="mli">
													<input type=hidden name=accion value="updatemli">
													<input type=hidden name=id_sucursal value="{ID_SUCURSAL}">
													<input type=hidden name=id value="{ID}"><br>
													<input type=submit value='Ingresar' name="ingresar_mli">
												</form>
												{/MLI_UPDATE}
											</td>
											<td style="background-color:#FFFFFF">C&oacute;digo Holding Sucursal:
												{*HOLDING_UPDATE}
												<form action="#" onSubmit="return cambiar_holding_sucursal();">
													<input name="codigo_holding_sucursal" type="text" id="codigo_holding_sucursal" maxlength="5">
													<input type=hidden name=accion value="update_holding_sucursal">
													<input type=hidden name=id_sucursal value="{ID_SUCURSAL}">
													<input type=hidden name=id_empresa value="{ID_EMPRESA}"><br>
													<input type=submit value='Ingresar'>
												</form>
											{/HOLDING_UPDATE}
											</td>
											<td style="background-color:#FFFFFF; vertical-align: top">
												<table>
													<tr>
														<td><input type="button" onClick="cambiar_ma('{ID_SUCURSAL}')" {LCA_DISABLED} value="MA:"></td>
														<td style="text-align:right">{MONTO_APROBADO}</td>
													</tr>
													<tr>
														<td>MU:</td>
														<td style="text-align:right">{MONTO_UTILIZADO}</td>
													</tr>
													<tr>
														<td>Monto</td>
														<td><input type=text value='0' name="monto_a_abonar{ID_SUCURSAL}" size="5" {LCA_DISABLED}></td>
														<td><input type="button" value="Abonar" {LCA_DISABLED} onClick="abonar('{ID_SUCURSAL}')"></td>
													</tr>
													<tr>
														<td>Concepto</td>
														<td><input type="text" value="" name="concepto_a_debitar{ID_SUCURSAL}" size="35" {LCA_DISABLED}></td>
													</tr>
													<tr>
														<td>Monto</td>
														<td><input type=text value='0' name="monto_a_debitar{ID_SUCURSAL}" size="5" {LCA_DISABLED}></td>
														<td><input type="button" value="Debitar" {LCA_DISABLED} onClick="debitar('{ID_SUCURSAL}')"></td>
													</tr>
												</table>
											</td>
											{*BODY_IMPUESTO}
											<td style="background-color:#FFFFFF; vertical-align: top">
												<form action="#">
													<input type=hidden name=accion value="updateimpuesto">
													<input type=hidden name=id_sucursal value="{ID_SUCURSAL}">
													<input type=hidden name=id value="{ID}"><br>
													<select id="impuesto_comision" name="impuesto_comision" {IMPUESTO_DISABLED} onChange="this.form.submit()">
														<option value='Y' {IMPUESTO_SI}>Y</option>
														<option value='N' {IMPUESTO_NO}>N</option>
													</select>
												</form>
											</td>
											{/BODY_IMPUESTO}
										</tr>
										{/UPDATE} 
										{/FILA_SUCURSAL}
									</table>
								</td> 
							</tr> 
						</table>
						<!-- FIN Sucursales -->
					</td>
				</tr>
				<tr>
					<td> 
						&nbsp;
					</td>
				</tr>
				<tr>
					<td>
						<!-- Usuarios --> 
						<table border='0' cellpadding='0' cellspacing='0' style="text-align:center"> 
							<tr style="background-color:#003366"> 
								<td>
									<table width='*' border='0' cellpadding='4' cellspacing='1'> 
										<tr> 
											<td style="background-color:#EEEEEE" colspan = 11>Usuarios Asociados</td> 
										</tr> 
										<tr> 
											<td style="background-color:#EEEEEE">Login</td> 
											<td style="background-color:#EEEEEE">Nombre</td> 
											<td style="background-color:#EEEEEE">Rut</td> 
											<td style="background-color:#EEEEEE">email</td> 
											<td style="background-color:#EEEEEE">sucursal</td> 
											<td style="background-color:#EEEEEE">Admin Emp</td> 
											<td style="background-color:#EEEEEE">Admin Suc</td> 
											<td style="background-color:#EEEEEE">Puede emitir</td> 
											<td style="background-color:#EEEEEE">Pago BSP</td> 
											<td style="background-color:#EEEEEE">L&iacute;nea Cr&eacute;dito</td> 
										</tr> 
										{*FILA_USUARIO}
										<tr> 
											<td style="background-color:#FFFFFF">{LOGIN}</td> 
											<td style="background-color:#FFFFFF"><a href="javascript:location.search='?accion=ventasasociados&amp;id_asociado={ID_ASOCIADO}&amp;filtroactivos=Y'">{NOMBRE}</a></td> 
											<td style="background-color:#FFFFFF">{RUT_USUARIO}</td> 
											<td style="background-color:#FFFFFF">{EMAIL}</td> 
											<td style="background-color:#FFFFFF">{SUCURSAL}</td> 
											<td style="background-color:#FFFFFF">{ADMIN_EMPRESA}</td> 
											<td style="background-color:#FFFFFF">{ADMIN_SUCURSAL}</td> 
											<td style="background-color:#FFFFFF">{PUEDE_EMITIR}</td> 
											<td style="background-color:#FFFFFF">{PAGO_BSP}</td> 
											<td style="background-color:#FFFFFF">{LC_A}</td> 
											{*EDITAR_USUARIO}
											<td style="background-color:#FFFFFF">
												<form action="#">
													<input type=hidden name=id_asociado value="{ID_ASOCIADO}">
													<input type=hidden name=accion value="ask_editarusuario">
													<input type="submit" value="Editar" name="editar">
												</form>
											</td> 
											{/EDITAR_USUARIO}
										</tr> 
										{/FILA_USUARIO}
									</table>
								</td> 
							</tr>
						</table>
					</td>
				</tr>
				{/SI_RESULTS}
				{*NO_RESULTS}
				<tr> 
					<td style="background-color:#FFFFFF; text-align:center" colspan = 4>No hay asociados con ese criterio de b&uacute;squeda</td> 
				</tr>
				{/NO_RESULTS}
				<tr>
					<td> 
						&nbsp;
					</td>
				</tr>
				<tr>
					<td> 
						<!--- Ventas --->
						<table border='0' cellpadding='0' cellspacing='0' style="text-align:center"> 
							<tr style="background-color:#003366"> 
								<td>
									<form action="#">
										<input type=hidden name=id_empresa value={ID}> 
										<input type=hidden name=accion value='ventasasociados'>
										<table width='*' border='0' cellpadding='4' cellspacing='1'> 
											<tr> 
												<td style="background-color:#EEEEEE" colspan = 9>Ventas Asociados</td> 
											</tr>
											<tr> 
												<td style="background-color:#FFFFFF">S&oacute;lo PNR activos</td> 
												<td style="background-color:#FFFFFF"> 
													<input type=radio name=filtroactivos value=Y>Y<br>
													<input type=radio name=filtroactivos value=N>N
												</td>
											</tr> 
											<tr> 
												<td style="background-color:#FFFFFF">Nombre</td> 
												<td style="background-color:#FFFFFF"><input type=text name=nombre size=20></td> 
											</tr> 
											<tr> 
												<td style="background-color:#EEEEEE; text-align: center" colspan = 2>
													<input type=submit value=Buscar name="buscar"> 
												</td> 
											</tr>
										</table>
									</form> 
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table> 
		</div>
	</body>
</html>
