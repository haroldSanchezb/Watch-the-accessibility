<!--
AUTH: ASOCIADOS
-->


<form name="formulario" method="POST" action='/cgi-bin/formulario/envia_formulario.cgi' onSubmit="return ValidacionFomulario(this)">

	<div>

		<input type='hidden' name='id_formulario' value='109'>

	</div>


<h4>Informaci&oacute;n Agencia</h4>

	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col width="30%">
		<col>

 		<tr>
                        <td class="sub-titulo">Agencia</td>
                        <td>{+ASOCIADOS_INFO('nombre_empresa')} <input type='hidden' name='name_agency' value="{+ASOCIADOS_INFO('nombre_empresa')}"></td>
        
		 <td class="sub-titulo">C&oacute;digo IATA</td>
                 <td>{+ASOCIADOS_INFO('iata')}<input type='hidden' name='iata_rut_agency' value="{+ASOCIADOS_INFO('iata')}"></td>

		<td class="sub-titulo">Pais</td>
		<td>{+ASOCIADOS_INFO('pais')} <input type='hidden' name='country' value="{+ASOCIADOS_INFO('pais')}"></td>
		</tr>

 <h4>Agente</h4>


                <tr>
      		<td class="sub-titulo">Nombre Agente</td>
		<td>{+ASOCIADOS_INFO('nombre_agente')} <input type='hidden' name='name_axecutive' value="{+ASOCIADOS_INFO('nombre_agente')}"></td>
	
		 <td class="sub-titulo">email</td>
                 <td><input name="email_executive" type="text" id="fax" size="30" maxlength="250" value="{+ASOCIADOS_INFO('email')}"></td>	
	</tr>

</table>

<h4>Informaci&oacute;n Solicitud</h4>

<table>

		<tr>
			<td class="sub-titulo">Segmento</td>
			<td>{+ASOCIADOS_INFO('segmento')} <input type='hidden' name='segment' value="{+ASOCIADOS_INFO('segmento')}"></td>
		</tr>
                <tr>
                        <td class="sub-titulo">Producto</td>
                        <td>{+ASOCIADOS_INFO('producto')}<input type='hidden' name='product' value="{+ASOCIADOS_INFO('producto')}"></td>
                </tr>
		<tr>
		<td class="sub-titulo">Segmento</td>
                <td>
                                <select name="segment" id="segmento" class="input-text">
                                        <option value="aca van las opciones">aca van las opciones</option>
                                                      

                </select>
                </td>
                </tr>
                <tr>
                <td class="sub-titulo">Producto</td>
                <td>
                                <select name="product" id="producto" class="input-text">
                                        <option value="aca van las opciones" selected>aca van las opciones</option>
					
		</select></td>
		</tr>

</table>


<h4>Informaci&oacute;n del Grupo</h4>

<table>
		<tr>
                <td class="sub-titulo">Cantidad de Pasajeros</td>
                <td>
                                <select name="total_pax" id="pasajeros" class="input-text">
                                        <option value="aca van las opciones" selected>aca van las opciones</option>
                                       
                                </select>
                </td>
		</tr>


		<tr>
		<td class="sub-titulo">Cabina</td>
                <td>
                                <select name="cabina" id="cabina" class="input-text">
                                        <option value="aca van las opciones" selected>aca van las opciones</option>
                                </select>
                </td>
                </tr>


		<table>
					



		</table>


             

</table>
	<h4>Segmentos de Vuelo</h4>
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col width="10%">
		<col width="10%">
		<col width="10%">
		
		<tr>
			<th>Origen</th>
			<th>Destino</th>
			<th>Fecha Salida(dd/mm/aaaa)</th>
		</tr>
                        <td>        
			<input name="origen0" type="text" id="origen_0" size="10" maxlength="3">
                        </td>
                        <td>
                                <input name="destino0" type="text" id="destino_0" size="10" maxlength="3">
                        </td>
                        <td>
                                <input name="fecha0" type="text" id="fecha_0" size="15" maxlength="10">
                        </td>
			</tr>
                	<tr>
                        <td>
                                <input name="origen1" type="text" id="origen_1" size="10" maxlength="3">
                        </td>
                        <td>
                                <input name="destino1" type="text" id="destino_1" size="10" maxlength="3">
                        </td>
                        <td>
                                <input name="fecha1" type="text" id="fecha_4" size="15" maxlength="10">
                        </td>
                        </tr>
                

	
			<tr>
                        <td>
                                <input name="origen2" type="text" id="origen_2" size="10" maxlength="3">
                        </td>
                        <td>
                                <input name="destino2" type="text" id="destino_2" size="10" maxlength="3">
                        </td>
                        <td>
                                <input name="fecha2" type="text" id="fecha_2" size="15" maxlength="10">
                        </td>
			</tr>
                	<tr>
                        <td>
                                <input name="origen3" type="text" id="origen_3" size="10" maxlength="3">
                        </td>
                        <td>
                                <input name="destino3" type="text" id="destino_3" size="10" maxlength="3">
                        </td>
                        <td>
                                <input name="fecha3" type="text" id="fecha_3" size="15" maxlength="10">
                        </td>
			</tr>


		</table>


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
                        <td class="sub-titulo">transporta equipaje especial?</td>
                       
			 <td><input name="flag_special_baggage" type="radio" value="1"></td>
                         <td><input name="flag_special_baggage" type="radio" value="0"></td>  
                         <td><input name="detail_baggage" type="text" id="nombre" size="30" maxlength="250"></td>
                </tr>


		<tr>
                        <td class="sub-titulo">Requiere Comida  especial?</td>

                         <td><input name="flag_special_baggage" type="radio" value="1"></td>
                         <td><input name="flag_special_baggage" type="radio" value="0"></td>
                         <td><input name="detail_baggage" type="text" id="nombre" size="30" maxlength="250"></td>
                </tr>

		</table>


<h4>Requiere comida especial</h4>

		<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                        <td>
                                <textarea name="descripcion" style="width: 575px;" cols="82" rows="5" id="descripcion"></textarea>
                        </td>
                </tr>

		</table>

		<p><input type="submit" name="Submit" value="Enviar"></p>

       		<p><input type="submit" name="Submit" value="Salir"></p> <!--este boton es pura mascara-->



</form>
