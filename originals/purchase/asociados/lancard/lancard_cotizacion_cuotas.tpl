
<script type="text/javascript">
function limpiar ()
	{
	cotiza.numero_tarjeta.value = "";
	cotiza.monto.value = "";
	cotiza.cuotas.value = "";
	}
</script>

<h1>Cotizaci&oacute;n Cuotas LANCARD</h1>

{RESULTADO}

<form name=cotiza method=POST>
	<table class="table" width="100%" cellspacing="0" cellpadding="0">
		<tr> 
			<td class="sub-titulo">N Tarjeta</td>
			<td><input type="text" class="input" name="numero_tarjeta" value="{TARJETA}"></td>
		</tr>
		<tr> 
			<td class="sub-titulo">Monto</td>
			<td><input type="text" class="input" name="monto" value="{MONTO}"></td>
		</tr>
		<tr> 
			<td class="sub-titulo">N Cuotas</td>
			<td><input type="text" size=2 class="input" name="cuotas" value="{CUOTAS}"></td>
		</tr>
		<tr> 
			<td class="sub-titulo">Tipo de Compra</td>
			<td> 
				<select name="tipo_compra">
					{TIPO_COMPRA}
				</select>
			</td>
		</tr>
		<tr> 
			<td class="sub-titulo">Meses de gracia</td>
			<td> 
				<select name="meses_gracia">
					{MESES_GRACIA}
				</select>
			</td>
		</tr>
	</table>
	
	<p><input type="submit" name="Submit" value="Cotizar">&nbsp;<input type="button" class="input-button"  value="Limpiar" onClick='return limpiar();'></p>
	
</form>
