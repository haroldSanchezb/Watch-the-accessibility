<!--
AUTH: ASOCIADOS
-->

<form name="formulario" method="POST" action='/cgi-bin/asociados/formularios_grupos.cgi' onSubmit="/*return ValidacionFomulario(this);*/">

<input type="hidden" name="form_name" value="create_request_mundolan">


<h4>Informaci&oacute;n Agencia</h4>

<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>

<tr>
<td class="sub-titulo">Nombre Agencia</td>
<td>{+ASOCIADOS_INFO('nombre_empresa')} 
<input type='hidden' name='name_agency' value="{+ASOCIADOS_INFO('nombre_empresa')}">
<input type='hidden' name='country' value="{+ASOCIADOS_INFO('country_iso')}">
</td>
</tr>

<tr>
<td class="sub-titulo">IATA Agencia</td>
<td>{+ASOCIADOS_INFO('iata')}<input type='hidden' name='iata_rut_agency' value="{+ASOCIADOS_INFO('iata')}"></td>
</tr>
</table>
<br>
<br>

<h4>Agente Viaje</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>

<tr>
<td class="sub-titulo">Agente</td>
<td>{+ASOCIADOS_INFO('nombre_agente')} 
<input type='hidden' name='name_executive' value="{+ASOCIADOS_INFO('nombre_agente')}">
<input type='hidden' name='rut_executive' value="{+ASOCIADOS_INFO('rut_agente')}">
</td>
</tr>
<tr>
<td class="sub-titulo">email</td>
<td><input name="email_executive" type="text" size="30" maxlength="250" value="{+ASOCIADOS_INFO('email')}"></td>
</tr>
</table>
<br>
<br>

<h4>Tipo Solicitud</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>

<tr>
<td class="sub-titulo">Segmento</td>
<td>
<select name="segment" class="input-text">
<option value="" selected></option>
<option value="Corporate">Corporate</option>
<option value="Etnico">Etnico</option>
<option value="Turismo">Turismo</option>
</select>
</td>
</tr>
<tr>
<td class="sub-titulo">Motivaci&oacute;n de Viaje</td>
<td>
<select name="travel_reason" class="input-text">
<option value="" selected></option>
<option value="Naturaleza_y_Deporte">Naturaleza y Deporte</option>
<option value="Relajacion">Relajaci&oacute;n</option>
<option value="Aprendizaje">Aprendizaje</option>
</select>
</td>
</tr>
<tr>
<td class="sub-titulo">Producto</td>
<td>
<select name="product" class="input-text">
<option value="" selected></option>
<option value="Grupo_Negocio">Viaje de Negocios</option>
<option value="Incentivo">Viaje Incentivo</option>
<option value="Ferias">Ferias y Congresos</option>
<option value="Cliente_Final">Beneficio Cliente</option>
<option value="Empleado">Beneficio Empleados</option>

</select></td>
</tr>
<tr>
<td class="sub-titulo">Empresa</td>
<td><input name="company" type="text" size="30" maxlength="250">
</td>
</tr>

</table>
<br>
<br>

<h4>Informaci&oacute;n del Grupo</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>

<tr>
<td class="sub-titulo">Nombre del Grupo</td>
<td><input name="group_name" type="text" size="30" maxlength="250">
</td>
</tr>


<tr>
<td class="sub-titulo">Tipo</td>
<td>
<select name="type_pax" class="input-text">
<option value="E" selected>Emisivo</option>
<option value="R">Receptivo</option>
</select>
</td>
</tr>


<tr>
<td class="sub-titulo">Cantidad de Pasajeros</td>
<td><input name="total_pax" type="text" size="5" maxlength="3" value="0">
</td>
</tr>

<tr>
<td class="sub-titulo">Cabina</td>
<td>
<select name="compartment" class="input-text">
<option value="Y" selected>Y</option>
<option value="J">J</option>
</select>
</td>
</tr>

<tr>
<td class="sub-titulo">PNR Sabre Original</td>
<td><input name="pnr_original" type="text" size="5" maxlength="3">
</td>
</tr>


<tr>
<td class="sub-titulo">Pasajeros Adultos</td>
<td><input name="pax_full_fare" type="text" size="5" maxlength="3" value="0">
</td>
</tr>
<tr>
<td class="sub-titulo">Pasajeros Child</td>
<td><input name="pax_child" type="text" size="5" maxlength="3" value="0">
</td>
</tr>

<tr>
<td class="sub-titulo">Tarifa TRG</td>
<td><input name="fare_neta" type="text" size="30" maxlength="250">
</td>
</tr>

<tr>
<td class="sub-titulo">Fare Basis</td>
<td><input name="fare_basis" type="text" size="30" maxlength="250">
</td>
</tr>

</table>

<br>
<br>

<h4>Segmentos de Vuelo</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="10%">
<col width="10%">
<col width="10%">
<col width="10%">
<col width="10%">
<col width="10%">
<tr>

<th>Carrier</th>
<th>Nro.Vuelo</th>
<th>Fecha Salida(dd-mm-aaaa)</th>
<th>Origen</th>
<th>Destino</th>
<th>Clase</th>
</tr>

<tr>

<td>
<input name="carrier0" type="text" size="10" maxlength="3">
</td>


<td>
<input name="flight_number0" type="text" size="10" maxlength="4">
</td>

<td>
<input name="departure_date0" type="text" size="15" maxlength="10">
</td>


<td>
<input name="origin0" type="text" size="10" maxlength="3">
</td>
<td>
<input name="destination0" type="text" size="10" maxlength="3">
</td>
<td>
<select name="booking_class0" class="input-text">
<option value="Y" selected>Y</option>
<option value="J">J</option>
<option value="D">D</option>
<option value="B">B</option>
<option value="H">H</option>
<option value="K">K</option>
<option value="M">M</option>
<option value="L">L</option>
<option value="V">V</option>
<option value="S">S</option>
<option value="N">N</option>
<option value="Q">Q</option>
<option value="O">O</option>
<option value="G">G</option>
</select>
</td>
</tr>

<tr>

<td>
<input name="carrier1" type="text" size="10" maxlength="3">
</td>


<td>
<input name="flight_number1" type="text" size="10" maxlength="4">
</td>

<td>
<input name="departure_date1" type="text" size="15" maxlength="10">
</td>


<td>
<input name="origin1" type="text" size="10" maxlength="3">
</td>
<td>
<input name="destination1" type="text" size="10" maxlength="3">
</td>
<td>
<select name="booking_class1" class="input-text">
<option value="Y" selected>Y</option>
<option value="J">J</option>
<option value="D">D</option>
<option value="B">B</option>
<option value="H">H</option>
<option value="K">K</option>
<option value="M">M</option>
<option value="L">L</option>
<option value="V">V</option>
<option value="S">S</option>
<option value="N">N</option>
<option value="Q">Q</option>
<option value="O">O</option>
<option value="G">G</option>
</select>
</td>
</tr>
</table>

<br>
<br>

<h4>Informaci&oacute;n  Complementaria</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col>
<col width="24%">
<col width="20%">
<col width="20%">

<tr>
<th>&nbsp;</th>
<th>SI</th>
<th>NO</th>
</tr>

<tr>
<td class="sub-titulo">Es posible dividir el Grupo?</td>
<td><input name="flag_divide_group" type="radio" value="1" checked></td>
<td><input name="flag_divide_group" type="radio" value="0"></td>

</tr>

<tr>
<td class="sub-titulo">Acepta Alternativas?</td>
<td><input name="flag_accept_alternative" type="radio" value="1" checked></td>
<td><input name="flag_accept_alternative" type="radio" value="0"></td>

</tr>

<tr><td>&nbsp;</td></tr>

<tr>
<td class="sub-titulo">El Grupo transporta equipaje especial?</td>
<td><input name="flag_special_baggage" type="radio" value="1"></td>
<td><input name="flag_special_baggage" type="radio" value="0" checked></td>

</tr>
<tr>
<td class="sub-titulo">Cual?</td>
<td><input name="detail_baggage" type="text" size="30" maxlength="250">
</td>
</tr>

</table>

<p><input type="submit" name="Submit" value="Enviar"></p>

</form>
