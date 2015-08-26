
<h1>Movimientos del Mes en Curso</h1>

<h4>Transacciones del Mes en Curso</h4>

<table class="table" width="100%" cellpadding="0" cellspacing="0">
	<colgroup>
		<col width="12%">
		<col>
	</colgroup>
	<tr> 
		<th>Sucursal</th>
		<th>Fecha</th>
		<th>N Tarjeta</th>
		<th>Producto</th>
		<th>Identificador o Ruta</th>
		<th>Tipo de compra</th>
		<th>Monto Compra</th>
		<th>Pasajero o descripci&oacute;n</th>
	</tr>
	{DETALLE_MOVS} 
</table>

<h4>Cargos y Abonos del Mes en Curso</h4>

<table class="table" width="100%" cellpadding="0" cellspacing="0">
	<colgroup>
		<col width="25%">
		<col>
	</colgroup>
	<tr> 
		<th>Fecha</th>
		<th>Tipo</th>
		<th>Monto</th>
		<th>Motivo</th>
	</tr>
	{DETALLE_ABONOS} 
</table>

<p>
	<form method="POST" action="">
		<input type=hidden name=excel value="Y">
		<input type=submit value="Bajar a Excel" class="input-button" name="submitbutton">
	</form>
</p>
