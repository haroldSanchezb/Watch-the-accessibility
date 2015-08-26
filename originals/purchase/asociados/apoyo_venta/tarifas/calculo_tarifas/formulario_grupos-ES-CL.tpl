<!--
AUTH: ASOCIADOS
-->
<div id="contenedor_paso1_asociados">
<div style="padding-top:15px;" class="warning-info" id="msg-op">
  <p>En esta secci&oacute;n puede realizar &uacute;nicamente solicitudes  de grupos que al menos tenga un tramo LAN. En el caso de itinerarios Mixtos (LAN y TAM), en esta secci&oacute;n recibiremos solicitudes s&oacute;lo si dentro del itinerario, el segmento de LAN es anterior al de TAM.<br />
  Para solicitudes de grupos con segmentos &uacute;nicamente de TAM o con itinerarios mixtos  TAM y LAN en donde el primer transportador  sea TAM, debe realizar su solicitud aTAM Group Desk: 56 2 4990225.</p>
</div>

<div class="content_tb_process">
<h2 style="width:770px; margin-left:auto; margin-right:auto">Solicitud de grupo</h2>
<div class="box_content_process" style="width:766px; margin-left:auto; margin-right:auto">
<div class="box_int_border_process">
<div class="center_content" style="width:600px">

<form name="formulario" method="POST" action='/cgi-bin/formulario/envia_formulario.cgi' onSubmit="return ValidacionFomulario(this)">

	<div>
		<input type='hidden' name='id_formulario' value='{_ID_FORMULARIO_GRUPOS}'>

	</div>



	<br>
<table class="tabla_form_proceso" width="600px" cellspacing="0" cellpadding="0">
           <col width="30%">
           <col>
           <tr><td colspan="2" class="encabezado_tabla_form_proceso">Datos Agencia</td></tr>
	     <tr>
             <td class="dato_tabla_form_proceso">Nombre de Agencia</td>
             <td class="campo_tabla_form_proceso">{+ASOCIADOS_INFO('nombre_empresa')} <input type='hidden' name='agencia' value="{+ASOCIADOS_INFO('nombre_empresa')}"></td>
             </tr>

	     <tr>
             <td class="dato_tabla_form_proceso">C&oacute;digo IATA</td>
             <td class="campo_tabla_form_proceso">{+ASOCIADOS_INFO('iata')}<input type='hidden' name='iata' value="{+ASOCIADOS_INFO('iata')}"></td>
             </tr>

	     <tr>
             <td class="dato_tabla_form_proceso">Pais</td>
             <td class="campo_tabla_form_proceso">{+ASOCIADOS_INFO('pais')} <input type='hidden' name='pais' value="{+ASOCIADOS_INFO('pais')}"></td>
             </tr>
       </table>




	<br>
<table class="tabla_form_proceso" width="600px" cellspacing="0" cellpadding="0">
		<col width="30%">
		<col>
        <tr><td colspan="2" class="encabezado_tabla_form_proceso">Datos Agente</td></tr>
		<tr>
		<td class="dato_tabla_form_proceso">Nombre Agente</td>
		<td class="campo_tabla_form_proceso">{+ASOCIADOS_INFO('nombre_agente')} <input type='hidden' name='agente' value="{+ASOCIADOS_INFO('nombre_agente')}"></td>
		</tr>
                
		<tr>
                <td class="dato_tabla_form_proceso">email</td>
                <td class="campo_tabla_form_proceso"><input name="sender" type="text" id="fax" size="30" maxlength="250" value="{+ASOCIADOS_INFO('email')}">
		</td>
        </tr>
		

	</table>


	<br>
<table class="tabla_form_proceso" width="600px" cellspacing="0" cellpadding="0">
                <col width="30%">
                <col>
<tr><td colspan="2" class="encabezado_tabla_form_proceso">Tipo de Solicitud</td></tr>
		
	<tr>
        	<td class="dato_tabla_form_proceso">Segmento</td>
        	<td class="campo_tabla_form_proceso">
                <select name="segmento" id="segmento" class="input-text">
                <option value="Etnico" selected>Etnico</option>
                <option value="Corporate">Corporate</option>
                <option value="Turismo">Turismo</option>
                </select>
        		</td>
        </tr>
        

        <tr>
               <td class="dato_tabla_form_proceso">Motivaci&oacute;n de Viaje</td>
                <td class="campo_tabla_form_proceso">
                                <select name="motivo" id="motivo" class="input-text">
                                        <option value="Relajacion" selected>Relajaci&oacute;n</option>
                                        <option value="NaturalezayDeporte">Naturaleza y Deporte</option>
                                        <option value="Aprendizaje">Aprendizaje</option>
                                </select></td>
        </tr>



        <tr>
                <td class="dato_tabla_form_proceso">Producto</td>
                <td class="campo_tabla_form_proceso">
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
                        <td class="dato_tabla_form_proceso">Empresa</td>
                        <td class="campo_tabla_form_proceso"><input name="empresa" type="text" id="empresa" size="30" maxlength="250">
                </td>
		</tr>


	</table>



	<br>
<table class="tabla_form_proceso" width="600px" cellspacing="0" cellpadding="0">
                <col width="30%">
                <col>
<tr><td colspan="2" class="encabezado_tabla_form_proceso">Informaci&oacute;n Grupo</td></tr>
		<tr>
			<td class="dato_tabla_form_proceso">Nombre del Grupo</td>
                        <td class="campo_tabla_form_proceso"><input name="nombre" type="text" id="nombre" size="30" maxlength="250">
                        (S&oacute;lo letras y sin espacios. Ej: ColegioViajeMiami)</td>
			<!--<td class="dato_tabla_form_proceso">Emisivo</td>
			<td class="campo_tabla_form_proceso"><input name="emisivo" type="radio" value="emisivo"></td>
			<td class="dato_tabla_form_proceso">Receptivo</td>
                        <td class="campo_tabla_form_proceso"><input name="emisivo" type="radio" value="receptivo"></td>-->
                </tr>

                <tr>
                        <td class="dato_tabla_form_proceso">Total Cantidad de Paxs</td>
                        <td class="campo_tabla_form_proceso"><input name="cantidad" type="text" id="cantidad" size="5" maxlength="3">
                </td>
                </tr>
                <tr>
                        <td class="dato_tabla_form_proceso">Pax Adulto</td>
                        <td class="campo_tabla_form_proceso"><input name="full" type="text" id="full" size="5" maxlength="3">
                </td>
                </tr>
                <tr>
                        <td class="dato_tabla_form_proceso">Pax Child</td>
                        <td class="campo_tabla_form_proceso"><input name="child" type="text" id="child" size="5" maxlength="3">
                </td>
                </tr>
                <td class="dato_tabla_form_proceso">Cabina</td>
                <td class="campo_tabla_form_proceso">
                                <select name="cabina" id="cabina" class="input-text">
                                        <option value="Y" selected>Y</option>
                                        <option value="J">J</option>
                                </select>
                </td>
                </tr>
                <td class="dato_tabla_form_proceso">Fare Basis</td>
		<td class="campo_tabla_form_proceso"><input name="farebasis" type="text" id="farebasis" size="8" maxlength="8">
                </td>
                </tr>
		
	</table>



	
	<br>
<table class="tabla_form_proceso" width="600px" cellspacing="0" cellpadding="0">
		<col width="10%">
		<col width="10%">
		<col width="10%">
		<col width="10%">
		<col width="10%">
		<col width="10%">
        
        <tr><td colspan="6" class="encabezado_tabla_form_proceso">Segmento de Vuelo</td></tr>
		<tr>

			<td class="dato_tabla_form_proceso">Carrier</td>
			<td class="dato_tabla_form_proceso">Nro.Vuelo</td>
			<td class="dato_tabla_form_proceso">Fecha Salida(dd/mm/aaaa)</td>
			<td class="dato_tabla_form_proceso">Origen</td>
			<td class="dato_tabla_form_proceso">Destino</td>
			<td class="dato_tabla_form_proceso">Clase</td>
		</tr>
	
<tr>
	<td class="campo_tabla_form_proceso" style="height:30px;">
	<input name="carrier_1" type="text" id="carrier_1" size="4" maxlength="3">
	</td>
	
	<td class="campo_tabla_form_proceso">
    <input name="vuelo_1" type="text" id="vuelo_1" size="4" maxlength="4">
    </td>

	<td class="campo_tabla_form_proceso">
    <input name="fecha_1" type="text" id="fecha_1" size="15" maxlength="10">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="origen_1" type="text" id="origen_1" size="10" maxlength="3">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="destino_1" type="text" id="destino_1" size="10" maxlength="3">
    </td>
                        
    <td class="campo_tabla_form_proceso">
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
	<td class="campo_tabla_form_proceso" style="height:30px;">
	<input name="carrier_2" type="text" id="carrier_2" size="4" maxlength="3">
	</td>
	
	<td class="campo_tabla_form_proceso">
    <input name="vuelo_2" type="text" id="vuelo_2" size="4" maxlength="4">
    </td>

	<td class="campo_tabla_form_proceso">
    <input name="fecha_2" type="text" id="fecha_2" size="15" maxlength="10">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="origen_2" type="text" id="origen_2" size="10" maxlength="3">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="destino_2" type="text" id="destino_2" size="10" maxlength="3">
    </td>
                        
    <td class="campo_tabla_form_proceso">
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
	<td class="campo_tabla_form_proceso" style="height:30px;">
	<input name="carrier_3" type="text" id="carrier_3" size="4" maxlength="3">
	</td>
	
	<td class="campo_tabla_form_proceso">
    <input name="vuelo_3" type="text" id="vuelo_3" size="4" maxlength="4">
    </td>

	<td class="campo_tabla_form_proceso">
    <input name="fecha_3" type="text" id="fecha_3" size="15" maxlength="10">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="origen_3" type="text" id="origen_3" size="10" maxlength="3">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="destino_3" type="text" id="destino_3" size="10" maxlength="3">
    </td>
                        
    <td class="campo_tabla_form_proceso">
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
	
	
	
	<td class="campo_tabla_form_proceso" style="height:30px;">
	<input name="carrier_4" type="text" id="carrier_4" size="4" maxlength="3">
	</td>
	
	<td class="campo_tabla_form_proceso">
    <input name="vuelo_4" type="text" id="vuelo_4" size="4" maxlength="4">
    </td>

	<td class="campo_tabla_form_proceso">
    <input name="fecha_4" type="text" id="fecha_4" size="15" maxlength="10">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="origen_4" type="text" id="origen_4" size="10" maxlength="3">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="destino_4" type="text" id="destino_4" size="10" maxlength="3">
    </td>
                        
    <td class="campo_tabla_form_proceso">
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
	
	
	<td class="campo_tabla_form_proceso" style="height:30px;">
	<input name="carrier_5" type="text" id="carrier_5" size="4" maxlength="3">
	</td>
	
	<td class="campo_tabla_form_proceso">
    <input name="vuelo_5" type="text" id="vuelo_5" size="4" maxlength="4">
    </td>

	<td class="campo_tabla_form_proceso">
    <input name="fecha_5" type="text" id="fecha_5" size="15" maxlength="10">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="origen_5" type="text" id="origen_5" size="10" maxlength="3">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="destino_5" type="text" id="destino_5" size="10" maxlength="3">
    </td>
                        
    <td class="campo_tabla_form_proceso">
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
	
	
	<td class="campo_tabla_form_proceso" style="height:30px;">
	<input name="carrier_6" type="text" id="carrier_6" size="4" maxlength="3">
	</td>
	
	<td class="campo_tabla_form_proceso">
    <input name="vuelo_6" type="text" id="vuelo_6" size="4" maxlength="4">
    </td>

	<td class="campo_tabla_form_proceso">
    <input name="fecha_6" type="text" id="fecha_6" size="15" maxlength="10">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="origen_6" type="text" id="origen_6" size="10" maxlength="3">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="destino_6" type="text" id="destino_6" size="10" maxlength="3">
    </td>
                        
    <td class="campo_tabla_form_proceso">
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
	
	
	
	<td class="campo_tabla_form_proceso" style="height:30px;">
	<input name="carrier_7" type="text" id="carrier_7" size="4" maxlength="3">
	</td>
	
	<td class="campo_tabla_form_proceso">
    <input name="vuelo_7" type="text" id="vuelo_7" size="4" maxlength="4">
    </td>

	<td class="campo_tabla_form_proceso">
    <input name="fecha_7" type="text" id="fecha_7" size="15" maxlength="10">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="origen_7" type="text" id="origen_7" size="10" maxlength="3">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="destino_7" type="text" id="destino_7" size="10" maxlength="3">
    </td>
                        
    <td class="campo_tabla_form_proceso">
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
	
	
	
		<td class="campo_tabla_form_proceso" style="height:30px;">
	<input name="carrier_8" type="text" id="carrier_8" size="4" maxlength="3">
	</td>
	
	<td class="campo_tabla_form_proceso">
    <input name="vuelo_8" type="text" id="vuelo_8" size="4" maxlength="4">
    </td>

	<td class="campo_tabla_form_proceso">
    <input name="fecha_8" type="text" id="fecha_8" size="15" maxlength="10">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="origen_8" type="text" id="origen_8" size="10" maxlength="3">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="destino_8" type="text" id="destino_8" size="10" maxlength="3">
    </td>
                        
    <td class="campo_tabla_form_proceso">
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
	
	
	
		<td class="campo_tabla_form_proceso" style="height:30px;">
	<input name="carrier_9" type="text" id="carrier_9" size="4" maxlength="3">
	</td>
	
	<td class="campo_tabla_form_proceso">
    <input name="vuelo_9" type="text" id="vuelo_9" size="4" maxlength="4">
    </td>

	<td class="campo_tabla_form_proceso">
    <input name="fecha_9" type="text" id="fecha_9" size="15" maxlength="10">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="origen_9" type="text" id="origen_9" size="10" maxlength="3">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="destino_9" type="text" id="destino_9" size="10" maxlength="3">
    </td>
                        
    <td class="campo_tabla_form_proceso">
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
	
	
	<td class="campo_tabla_form_proceso" style="height:30px;">
	<input name="carrier_10" type="text" id="carrier_10" size="4" maxlength="3">
	</td>
	
	<td class="campo_tabla_form_proceso">
    <input name="vuelo_10" type="text" id="vuelo_10" size="4" maxlength="4">
    </td>

	<td class="campo_tabla_form_proceso">
    <input name="fecha_10" type="text" id="fecha_10" size="15" maxlength="10">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="origen_10" type="text" id="origen_10" size="10" maxlength="3">
    </td>
    
	<td class="campo_tabla_form_proceso">
    <input name="destino_10" type="text" id="destino_10" size="10" maxlength="3">
    </td>
                        
    <td class="campo_tabla_form_proceso">
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



	

	<br>
<table class="tabla_form_proceso" width="600px" cellspacing="0" cellpadding="0">
    <tr><td  class="encabezado_tabla_form_proceso">Observaciones</td></tr>
		<tr>
			<td class="campo_tabla_form_proceso">
				<textarea name="descripcion" style="width: 575px;" cols="82" rows="5" id="descripcion"></textarea>
			</td>
		</tr>
	</table>
	<p><input type="submit" name="Submit" value="Enviar" class="button-page float_right"></p>

</form>
</div></div></div></div></div>