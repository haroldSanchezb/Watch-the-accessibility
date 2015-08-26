<!--
AUTH: ASOCIADOS
-->

<form name="formulario" method="POST" action='/cgi-bin/formulario/envia_formulario.cgi'>

	<div>

		<input type='hidden' name='id_formulario' value='127'>
		<input type="hidden" name="target" value="{+ASOCIADOS_IS_TARGET}">	
		<input type="hidden" name="fecha_primer_segmento" value="">	
                <input type="hidden" name="ciudad_agencia" value="{+ASOCIADOS_INFO('ciudad')}">
                <input type="hidden" name="pais_agencia" value="{+ASOCIADOS_INFO('country_iso')}">
	</div>
	

	<h4>Travel Agent Information</h4>

	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col width="30%">
		<col>
		<tr>
			<td class="sub-titulo">Travel Agency</td>
			<td><input name="agencia" type="hidden" id="agencia" value="{+ASOCIADOS_INFO('nombre_empresa')}">{+ASOCIADOS_INFO('nombre_empresa')}</td>
		</tr>
		<tr>
                        <td class="sub-titulo">IATA code </td>
                        <td>{+ASOCIADOS_INFO('iata')}<input type='hidden' name='iata' value="{+ASOCIADOS_INFO('iata')}"></td>
      </tr>
		<tr>
			<td class="sub-titulo">Travel Agent Name </td>
			<td>
                          <input name="nombre_agente" type="hidden" id="nombre_agente" value="{+ASOCIADOS_INFO('nombre_agente')}" >
                          <input name="login_agente" type="hidden" value="{+LOGIN}" >
                          {+ASOCIADOS_INFO('nombre_agente')}
          </td>
		</tr>
		<tr>
			<td class="sub-titulo">E-mail</td>
			<td><input name="sender" type="text" id="sender" size="30" maxlength="250" value="{+ASOCIADOS_INFO('email')}"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Phone Number </td>
			<td><input name="telefono" type="text" id="telefono" size="30" maxlength="12" value="{+ASOCIADOS_INFO('telefono')}"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Fax Number </td>
			<td><input name="fax" type="text" id="fax" size="30" maxlength="12" value="{+ASOCIADOS_INFO('fax')}"></td>
		</tr>
	</table>
	
	<h4>Record Locator Sabre </h4>
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td><input name="pnr" type="text" id="pnr" size="7" maxlength="6"></td>
		</tr>
	</table>
	
	<h4>Passengers</h4>
		
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
                <col>
                <col width="24%">
                <col width="24%">
                <col width="24%">
                
                <tr>
                        <th>&nbsp;</th>
                        <th>First</th>
                        <th>Business</th>
                        <th>Economy</th>
                        
                </tr>
                <tr>
                        <td class="sub-titulo">Adult</td>
                        <td><input name="clase_adulto" type="radio" value="First"></td>
                        <td><input name="clase_adulto" type="radio" value="Business"></td>
                        <td><input name="clase_adulto" type="radio" value="Economy"></td>
                       
                </tr>
                <tr>
                        <td class="sub-titulo">Child</td>
                        <td><input name="clase_child" type="radio" value="First"></td>
                        <td><input name="clase_child" type="radio" value="Business"></td>
                        <td><input name="clase_child" type="radio" value="Economy"></td>
                        
                </tr>
                <tr>
                        <td class="sub-titulo">Infant</td>
                        <td><input name="clase_infant" type="radio" value="First"></td>
                        <td><input name="clase_infant" type="radio" value="Business"></td>
                        <td><input name="clase_infant" type="radio" value="Economy"></td>
                        
                </tr>
  </table>
	
	<h4>Request Type</h4>
 		<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">		
				<tr>
      <td class="sub-titulo">Group*<br /></td>
       <td ><input name="clase_solicitud" type="radio" value="Grupo"></td>        
          </tr>

				<tr>
       <td class="sub-titulo">Single</td>
       <td><input name="clase_solicitud" type="radio" value="Individual"></td>        
                </tr>
  </table>
  <p class="nota">* Groups for flight more than 9 passengers. Once your fare quote has been received, please request your group through mundolan.com<br />
    <br />
  </p>
	
  <h4>Description</h4>
		
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<textarea name="descripcion" style="width: 575px;" cols="82" rows="5" id="descripcion"></textarea>
			</td>
		</tr>
	</table>
	
	<h4>Route or itinerary</h4>
	
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col>
		<col width="18%">
		<col width="18%">
		<col width="18%">
		<col width="18%">
		<tr>
			<th>O/X</th>
			<th>City</th>
			<th>Carrier</th>
			<th>Class</th>
			<th>Date (yyyy/mm/dd)<br>
		    Ex: 2009/02/24 </th>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><input name="ciudad_1" type="text" id="ciudad_1" size="10" maxlength="3"></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_2" id="select2" class="input-text">
					<option value="x" selected>connecting flight</option>
					<option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_2" type="text" id="ciudad_2" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_2" type="text" id="carrier_2" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_2" type="text" id="clase_2" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_2" type="text" id="fecha_2" size="10" maxlength="10">
			</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_3" id="select3" class="input-text">
					<option value="x" selected>connecting flight</option>
					<option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_3" type="text" id="ciudad_3" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_3" type="text" id="carrier_3" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_3" type="text" id="clase_3" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_3" type="text" id="fecha_3" size="10" maxlength="10">
			</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_4" id="select4" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_4" type="text" id="ciudad_4" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_4" type="text" id="carrier_4" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_4" type="text" id="clase_4" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_4" type="text" id="fecha_4" size="10" maxlength="10">
			</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_5" id="select5" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_5" type="text" id="ciudad_5" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_5" type="text" id="carrier_5" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_5" type="text" id="clase_5" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_5" type="text" id="fecha_5" size="10" maxlength="10">
			</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_6" id="select6" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_6" type="text" id="ciudad_6" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_6" type="text" id="carrier_6" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_6" type="text" id="clase_6" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_6" type="text" id="fecha_6" size="10" maxlength="10">
			</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_7" id="select7" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_7" type="text" id="ciudad_7" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_7" type="text" id="carrier_7" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_7" type="text" id="clase_7" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_7" type="text" id="fecha_7" size="10" maxlength="10">
			</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_8" id="select8" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_8" type="text" id="ciudad_8" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_8" type="text" id="carrier_8" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_8" type="text" id="clase_8" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_8" type="text" id="fecha_8" size="10" maxlength="10">
			</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_9" id="select9" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_9" type="text" id="ciudad_9" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_9" type="text" id="carrier_9" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_9" type="text" id="clase_9" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_9" type="text" id="fecha_9" size="10" maxlength="10">
			</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_10" id="select10" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_10" type="text" id="ciudad_10" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_10" type="text" id="carrier_10" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_10" type="text" id="clase_10" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_10" type="text" id="fecha_10" size="10" maxlength="10">
			</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_11" id="select11" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_11" type="text" id="ciudad_11" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_11" type="text" id="carrier_11" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_11" type="text" id="clase_11" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_11" type="text" id="fecha_11" size="10" maxlength="10">
			</td>
		</tr>				  
		<tr>
			<td>
				<select name="tipo_12" id="select12" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_12" type="text" id="ciudad_12" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_12" type="text" id="carrier_12" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_12" type="text" id="clase_12" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_12" type="text" id="fecha_12" size="10" maxlength="10">
			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_13" id="select13" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_13" type="text" id="ciudad_13" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_13" type="text" id="carrier_13" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_13" type="text" id="clase_13" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_13" type="text" id="fecha_13" size="10" maxlength="10">
			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_14" id="select14" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_14" type="text" id="ciudad_14" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_14" type="text" id="carrier_14" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_14" type="text" id="clase_14" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_14" type="text" id="fecha_14" size="10" maxlength="10">
			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_15" id="select15" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_15" type="text" id="ciudad_15" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_15" type="text" id="carrier_15" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_15" type="text" id="clase_15" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_15" type="text" id="fecha_15" size="10" maxlength="10">
			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_16" id="select16" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_16" type="text" id="ciudad_16" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_16" type="text" id="carrier_16" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_16" type="text" id="clase_16" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_16" type="text" id="fecha_16" size="10" maxlength="10">
			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_17" id="select17" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_17" type="text" id="ciudad_17" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_17" type="text" id="carrier_17" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_17" type="text" id="clase_17" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_17" type="text" id="fecha_17" size="10" maxlength="10">
			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_18" id="select18" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_18" type="text" id="ciudad_18" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_18" type="text" id="carrier_18" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_18" type="text" id="clase_18" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_18" type="text" id="fecha_18" size="10" maxlength="10">
			</td>
		</tr>			
		<tr>
			<td>
				<select name="tipo_19" id="select19" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_19" type="text" id="ciudad_19" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_19" type="text" id="carrier_19" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_19" type="text" id="clase_19" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_19" type="text" id="fecha_19" size="10" maxlength="10">
			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_20" id="select20" class="input-text">
					<option value="x" selected>connecting flight</option><option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_20" type="text" id="ciudad_20" size="10" maxlength="3">
			</td>
			<td>
				<input name="carrier_20" type="text" id="carrier_20" size="10" maxlength="2">
			</td>
			<td>
				<input name="clase_20" type="text" id="clase_20" size="10" maxlength="1">
			</td>
			<td>
				<input name="fecha_20" type="text" id="fecha_20" size="10" maxlength="10">
			</td>
		</tr>		  
	</table>
	
	<p> If you are making a request for a surface route, please enter "X" on the following fields: City<strong> XXX</strong>, Carrier <strong>XX</strong> and Class<strong>X</strong></p>
  <p><input type="button" name="Submit" value="Send" onclick='check_and_submit(this.form)'>
	</p>
	
	<p><strong>THIS FARE REQUEST IS ONLY FOR PUBLISHED FARES.<br />
</strong><strong>FARES ARE SUBJECT TO CHANGE. <br />
	  BOOKINGS AVAILABLE ONLY FOR SINGLE FARES.</strong></p>
</form>	
