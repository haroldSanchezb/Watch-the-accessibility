<!--
AUTH: ASOCIADOS
-->


<form name="formulario" method="POST" action='/cgi-bin/formulario/envia_formulario.cgi'>

	<div>
		<input type='hidden' name='id_formulario' value='271'>
		<input type="hidden" name="target" value="{+ASOCIADOS_IS_TARGET}">
		<input type="hidden" name="fecha_primer_segmento" value="">
	</div>
	
	<h4>Informaci&oacute;n agente</h4>
	
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col width="30%">
		<col>
		<tr>
			<td class="sub-titulo">Agencia</td>
			<td>
                          <input name="agencia" type="hidden" value="{+ASOCIADOS_INFO('nombre_empresa')}">
                          {+ASOCIADOS_INFO('nombre_empresa')}
                        </td>
		</tr>
		<tr>
                        <td class="sub-titulo">C&oacute;digo IATA</td>
                        <td>{+ASOCIADOS_INFO('iata')}<input type='hidden' name='iata' value="{+ASOCIADOS_INFO('iata')}"></td>
                </tr>
		<tr>
			<td class="sub-titulo">Nombre Agente </td>
			<td>
                          <input name="nombre_agente" type="hidden" value="{+ASOCIADOS_INFO('nombre_agente')}">
                          {+ASOCIADOS_INFO('nombre_agente')}
                        </td>
		</tr>
		<tr>
			<td class="sub-titulo">Email</td>
			<td><input name="sender" type="text" id="sender" size="30" maxlength="250" value="{+ASOCIADOS_INFO('email')}"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Tel&eacute;fono</td>
			<td><input name="telefono" type="text" id="telefono" size="30" maxlength="20" value="{+ASOCIADOS_INFO('telefono')}"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Fax</td>
			<td><input name="fax" type="text" id="fax" size="30" maxlength="20" value="{+ASOCIADOS_INFO('fax')}"></td>
		</tr>
	</table>
	
	<h4>Tipo de requerimiento *</h4>
		
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<input name="tipo_requerimiento" type="radio" value="Cambio de fecha o de vuelo">
				Cambio de fecha o de vuelo
			</td>
		</tr>
		<tr>
			<td>
				<input name="tipo_requerimiento" type="radio" value="Modificar ruta original">
				Modificar ruta original
			</td>
		</tr>
		<tr>
			<td>
				<input name="tipo_requerimiento" type="radio" value="Diferencial de clases">
				Diferencial de clases
			</td>
		</tr>
		<tr>
			<td>
				<input name="tipo_requerimiento" type="radio" value="Dar en parte de pago tkt">
				Dar en parte de pago tkt
			</td>
		</tr>
		<tr>
			<td>
				<input name="tipo_requerimiento" type="radio" value="Valorizar tkt sin uso o parcialmente usado">
				Valorizar tkt sin uso o parcialmente usado
			</td>
		</tr>
		<tr>
			<td>
				<input name="tipo_requerimiento" type="radio" value="Extensi&oacute;n de validez">
				Extensi&oacute;n de validez
			</td>
		</tr>
	</table>
	
	<h4>Record Locator Sabre *</h4>
			
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
			<input name="pnr" type="text" id="pnr" size="7" maxlength="6">
			</td>
		</tr>
	</table>
	
			
	<h4>Tipo de pasajeros *</h4>
	
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col width="20%">
		<col width="20%">
		<col width="20%">
		<col width="20%">
		<col>
		<tr>
			<th>&nbsp;</th>
			<th>P</th>
			<th>J</th>
			<th>Y</th>
			<th>YSPCL</th>
		</tr>
		<tr>
			<td class="sub-titulo">Adulto</td>
			<td><input name="clase_adulto" type="radio" value="p"></td>
			<td><input name="clase_adulto" type="radio" value="j"></td>
			<td><input name="clase_adulto" type="radio" value="y"></td>
			<td><input name="clase_adulto" type="radio" value="YSPCL"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Child</td>
			<td><input name="clase_child" type="radio" value="p"></td>
			<td><input name="clase_child" type="radio" value="j"></td>
			<td><input name="clase_child" type="radio" value="y"></td>
			<td><input name="clase_child" type="radio" value="YSPCL"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Infant</td>
			<td><input name="clase_infant" type="radio" value="p"></td>
			<td><input name="clase_infant" type="radio" value="j"></td>
			<td><input name="clase_infant" type="radio" value="y"></td>
			<td><input name="clase_infant" type="radio" value="YSPCL"></td>
		</tr>
	</table>
	
	<h4>Tipo de ticket *</h4>
	
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<input type="radio" name="tipo_viaje" value="online">
        Ticket LAN 
        <input name="num_ticket1" type="text" class="input" id="num_ticket1" size="4" maxlength="3"> - <input name="num_ticket2" type="text" class="input" id="num_ticket2" size="5" maxlength="4"> - <input name="num_ticket3" type="text" class="input" id="num_ticket3" size="7" maxlength="6">
			</td>
		</tr>
		<tr>
			<td>
				<input type="radio" name="tipo_viaje" value="offline">
        Ticket otras c&iacute;as &nbsp;&nbsp;&nbsp;&nbsp;<strong>Nota:</strong> 
        enviar imagen digital del tkt o v&iacute;a fax al (56-2) 565 2853</td>
		</tr>
		<tr>
			<td>Utilizar formulario de fax <a href="formulario_fax.html">aqu&iacute;</a></td>
		</tr>
	</table>
	
	<h4>Descripci&oacute;n</h4>
	
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<textarea name="descripcion" style="width: 575px;" cols="85" rows="5" id="descripcion"></textarea>
			</td>
		</tr>
	</table>
		
	<h4>Ruta o itinerario *</h4>
		
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col width="20%">
		<col width="20%">
		<col width="20%">
		<col width="20%">
		<col>
		<tr>
			<th>O/X</th>
			<th>Ciudad</th>
			<th>Carrier</th>
			<th>Clase</th>
			<th>Fecha (dd/mm/aaaa)</th>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><input name="ciudad_1" type="text" id="ciudad_1" size="10"></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_2" id="select2" class="input">
					<option value="x" selected>conexi&oacute;n</option>
					<option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_2" type="text" id="ciudad_2" size="10">
			</td>
			<td>
				<input name="carrier_2" type="text" id="carrier_2" size="10">
			</td>
			<td>
				<input name="clase_2" type="text" id="clase_2" size="10">
			</td>
			<td>
				<input name="fecha_2" type="text" id="fecha_2" size="10">
			</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_3" id="select3" class="input">
					<option value="x" selected>conexi&oacute;n</option>
					<option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_3" type="text" id="ciudad_3" size="10">
			</td>
			<td>
				<input name="carrier_3" type="text" id="carrier_3" size="10">
			</td>
			<td>
				<input name="clase_3" type="text" id="clase_3" size="10">
			</td>
			<td>
				<input name="fecha_3" type="text" id="fecha_3" size="10">
			</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_4" id="select4" class="input">
					<option value="x" selected>conexi&oacute;n</option>
					<option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_4" type="text" id="ciudad_4" size="10">
			</td>
			<td>
				<input name="carrier_4" type="text" id="carrier_4" size="10">
			</td>
			<td>
				<input name="clase_4" type="text" id="clase_4" size="10">
			</td>
			<td>
				<input name="fecha_4" type="text" id="fecha_4" size="10">
			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_5" id="select5" class="input">
					<option value="x" selected>conexi&oacute;n</option>
					<option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_5" type="text" id="ciudad_5" size="10">
			</td>
			<td>
				<input name="carrier_5" type="text" id="carrier_5" size="10">
			</td>
			<td>
				<input name="clase_5" type="text" id="clase_5" size="10">
			</td>
			<td>
				<input name="fecha_5" type="text" id="fecha_5" size="10">
			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_6" id="select6" class="input">
					<option value="x" selected>conexi&oacute;n</option>
					<option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_6" type="text" id="ciudad_6" size="10">
			</td>
			<td>
				<input name="carrier_6" type="text" id="carrier_6" size="10">
			</td>
			<td>
				<input name="clase_6" type="text" id="clase_6" size="10">
			</td>
			<td>
				<input name="fecha_6" type="text" id="fecha_6" size="10">
			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_7" id="select7" class="input">
					<option value="x" selected>conexi&oacute;n</option>
					<option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_7" type="text" id="ciudad_7" size="10">
			</td>
			<td>
				<input name="carrier_7" type="text" id="carrier_7" size="10">
			</td>
			<td>
				<input name="clase_7" type="text" id="clase_7" size="10">
			</td>
			<td>
				<input name="fecha_7" type="text" id="fecha_7" size="10">
			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_8" id="select8" class="input">
					<option value="x" selected>conexi&oacute;n</option>
					<option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_8" type="text" id="ciudad_8" size="10">
			</td>
			<td>
				<input name="carrier_8" type="text" id="carrier_8" size="10">
			</td>
			<td>
				<input name="clase_8" type="text" id="clase_8" size="10">
			</td>
			<td>
				<input name="fecha_8" type="text" id="fecha_8" size="10">
			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_9" id="select9" class="input">
					<option value="x" selected>conexi&oacute;n</option>
					<option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_9" type="text" id="ciudad_9" size="10">
			</td>
			<td>
				<input name="carrier_9" type="text" id="carrier_9" size="10">
			</td>
			<td>
				<input name="clase_9" type="text" id="clase_9" size="10">
			</td>
			<td>
				<input name="fecha_9" type="text" id="fecha_9" size="10">
			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_10" id="select10" class="input">
					<option value="x" selected>conexi&oacute;n</option>
					<option value="o">stopover</option>
				</select>
			</td>
			<td>
				<input name="ciudad_10" type="text" id="ciudad_10" size="10">
			</td>
			<td>
				<input name="carrier_10" type="text" id="carrier_10" size="10">
			</td>
			<td>
				<input name="clase_10" type="text" id="clase_10" size="10">
			</td>
			<td>
				<input name="fecha_10" type="text" id="fecha_10" size="10">
			</td>
		</tr>		  
	</table>
		<p>* Estos campos son obligatorios.</p>
	<p><input type="button" name="Submit" value="Enviar" onclick="check_and_submit(this.form)"></p>

</form>

