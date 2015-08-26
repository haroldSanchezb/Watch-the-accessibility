
<h1>Buscar Compras LANCARD</h1>

<p>{ERROR}</p>

<form method=POST>
	<table class="table" cellspacing="0" cellpadding="0">
		<tr> 
			<td class="sub-titulo">N Tarjeta</td>
			<td><input type="text" class="input" name="numero_tarjeta" value="{TARJETA}"></td>
		</tr>
	</table>
	
	<p><input type="submit" name="Submit" class="input-button"  value="Buscar"></p>
</form>

<h4>Compras</h4>

<table class="table" width="100%" cellpadding="0" cellspacing="0">
	<tr> 
		<th>Rut</th>
		<th>C&oacute;digo Autoriz</th>
		<th colspan=2>Producto o Servicio</th>
		<th>Identificador o ruta</th>
		<th>Monto</th>
		<th>Cuotas</th>
		<th>Tasa</th>
		<th>Valor cuota</th>
		<th>&nbsp;</th>
	</tr>
	{DETALLE_MOV} 
</table>

<h4>Anulaciones</h4>

<table class="table" width="100%" cellpadding="0" cellspacing="0">
	<tr> 
		<th>Rut</th>
		<th>C&oacute;digo Autoriz</th>
		<th colspan=2>Producto o Servicio</th>
		<th>Identificador o ruta</th>
		<th>Monto</th>
		<th>Cuotas</th>
		<th>Tasa</th>
		<th>Valor cuota</th>
		<th>&nbsp;</th>
	</tr>
	{DETALLE_ANUL} 
</table>
