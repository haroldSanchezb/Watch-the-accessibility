<!--
AUTH: ASOCIADOS
-->


<form name="formulario" method="POST" action='/cgi-bin/formulario/envia_formulario.cgi' onSubmit="return ValidacionFomulario(this)">

	<div>
		<input type='hidden' name='id_formulario' value='134'>

	</div>

	<h2>Informaci&oacute;n agente</h2>

	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col width="30%">
		<col>
		<tr>
			<td class="sub-titulo">Agente</td>
			<td>{+ASOCIADOS_INFO('nombre_agente')}</td>
		</tr>
		<tr>
			<td class="sub-titulo">Agencia</td>
			<td>{+ASOCIADOS_INFO('nombre_empresa')}</td>
		</tr>
                <tr>
                        <td class="sub-titulo">C&oacute;digo IATA</td>
                        <td>{+ASOCIADOS_INFO('iata')}<input type='hidden' name='iata' value="{+ASOCIADOS_INFO('iata')}"></td>
                </tr>
		<tr>
			<td class="sub-titulo">Vendedor/Asistente solicitante</td>
			<td><input name="asistente" type="text" id="asistente" size="30" maxlength="250"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Email</td>
			<td><input name="sender" type="text" id="sender" size="30" maxlength="250"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Fono</td>
			<td><input name="telefono" type="text" id="telefono" size="30" maxlength="12"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Fax</td>
			<td><input name="fax" type="text" id="fax" size="30" maxlength="12"></td>
		</tr>
	</table>

	<h2>Pasajeros</h2>
	
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col>
		<col width="25%">
		<col width="25%">
		<col width="25%">
		<col width="25%">
		<col width="25%">
		<tr>
			<th>Rut</th>
			<th>Apellido</th>
			<th>Nombre</th>
			<th>Cod.Descuento</th>
			<th>Cabina</th>
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
		
<select  name="descuento_1" id="descuento_1" class="input-text">
                                        <option value="" selected></option>
                                        <option value="AD00">AD00</option>
                                        <option value="AD50">AD50</option>
                                        <option value="AD75">AD75</option>
					<option value="ADAGEN1">ADAGEN1</option>
					<option value="ADACON1">ADACON1</option> 					


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

<select  name="descuento_2" id="descuento_2" class="input-text">
                                        <option value="" selected></option>
                                        <option value="AD00">AD00</option>
                                        <option value="AD50">AD50</option>
                                        <option value="AD75">AD75</option>
					<option value="ADAGEN1">ADAGEN1</option>                                                                        <option value="ADACON1">ADACON1</option>
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
			

<select  name="descuento_3" id="descuento_3" class="input-text">
                                        <option value="" selected></option>
                                        <option value="AD00">AD00</option>
                                        <option value="AD50">AD50</option>
                                        <option value="AD75">AD75</option>
					<option value="ADAGEN1">ADAGEN1</option>                                                                        <option value="ADACON1">ADACON1</option>
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
			

<select  name="descuento_4" id="descuento_4" class="input-text">
                                        <option value="" selected></option>
                                        <option value="AD00">AD00</option>
                                        <option value="AD50">AD50</option>
                                        <option value="AD75">AD75</option>
					<option value="ADAGEN1">ADAGEN1</option>                                                                        <option value="ADACON1">ADACON1</option>
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
			
<select  name="descuento_5" id="descuento_5" class="input-text">
                                        <option value="" selected></option>
                                        <option value="AD00">AD00</option>
                                        <option value="AD50">AD50</option>
                                        <option value="AD75">AD75</option>
					<option value="ADAGEN1">ADAGEN1</option>                                                                        <option value="ADACON1">ADACON1</option>
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
			
<select  name="descuento_6" id="descuento_6" class="input-text">
                                        <option value="" selected></option>
                                        <option value="AD00">AD00</option>
                                        <option value="AD50">AD50</option>
                                        <option value="AD75">AD75</option>
					<option value="ADAGEN1">ADAGEN1</option>                                                                        <option value="ADACON1">ADACON1</option>
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


	<h2>Itinerario </h2>
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
			<th>Vuelo</th>
			<th>Fecha (dd/mm/aaaa)</th>
			<th>Origen</th>
			<th>Destino</th>
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

	<h2>Descripci&oacute;n</h2>
		
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<textarea name="descripcion" style="width: 575px;" cols="82" rows="5" id="descripcion"></textarea>
			</td>
		</tr>
	</table>
	<h2>Avisos importantes</h2>
	<p>Las solicitudes de AD's para agencias IATA deben ser realizadas con un m&iacute;nimo de 48 hrs de anticipaci&oacute;n a la fecha del vuelo.</p>
	<p>Al momento de la emisi&oacute;n deber&aacute; pagar impuestos y sobrecargos.</p>
	<p>Lan se reserva el derecho de confirmar las solicitudes de boletos con descuento solicitados.</p>
	<p><input type="submit" name="Submit" value="Enviar"></p>

</form>

