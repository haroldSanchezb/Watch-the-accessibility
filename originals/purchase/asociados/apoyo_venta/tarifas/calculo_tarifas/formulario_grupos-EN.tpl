<!--
AUTH: ASOCIADOS
-->
<div style="padding-top:15px;" class="warning-info" id="msg-op">
  <p>In this section, only group requests that have at least one LAN leg can be made. For mixed itineraries (LAN and TAM), we&#39;ll only accept requests if, within the itinerary, the LAN leg comes before the TAM one.<br />
 For group requests that only have TAM legs or for mixed TAM and LAN itineraries where the first company used is TAM, please make your request through the TAM Group Desk on 305 477 5997.</p>
</div>


<script type="text/javascript">

function addSelectOption(selectId, value, display) {
 if (display == null) {
  display = value;
 }
    var anOption = document.createElement('option');
    anOption.value = value;
    anOption.innerHTML = display;
    document.getElementById(selectId).appendChild(anOption);
    return anOption;
}

function elegirSegmentoViaje(value)
{ 
 var select = document.getElementById("motivo");
select.remove(0);
select.remove(0);
select.remove(0);
select.remove(0);
select.remove(0);
select.remove(0);
select.remove(0);
select.remove(0);
if (value=="Tourism") 

        {
			addSelectOption("motivo", "Cruises", "Cruises")
			addSelectOption("motivo", "Sports", "Sports")
			addSelectOption("motivo", "Nature", "Nature") 
			addSelectOption("motivo", "Student", "Student")
			addSelectOption("motivo", "Niche", "Niche")
			}
if (value=="Etnico") 
        {
			addSelectOption("motivo", "-", "-")
			
			}
if (value=="Corporate") 
        {
			addSelectOption("motivo","Business Trips", "Business Trips")
			addSelectOption("motivo", "Trade Shows & Conventions", "Trade Shows & Conventions")
			addSelectOption("motivo", "Incentive Trips", "Incentive Trips")
			addSelectOption("motivo", "Benefit for Clients", "Benefit for Clients")
			addSelectOption("motivo", "Benefit for Employees", "Benefit for Employees")
	

	}
}
</script>





<form name="formulario" method="POST" action='/cgi-bin/formulario/envia_formulario.cgi' onSubmit="return ValidacionFomulario(this)">

	<div>

		<input type='hidden' name='id_formulario' value='128'>

	</div>

	<h4>Group</h4>

 <table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
                <col width="30%">
                <col>
                <tr>
                        <td class="sub-titulo">Travel Agent</td>
                        <td>{+ASOCIADOS_INFO('nombre_agente')} <input type='hidden' name='agente' value="{+ASOCIADOS_INFO('nombre_agente')}"></td>
                </tr>
                <tr>
                        <td class="sub-titulo">Travel Agency</td>
                        <td>{+ASOCIADOS_INFO('nombre_empresa')} <input type='hidden' name='agencia' value="{+ASOCIADOS_INFO('nombre_empresa')}"></td>
                </tr>
                <tr>
                        <td class="sub-titulo">City</td>
                        <td>{+ASOCIADOS_INFO('ciudad')} <input type='hidden' name='ciudad' value="{+ASOCIADOS_INFO('ciudad')}"></td>
                </tr>
                <tr>
                        <td class="sub-titulo">State</td>
                        <td>{+ASOCIADOS_INFO('comuna')} <input type='hidden' name='ciudad' value="{+ASOCIADOS_INFO('comuna')}"></td>
                </tr>
                <tr>
                        <td class="sub-titulo"> IATA Code </td>
                        <td>{+ASOCIADOS_INFO('iata')}<input type='hidden' name='iata' value="{+ASOCIADOS_INFO('iata')}"></td>
                </tr>
 <tr>
                        <td class="sub-titulo">e-mail</td>
                        <td><input name="sender" type="text" id="fax" size="30" maxlength="250" value="{+ASOCIADOS_INFO('email')}">
                </td>
                </tr>



		
	<tr>
        	<td class="sub-titulo">Segment</td>
        	<td>
                <select name="segmento" id="segmento" onChange="elegirSegmentoViaje(this.value);" class="input-text">
                <option value="Ethnic" selected>Ethnic</option>
                <option value="Corporate">Corporate</option>
                <option value="Tourism">Leisure</option>
                </select>
        		</td>
        </tr>
        

        <tr>
               <td class="sub-titulo">Purpose of travel</td>
                <td>
				<select name="motivo" id="motivo" class="input-text">
                                        <option value="" selected>-</option>
										<!--
										  <option value="NaturalezayDeporte">Sport and Nature</option>
                                        <option value="Aprendizaje">Learning</option>
                                        <option value="op3">op3</option>
                                        <option value="op4">op4</option>
                                        <option value="op5">op5</option>
                                        <option value="op6">op6</option>
                                        <option value="op7">op7</option>
                                      -->
								</select>
                                </td>
        </tr>



        <tr>
                
        </tr>




		<tr>
                        <td class="sub-titulo">Company</td>
                        <td><input name="empresa" type="text" id="empresa" size="30" maxlength="250">
                </td>
		</tr>


	</table>


	<h4>Group Information</h4>

	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
                <col width="30%">
                <col>

		<tr>
			<td class="sub-titulo">Group Name</td>
                        <td><input name="nombre" type="text" id="nombre" size="30" maxlength="250"></td>
			
                </tr>

                <tr>
                        <td class="sub-titulo">Total Paxs</td>
                        <td><input name="cantidad" type="text" id="cantidad" size="5" maxlength="3">
                </td>
                </tr>
                <tr>
                        <td class="sub-titulo">Adult Pax</td>
                        <td><input name="full" type="text" id="full" size="5" maxlength="3">
                </td>
                </tr>
                <tr>
                        <td class="sub-titulo">Child Pax</td>
                        <td><input name="child" type="text" id="child" size="5" maxlength="3">
                </td>
                </tr>
                <td class="sub-titulo">Cabin</td>
                <td>
                                <select name="cabina" id="cabina" class="input-text">
                                        <option value="Y" selected>Y</option>
                                        <option value="J">J</option>
                                </select>
                </td>
                </tr>
                
                </tr>
		
	</table>



	<h4>Itinerary</h4>
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col width="10%">
		<col width="10%">
		<col width="10%">
		<col width="10%">
		<col width="10%">
		<col width="10%">
		<tr>

			<th>Carrier</th>
			<th>Flight Number</th>
			<th>Departure Date<br>
			  (dd/mm/yyyy)<br>
			  Ex:23/02/2009</th>
			<th>Origin</th>
			<th>Destination</th>
			<th>Class</th>
		</tr>
	
<tr>
	<td>
	<input name="carrier_1" type="text" id="carrier_1" size="10" maxlength="3">
	</td>
	
	<td>
    <input name="vuelo_1" type="text" id="vuelo_1" size="10" maxlength="4">
    </td>

	<td>
    <input name="fecha_1" type="text" id="fecha_1" size="15" maxlength="10">
    </td>
    
	<td>
    <input name="origen_1" type="text" id="origen_1" size="10" maxlength="3">
    </td>
    
	<td>
    <input name="destino_1" type="text" id="destino_1" size="10" maxlength="3">
    </td>
                        
    <td>
    <select name="clase_1" id="clase_1" class="input-text">
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
	<input name="carrier_2" type="text" id="carrier_2" size="10" maxlength="3">
	</td>
	
	<td>
    <input name="vuelo_2" type="text" id="vuelo_2" size="10" maxlength="4">
    </td>

	<td>
    <input name="fecha_2" type="text" id="fecha_2" size="15" maxlength="10">
    </td>
    
	<td>
    <input name="origen_2" type="text" id="origen_2" size="10" maxlength="3">
    </td>
    
	<td>
    <input name="destino_2" type="text" id="destino_2" size="10" maxlength="3">
    </td>
                        
    <td>
    <select name="clase_2" id="clase_2" class="input-text">
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
	<input name="carrier_3" type="text" id="carrier_3" size="10" maxlength="3">
	</td>
	
	<td>
    <input name="vuelo_3" type="text" id="vuelo_3" size="10" maxlength="4">
    </td>

	<td>
    <input name="fecha_3" type="text" id="fecha_3" size="15" maxlength="10">
    </td>
    
	<td>
    <input name="origen_3" type="text" id="origen_3" size="10" maxlength="3">
    </td>
    
	<td>
    <input name="destino_3" type="text" id="destino_3" size="10" maxlength="3">
    </td>
                        
    <td>
    <select name="clase_3" id="clase_3" class="input-text">
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
	
	
	
	<td>
	<input name="carrier_4" type="text" id="carrier_4" size="10" maxlength="3">
	</td>
	
	<td>
    <input name="vuelo_4" type="text" id="vuelo_4" size="10" maxlength="4">
    </td>

	<td>
    <input name="fecha_4" type="text" id="fecha_4" size="15" maxlength="10">
    </td>
    
	<td>
    <input name="origen_4" type="text" id="origen_4" size="10" maxlength="3">
    </td>
    
	<td>
    <input name="destino_4" type="text" id="destino_4" size="10" maxlength="3">
    </td>
                        
    <td>
    <select name="clase_4" id="clase_4" class="input-text">
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
	
	
	<td>
	<input name="carrier_5" type="text" id="carrier_5" size="10" maxlength="3">
	</td>
	
	<td>
    <input name="vuelo_5" type="text" id="vuelo_5" size="10" maxlength="4">
    </td>

	<td>
    <input name="fecha_5" type="text" id="fecha_5" size="15" maxlength="10">
    </td>
    
	<td>
    <input name="origen_5" type="text" id="origen_5" size="10" maxlength="3">
    </td>
    
	<td>
    <input name="destino_5" type="text" id="destino_5" size="10" maxlength="3">
    </td>
                        
    <td>
    <select name="clase_5" id="clase_5" class="input-text">
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
	
	
	<td>
	<input name="carrier_6" type="text" id="carrier_6" size="10" maxlength="3">
	</td>
	
	<td>
    <input name="vuelo_6" type="text" id="vuelo_6" size="10" maxlength="4">
    </td>

	<td>
    <input name="fecha_6" type="text" id="fecha_6" size="15" maxlength="10">
    </td>
    
	<td>
    <input name="origen_6" type="text" id="origen_6" size="10" maxlength="3">
    </td>
    
	<td>
    <input name="destino_6" type="text" id="destino_6" size="10" maxlength="3">
    </td>
                        
    <td>
    <select name="clase_6" id="clase_6" class="input-text">
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
	
	
	
	<td>
	<input name="carrier_7" type="text" id="carrier_7" size="10" maxlength="3">
	</td>
	
	<td>
    <input name="vuelo_7" type="text" id="vuelo_7" size="10" maxlength="4">
    </td>

	<td>
    <input name="fecha_7" type="text" id="fecha_7" size="15" maxlength="10">
    </td>
    
	<td>
    <input name="origen_7" type="text" id="origen_7" size="10" maxlength="3">
    </td>
    
	<td>
    <input name="destino_7" type="text" id="destino_7" size="10" maxlength="3">
    </td>
                        
    <td>
    <select name="clase_7" id="clase_7" class="input-text">
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
	
	
	
		<td>
	<input name="carrier_8" type="text" id="carrier_8" size="10" maxlength="3">
	</td>
	
	<td>
    <input name="vuelo_8" type="text" id="vuelo_8" size="10" maxlength="4">
    </td>

	<td>
    <input name="fecha_8" type="text" id="fecha_8" size="15" maxlength="10">
    </td>
    
	<td>
    <input name="origen_8" type="text" id="origen_8" size="10" maxlength="3">
    </td>
    
	<td>
    <input name="destino_8" type="text" id="destino_8" size="10" maxlength="3">
    </td>
                        
    <td>
    <select name="clase_8" id="clase_8" class="input-text">
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

    </tr>





	</table>



	<h4>Description</h4>

	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<textarea name="descripcion" style="width: 575px;" cols="82" rows="5" id="descripcion"></textarea>
			</td>
		</tr>
	</table>
	<p><input type="submit" name="Submit" value="Send"></p>

</form>

