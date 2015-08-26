
<h1>Reporte de ventas</h1>

<form action='reporte_ventas.cgi' method='POST' name="form1">
	<div>
		<input type='hidden' name='accion' value='buscar'>
	</div>

	<table class="table" width="100%" cellspacing="0" cellpadding="2">
		<tr> 
			<td class="sub-titulo">Fecha venta desde</td>
			<td>{+COMBO_FECHA(tipo=past, nombre_base=fecha_desde, search=1)}</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Fecha venta hasta</td>
			<td> {+COMBO_FECHA(tipo=past, nombre_base=fecha_hasta, search=1)}</td>
		</tr>
		{*SUCURSALES}
		<tr>
			<td class="sub-titulo">Sucursal</td>
			<td>
				<select name='base[sucursal]'>
					<option value=''>Todas</option>
					{LISTA_SUCURSALES}
				</select>
			</td>
		</tr>
		{/SUCURSALES}
		{*AGENTES}
		<tr>
			<td class="sub-titulo">Agente</td>
			<td><select name='base[agente]' class="input-text">
					<option value=''>Todos</option>
					{LISTA_AGENTES}
				</select>
			</td>
		</tr>
		{/AGENTES}
	</table>

	<p>
		<input type="submit" value="Consultar" class="boton-destacado" onfocus="blur()" onclick="document.form1.submit();" name="consultar">
	</p>

</form>
