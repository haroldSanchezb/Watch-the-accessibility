
<h1>Detalle Movimientos del Mes</h1>

<h4>Transacciones</h4>

<table class="table" width="100%" cellpadding="0" cellspacing="0">
	<tr> 
		<th>Sucursal</th>
		<th>Fecha</th>
		<th>N Tarjeta</th>
		<th>Producto</th>
		<th>Identificador o Ruta</th>
		<th>Tipo de Compra</th>
		<th>Monto Compra</th>
		<th>Pasajero o Descripci&oacute;n</th>
	</tr>
	{DETALLE_MOVS} 
</table>

<h4>Cargos y Abonos</h4>

<table class="table" width="100%" cellpadding="0" cellspacing="0">
	<tr> 
		<th>Fecha</th>
		<th>Tipo</th>
		<th>Monto</th>
		<th>Motivo</th>
	</tr>
	{DETALLE_ABONOS} 
</table>

<p>

<form method=POST>
	<input type=hidden name="excel" value="Y">
	<input type=hidden name="fecha_liquidacion" value="{FECHA_LIQUIDACION}">
	<input type=hidden name="accion" value="ver_detalle">
	<input type=submit value="Bajar a Excel" name="submitbutton">
</form>

</p>
