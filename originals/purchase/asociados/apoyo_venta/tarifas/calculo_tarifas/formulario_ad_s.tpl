<!--
AUTH: ASOCIADOS
-->


<form name="formulario" method="POST" action='/cgi-bin/formulario/envia_formulario.cgi' onSubmit="return ValidacionFomulario(this)">

	<div>
		<input type='hidden' name='id_formulario' value='132'>

	</div>

	<h2>Travel Agent information<br />
	</h2><br />

  <p>REQUEST MUST BE SENT AT LEAST 10 DAYS PRIOR TO DEPARTURE</p>

	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col width="30%">
		<col>
		<tr>
			<td class="sub-titulo">Travel Agent</td>
			<td>{+ASOCIADOS_INFO('nombre_agente')}</td>
		</tr>
		<tr>
			<td class="sub-titulo">Travel Agency</td>
			<td>{+ASOCIADOS_INFO('nombre_empresa')}</td>
		</tr>
		<tr>
			<td class="sub-titulo">Salesperson / Assistant petitioner</td>
			<td><input name="asistente" type="text" id="asistente" size="30" maxlength="250"></td>
		</tr>
		<tr>
			<td class="sub-titulo">E-mail</td>
			<td><input name="sender" type="text" id="sender" size="30" maxlength="250"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Phone number</td>
			<td><input name="telefono" type="text" id="telefono" size="30" maxlength="10"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Fax number</td>
			<td><input name="fax" type="text" id="fax" size="30" maxlength="10"></td>
		</tr>
	</table>

	<h2>Passengers</h2>
	
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col>
		<col width="25%">
		<col width="25%">
		<col width="25%">
		<col width="25%">
		<col width="25%">
		<tr>
			<th>Passport number</th>
			<th>Last name</th>
			<th>First name</th>
			<th>Discount code</th>
			<th>Cabin</th>
		</tr>

		<tr>
			<td>
				<input name="rut_1" type="text" id="rut_1" size="15" maxlength="15">
			</td>
			<td>
				<input name="apellido_1" type="text" id="apellido_1" size="20" maxlength="20">
			</td>
			<td>
				<input name="nombre_1" type="text" id="nombre_1" size="20" maxlength="20">
			</td>
			<td>
				<select name="descuento_1"  id="descuento_1" class="input-text">
				<option value="" selected></option>
				  <option value="75">AD75</option>
				  <option value="90">AD90</option>
				  <option value="00">AD00</option>
				</select>
			</td>
			<td>
				<select name="cabina_1" id="cabina_1" class="input-text">
					<option value="" selected></option>
					<option value="Y">Economy</option>
					<option value="J">Business</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				<input name="rut_2" type="text" id="rut_2" size="15" maxlength="15">
			</td>
			<td>
				<input name="apellido_2" type="text" id="apellido_2" size="20" maxlength="20">
			</td>
			<td>
				<input name="nombre_2" type="text" id="nombre_2" size="20" maxlength="20">
			</td>
			<td>
				<select name="descuento_2"  id="descuento_2" class="input-text">
				<option value="" selected></option>
				  <option value="75">AD75</option>
				  <option value="90">AD90</option>
				  <option value="00">AD00</option>
				</select>
			</td>
			<td>
				<select name="cabina_2" id="cabina_2" class="input-text">
					<option value="" selected></option>
					<option value="Y">Economy</option>
					<option value="J">Business</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				<input name="rut_3" type="text" id="rut_3" size="15" maxlength="15">
			</td>
			<td>
				<input name="apellido_3" type="text" id="apellido_3" size="20" maxlength="20">
			</td>
			<td>
				<input name="nombre_3" type="text" id="nombre_3" size="20" maxlength="20">
			</td>
			<td>
				<select name="descuento_3"  id="descuento_3" class="input-text">
				<option value="" selected></option>
				  <option value="75">AD75</option>
				  <option value="90">AD90</option>
				  <option value="00">AD00</option>
				</select>
			</td>
			<td>
				<select name="cabina_3" id="cabina_3" class="input-text">
					<option value="" selected></option>
					<option value="Y">Economy</option>
					<option value="J">Business</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				<input name="rut_4" type="text" id="rut_4" size="15" maxlength="15">
			</td>
			<td>
				<input name="apellido_4" type="text" id="apellido_4" size="20" maxlength="20">
			</td>
			<td>
				<input name="nombre_4" type="text" id="nombre_4" size="20" maxlength="20">
			</td>
			<td>
				<select name="descuento_4"  id="descuento_4" class="input-text">
				<option value="" selected></option>
				  <option value="75">AD75</option>
				  <option value="90">AD90</option>
				  <option value="00">AD00</option>
				</select>
			</td>
			<td>
				<select name="cabina_4" id="cabina_4" class="input-text">
					<option value="" selected></option>
					<option value="Y">Economy</option>
					<option value="J">Business</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				<input name="rut_5" type="text" id="rut_5" size="15" maxlength="15">
			</td>
			<td>
				<input name="apellido_5" type="text" id="apellido_5" size="20" maxlength="20">
			</td>
			<td>
				<input name="nombre_5" type="text" id="nombre_5" size="20" maxlength="20">
			</td>
			<td>
				<select name="descuento_5"  id="descuento_5" class="input-text">
				<option value="" selected></option>
				  <option value="75">AD75</option>
				  <option value="90">AD90</option>
				  <option value="00">AD00</option>
				</select>
			</td>
			<td>
				<select name="cabina_5" id="cabina_5" class="input-text">
					<option value="" selected></option>
					<option value="Y">Economy</option>
					<option value="J">Business</option>
				</select>
			</td>
		</tr>
			<td>
				<input name="rut_6" type="text" id="rut_6" size="15" maxlength="15">
			</td>
			<td>
				<input name="apellido_6" type="text" id="apellido_6" size="20" maxlength="20">
			</td>
			<td>
				<input name="nombre_6" type="text" id="nombre_6" size="20" maxlength="20">
			</td>
			<td>
				<select name="descuento_6"  id="descuento_6" class="input-text">
				<option value="" selected></option>
				  <option value="75">AD75</option>
				  <option value="90">AD90</option>
				  <option value="00">AD00</option>
				</select>
			</td>
			<td>
				<select name="cabina_6" id="cabina_6" class="input-text">
					<option value="" selected></option>
					<option value="Y">Economy</option>
					<option value="J">Business</option>
				</select>
			</td>
		</tr>
	</table>


	<h2>Itinerary </h2>
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col>
		<col width="10%">
		<col width="10%">
		<col width="10%">
		<col width="10%">
		<col width="10%">
		<col width="10%">
		<col width="10%">
		<tr>
			<th>PNR</th>
			<th>Carrier</th>
			<th>Flight</th>
			<th>Date (dd/mm/yyyy)</th>
			<th>Origin</th>
			<th>Destination</th>
			<th>Fare basis</th>
		</tr>
		<tr>
			<td>
				<input name="pnr_1" type="text" id="pnr_1" size="7" maxlength="6">
			</td>
			<td>
				<input name="carrier_1" type="text" id="carrier_1" size="10" maxlength="3">
			</td>
			<td>
				<input name="vuelo_1" type="text" id="vuelo_1" size="10" maxlength="4">
			</td>
			<td>
				<input name="fecha_1" type="text" id="fecha_1" size="10" maxlength="10">
			</td>
			<td>
				<input name="origen_1" type="text" id="origen_1" size="10" maxlength="3">
			</td>
			<td>
				<input name="destino_1" type="text" id="destino_1" size="10" maxlength="3">
			</td>
			<td>
				<input name="fare_1" type="text" id="fare_1" size="10" maxlength="10">
			</td>
		</tr>
		<tr>
			<td>
				<input name="pnr_2" type="text" id="pnr_2" size="7" maxlength="6">
			</td>
			<td>
				<input name="carrier_2" type="text" id="carrier_2" size="10" maxlength="3">
			</td>
			<td>
				<input name="vuelo_2" type="text" id="vuelo_2" size="10" maxlength="4">
			</td>
			<td>
				<input name="fecha_2" type="text" id="fecha_2" size="10" maxlength="10">
			</td>
			<td>
				<input name="origen_2" type="text" id="origen_2" size="10" maxlength="3">
			</td>
			<td>
				<input name="destino_2" type="text" id="destino_2" size="10" maxlength="3">
			</td>
			<td>
				<input name="fare_2" type="text" id="fare_2" size="10" maxlength="10">
			</td>
		</tr>
		<tr>
			<td>
				<input name="pnr_3" type="text" id="pnr_3" size="7" maxlength="6">
			</td>
			<td>
				<input name="carrier_3" type="text" id="carrier_3" size="10" maxlength="3">
			</td>
			<td>
				<input name="vuelo_3" type="text" id="vuelo_3" size="10" maxlength="4">
			</td>
			<td>
				<input name="fecha_3" type="text" id="fecha_3" size="10" maxlength="10">
			</td>
			<td>
				<input name="origen_3" type="text" id="origen_3" size="10" maxlength="3">
			</td>
			<td>
				<input name="destino_3" type="text" id="destino_3" size="10" maxlength="3">
			</td>
			<td>
				<input name="fare_3" type="text" id="fare_3" size="10" maxlength="10">
			</td>
		</tr>
		<tr>
			<td>
				<input name="pnr_4" type="text" id="pnr_4" size="7" maxlength="6">
			</td>
			<td>
				<input name="carrier_4" type="text" id="carrier_4" size="10" maxlength="3">
			</td>
			<td>
				<input name="vuelo_4" type="text" id="vuelo_4" size="10" maxlength="4">
			</td>
			<td>
				<input name="fecha_4" type="text" id="fecha_4" size="10" maxlength="10">
			</td>
			<td>
				<input name="origen_4" type="text" id="origen_4" size="10" maxlength="3">
			</td>
			<td>
				<input name="destino_4" type="text" id="destino_4" size="10" maxlength="3">
			</td>
			<td>
				<input name="fare_4" type="text" id="fare_4" size="10" maxlength="10">
			</td>
		</tr>
	</table>

	<h2>Description</h2>
		
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<textarea name="descripcion" style="width: 575px;" cols="82" rows="5" id="descripcion"></textarea>
			</td>
		</tr>
	</table>
	<h2>Important notices</h2>
	<p>Request for ADs for IATA agencies must be issued a minimum of 48 hours before the travel date.</p>
	<p>Taxes and surcharges must be paid upon issuance.</p>
	<p>LAN reserves the right to confirm the requests for requested  discounted tickets. </p>
	<p>Please be sure to consult BLACKOUT DATES when you make your request or before selecting your travel dates and note that all AD reservations are 
standby, space available unless otherwise stated:</p>
<ul>
<li>Official letter from travel agency owner/manager requesting discount benefit as well </li>
<li>Agency's IATA list of employees</li></ul>
<p>Once your request has been approved and confirmed, please send your Credit Card Authorization Form to your LAN Sales Suppport Executive to process payment and issue tickets.</p>
  <p><input type="submit" name="Submit" value="Submit"></p>

</form>

