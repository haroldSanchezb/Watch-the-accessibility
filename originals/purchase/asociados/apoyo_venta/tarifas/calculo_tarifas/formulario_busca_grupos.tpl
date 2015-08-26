<!--
AUTH: ASOCIADOS
-->

<form name="formulario" method="POST" action='/cgi-bin/asociados/formularios_grupos.cgi' onSubmit="return ValidacionFomulario(this)">

<input type="hidden" name="form_name" value="find_quotation_by_id">
<input type='hidden' name='iata_code_agency' value="{+ASOCIADOS_INFO('iata')}">

<h4>Numero Cotizaci&oacute;n</h4>

<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
	<col width="30%">
	<col width="60%">

	<tr>
    	<td class="sub-titulo">Numero Cotizaci&oacute;n</td>
		<td>{+ASOCIADOS_INFO('numero_cotizacion')} <input type='text' name='id_quotation' value=""></td>
		<td><input type="submit" name="Submit" value="Buscar"></td>
	</tr>
</table>
</form>

<br>
<br>

<form name="formulario" method="POST" action='/cgi-bin/asociados/formularios_grupos.cgi' onSubmit="return ValidacionFomulario(this)">

<input type="hidden" name="form_name" value="find_quotation_by_od_date">
<input type='hidden' name='iata_code_agency' value="{+ASOCIADOS_INFO('iata')}">

<h4>Origen Destino</h4> 

<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
	<col width="30%">
	<col width="30%">
	<col width="30%">
		
	<tr>
		<th>Origen</th>
		<th>Destino</th>
		<th>Fecha Salida(dd-mm-aaaa)</th>
	</tr>
	<tr>
		<td>        
			<input name="origin" type="text" size="10" maxlength="3">
		</td>
        <td>
        	<input name="destination" type="text" size="10" maxlength="3">
        </td>
        <td>
            <input name="departure_date" type="text" size="15" maxlength="10">
        </td>
		<td><input type="submit" name="Submit" value="Buscar"></td>
	</tr>

</table>
</form>

<br>
<br>
