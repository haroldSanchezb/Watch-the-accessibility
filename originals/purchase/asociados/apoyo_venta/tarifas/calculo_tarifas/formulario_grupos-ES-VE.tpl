<!--
AUTH: ASOCIADOS
-->

<div style="padding-top:15px;" class="warning-info" id="msg-op">
  <p>En esta secci&oacute;n puede realizar &uacute;nicamente solicitudes  de grupos que al menos tenga un tramo LAN. En el caso de itinerarios Mixtos (LAN y TAM), en esta secci&oacute;n recibiremos solicitudes s&oacute;lo si dentro del itinerario, el segmento de LAN es anterior al de TAM.<br />
  Para solicitudes de grupos con segmentos &uacute;nicamente de TAM o con itinerarios mixtos  TAM y LAN en donde el primer transportador  sea TAM, debe realizar su solicitud aTAM Group Desk: 58 212 9573611.</p>
</div>

<form name="formulario" method="POST" action='/cgi-bin/formulario/envia_formulario.cgi' onSubmit="return ValidacionFomulario(this)">

	<div>
		<input type='hidden' name='id_formulario' value='109'>

	</div>

	<h4>Datos Agencia</h4>

	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
           <col width="30%">
           <col>
	     <tr>
             <td class="sub-titulo">Nombre de Agencia</td>
             <td>{+ASOCIADOS_INFO('nombre_empresa')} <input type='hidden' name='agencia' value="{+ASOCIADOS_INFO('nombre_empresa')}"></td>
             </tr>

	     <tr>
             <td class="sub-titulo">C&oacute;digo IATA</td>
             <td>{+ASOCIADOS_INFO('iata')}<input type='hidden' name='iata' value="{+ASOCIADOS_INFO('iata')}"></td>
             </tr>

	     <tr>
             <td class="sub-titulo">Pais</td>
             <td>{+ASOCIADOS_INFO('pais')} <input type='hidden' name='pais' value="{+ASOCIADOS_INFO('pais')}"></td>
             </tr>
       </table>


 	 <h4>Datos Agente</h4>


	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col width="30%">
		<col>
		<tr>
		<td class="sub-titulo">Nombre Agente</td>
		<td>{+ASOCIADOS_INFO('nombre_agente')} <input type='hidden' name='agente' value="{+ASOCIADOS_INFO('nombre_agente')}"></td>
		</tr>
                
		<tr>
                <td class="sub-titulo">email</td>
                <td><input name="sender" type="text" id="fax" size="30" maxlength="250" value="{+ASOCIADOS_INFO('email')}">
		</td>
                </tr>
		

	</table>

	

	<h4>Tipo de Solicitud</h4>

	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
                <col width="30%">
                <col>

		
		<tr>
        	<td class="sub-titulo">Segmento</td>
        	<td>
                <select name="segmento" id="segmento" class="input-text">
                <option value="Etnico" selected>Etnico</option>
                <option value="Corporate">Corporate</option>
                <option value="Turismo">Turismo</option>
                </select>
        		</td>
        </tr>
        

        <tr>
               <td class="sub-titulo">Motivaci&oacute;n de Viaje</td>
                <td>
                                <select name="motivo" id="motivo" class="input-text">
                                        <option value="Relajacion" selected>Relajaci&oacute;n</option>
                                        <option value="NaturalezayDeporte">Naturaleza y Deporte</option>
                                        <option value="Aprendizaje">Aprendizaje</option>
                                </select></td>
        </tr>



        <tr>
                <td class="sub-titulo">Producto</td>
                <td>
                                <select name="producto" id="producto" class="input-text">
                                        <option value="" selected></option>

                                        <option value="Viaje_Negocio">Viaje de Negocios</option>
                                        <option value="Incentivo">Viaje Incentivo</option>
                                        <option value="Ferias">Ferias y Congresos</option>
                                        <option value="Cliente_Final">Beneficio para Cliente</option>
                                        <option value="Empleado">Beneficio para Empleados</option>

                </select></td>
        </tr>



		<tr>
                        <td class="sub-titulo">Empresa</td>
                        <td><input name="empresa" type="text" id="empresa" size="30" maxlength="250">
                </td>
		</tr>


	</table>


	<h4>Informaci&oacute;n Grupo</h4>

	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
                <col width="30%">
                <col>

		<tr>
                
		 <td class="sub-titulo">Nombre del Grupo</td>
                        <td><input name="nombre" type="text" id="nombre" size="30" maxlength="250">
(S&oacute;lo letras y sin espacios. Ej: ColegioViajeMiami)</td>
                        <td class="sub-titulo">Emisivo</td>
                        <td><input name="emisivo" type="radio" value="emisivo"></td>
                        <td class="sub-titulo">Receptivo</td>
                        <td><input name="emisivo" type="radio" value="receptivo"></td>


		</tr>

                <tr>
                        <td class="sub-titulo">Total Cantidad de Paxs</td>
                        <td><input name="cantidad" type="text" id="cantidad" size="5" maxlength="3">
                </td>
                </tr>
                <tr>
                        <td class="sub-titulo">Pax Adulto</td>
                        <td><input name="full" type="text" id="full" size="5" maxlength="3">
                </td>
                </tr>
                <tr>
                        <td class="sub-titulo">Pax Child</td>
                        <td><input name="child" type="text" id="child" size="5" maxlength="3">
                </td>
                </tr>
                <td class="sub-titulo">Cabina</td>
                <td>
                                <select name="cabina" id="cabina" class="input-text">
                                        <option value="Y" selected>Y</option>
                                        <option value="J">J</option>
                                </select>
                </td>
                </tr>
                <td class="sub-titulo">Fare Basis</td>
		<td><input name="full" type="text" id="full" size="10" maxlength="8">
                </td>
                </tr>
		
	</table>



	<h4>Segmento de Vuelo</h4>
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
			<th>Fecha Salida(dd/mm/aaaa)</th>
			<th>Origen</th>
			<th>Destino</th>
			<th>Clase</th>
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
	
	
	
		<td>
	<input name="carrier_9" type="text" id="carrier_9" size="10" maxlength="3">
	</td>
	
	<td>
    <input name="vuelo_9" type="text" id="vuelo_9" size="10" maxlength="4">
    </td>

	<td>
    <input name="fecha_9" type="text" id="fecha_9" size="15" maxlength="10">
    </td>
    
	<td>
    <input name="origen_9" type="text" id="origen_9" size="10" maxlength="3">
    </td>
    
	<td>
    <input name="destino_9" type="text" id="destino_9" size="10" maxlength="3">
    </td>
                        
    <td>
    <select name="clase_9" id="clase_9" class="input-text">
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
	<input name="carrier_10" type="text" id="carrier_10" size="10" maxlength="3">
	</td>
	
	<td>
    <input name="vuelo_10" type="text" id="vuelo_10" size="10" maxlength="4">
    </td>

	<td>
    <input name="fecha_10" type="text" id="fecha_10" size="15" maxlength="10">
    </td>
    
	<td>
    <input name="origen_10" type="text" id="origen_10" size="10" maxlength="3">
    </td>
    
	<td>
    <input name="destino_10" type="text" id="destino_10" size="10" maxlength="3">
    </td>
                        
    <td>
    <select name="clase_10" id="clase_10" class="input-text">
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



	<h4>Observaciones</h4>

	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<textarea name="descripcion" style="width: 575px;" cols="82" rows="5" id="descripcion"></textarea>
			</td>
		</tr>
	</table>
	<p><input type="submit" name="Submit" value="Enviar"></p>

</form>
