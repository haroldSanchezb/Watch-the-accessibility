<script type="text/javascript">
function pre_submit()
	{
	//window.open("","comprobante","toolbar=no,scrollbars=yes,width=600,height=600");
	document.theForm.submit();
	return true;
	}

function nueva_transaccion()
	{
	window.location="/cgi-bin/asociados/lancard/venta_lancard.cgi";
	return true;
	}

</script>

<h1>Confirme Transacci&oacute;n</h1>

<table width="96%" border="0" cellspacing="0" cellpadding="0">
	<colgroup>
		<col width="40%">
		<col>
	</colgroup>
	<tr> 
		<td class="sub-titulo">Fecha Compra</td>
		<td>{FECHA}</td>
	</tr>
	<tr> 
		<td class="sub-titulo">N Tarjeta</td>
		<td>{N_TARJETA}</td>
	</tr>
	<tr> 
		<td class="sub-titulo">RUT Portador</td>
		<td>{RUT_PORTADOR}</td>
	</tr>
	<tr> 
		<td class="sub-titulo">RUT Empresa</td>
		<td>{RUT_EMPRESA}</td>
	</tr>
	<tr> 
		<td class="sub-titulo">Tipo Compra</td>
		<td>{TIPO_COMPRA_TEXT}</td>
	</tr>
	<tr> 
		<td class="sub-titulo">Monto Compra</td>
		<td>{MONTO_TEXT}</td>
	</tr>
	<tr> 
		<td class="sub-titulo">Cuotas</td>
		<td>{CUOTAS}</td>
	</tr>
	<tr> 
		<td class="sub-titulo">Monto Cuotas</td>
		<td>{VALOR_CUOTAS}</td>
	</tr>
	<tr> 
		<td class="sub-titulo">Meses de Gracia</td>
		<td>{GRACIA}</td>
	</tr>
	<tr> 
		<td class="sub-titulo">Primer Vencimiento</td>
		<td>{PRIMER_VENCIMIENTO}</td>
	</tr>
	<tr> 
		<td class="sub-titulo">Tasa Inter&eacute;s</td>
		<td>{TASA_INTERES}</td>
	</tr>
	<tr> 
		<td class="sub-titulo">Producto o Servicio</td>
		<td>{PRODUCTO_TEXT}</td>
	</tr>
	<tr> 
		<td class="sub-titulo">Identificador o Ruta</td>
		<td>{RUTA}</td>
	</tr>
	<tr> 
		<td class="sub-titulo">Nombre Pasajero</td>
		<td>{PAX}</td>
	</tr>
</table>

<form method=POST name=theForm>
	<input type=hidden name="numero_tarjeta" value="{N_TARJETA}">
	<input type=hidden name="rut_portador" value="{RUT_PORTADOR}">
	<input type=hidden name="rut_empresa" value="{RUT_EMPRESA}">
	<input type=hidden name="tipo_compra" value="{TIPO_COMPRA}">
	<input type=hidden name="monto" value="{MONTO}">
	<input type=hidden name="cuotas" value="{CUOTAS}">
	<input type=hidden name="gracia" value="{GRACIA}">
	<input type=hidden name="producto" value="{PRODUCTO}">
	<input type=hidden name="ruta" value="{RUTA}">
	<input type=hidden name="pax" value="{PAX}">
	<input type=hidden name="accion" value="resultado">
	<p>
	<input type=button value="Confirmar Transacci&oacute;n" onClick="return pre_submit();" name="confirma">&nbsp;
	<input type=button value="Nueva Transacci&oacute;n" onClick="return nueva_transaccion();" name="nueva">
	</p>
</form>

<h4>Detalle Cuotas</h4>

<table class="table" width="100%" cellpadding="0" cellspacing="0">
	<colgroup span="4" width="25%"></colgroup>
	<tr> 
		<th>Cuota N</th>
		<th>Capital cuota</th>
		<th>Inter&eacute;s cuota</th>
		<th>Fecha vencimiento</th>
	</tr>
	{DESARROLLO_CUOTAS} 
</table>
