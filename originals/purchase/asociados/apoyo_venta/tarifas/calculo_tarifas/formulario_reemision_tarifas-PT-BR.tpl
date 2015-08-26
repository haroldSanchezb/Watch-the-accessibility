<!--
AUTH: ASOCIADOS
-->

<p>Prezado agente, todas as informa&ccedil;&otilde;es sobre tarifas est&atilde;o disponibilizadas nos sistemas de . Para oferecer sempre a melhor op&ccedil;&atilde;o aos nossos clientes e facilitar os processos das vendas, desenvolvemos esta ferramenta exclusiva para que possam esclarecer eventuais d&uacute;vidas sobre reemiss&otilde;es atrav&eacute;s de nosso departamento especializado.<br />
  <br />
<a href="http://www.lan.com/asociados/apoyo_venta/tarifas/calculo_tarifas/procedimiento_solicitud.html">Clique aqui</a> para conhecer nossa pol&iacute;tica para solicita&ccedil;&otilde;es e tempos de resposta.<br /><br /></p>

<h4>Importante:</h4>
<ul><li>Informamos exclusivamente sobre reemiss&otilde;es para tarifas com 3 ou mais pontos.</li>
<li>N&atilde;o visualizamos disponibilidade. O agente deve informar para qual classe deseja consultar o c&aacute;lculo.</li>
<li>As regulamenta&ccedil;&otilde;es de tarifas devem ser obtidas diretamente atrav&eacute;s de seu sistema.</li>
<li>Todos os campos devem ser preenchidos.  Caso tenha d&uacute;vidas, <a href="http://www.lan.com/asociados/apoyo_venta/tarifas/calculo_tarifas/procedimiento_solicitud.html">clique aqui</a> para obter instru&ccedil;&otilde;es.</li>
</ul>
<br /><br /><br />


<form name="formulario" method="POST" action='/cgi-bin/formulario/envia_formulario.cgi'>

	<div>
		<input type='hidden' name='id_formulario' value='9'>
		<input type="hidden" name="target" value="{+ASOCIADOS_IS_TARGET}">
		<input type="hidden" name="fecha_primer_segmento" value="">
		<input type="hidden" name="ciudad_agencia" value="{+ASOCIADOS_INFO('ciudad')}">
                <input type="hidden" name="pais_agencia" value="{+ASOCIADOS_INFO('country_iso')}">
	</div>
	
	<h4>Informa&ccedil;&atilde;o do agente</h4>
   
	
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col width="30%">
		<col>
		<tr>
			<td class="sub-titulo">Ag&ecirc;ncia </td>
			<td>
                          <input name="agencia" type="hidden" value="{+ASOCIADOS_INFO('nombre_empresa')}">
                          {+ASOCIADOS_INFO('nombre_empresa')}
                        </td>
		</tr>
		<tr>
                        <td id= selected class="sub-titulo">C&oacute;digo IATA</td>
                        <td>{+ASOCIADOS_INFO('iata')}<input type='hidden' name='iata' value="{+ASOCIADOS_INFO('iata')}"></td>
                </tr>
		<tr>
			 <td class="sub-titulo">Tipo de Ag&ecirc;ncia</td>
			 <td>
                         <select name='tipo_agencia'>
 	                <option value='Seleccione Aqui'selected>Selecione Aqui</option>
			<option value='BSP'>BSP</option>
                      	<option value='NO BSP'>NO BSP</option>
                         </select>
			</td>



                </tr>
		<tr>
			<td class="sub-titulo">Nome do Agente</td>
			<td>
                          <input name="nombre_agente" type="hidden" value="{+ASOCIADOS_INFO('nombre_agente')}">
                          {+ASOCIADOS_INFO('nombre_agente')}
                        </td>
		</tr>
		<tr>
			<td class="sub-titulo">E-mail</td>
			<td><input name="sender" type="text" id="sender" size="30" maxlength="250" value="{+ASOCIADOS_INFO('email')}"> </td>
		</tr>
		<tr>
			<td class="sub-titulo">Fone</td>
			<td><input name="telefono" type="text" id="telefono" size="30" maxlength="20" value="{+ASOCIADOS_INFO('telefono')}"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Fax</td>
			<td><input name="fax" type="text" id="fax" size="30" maxlength="20" value="{+ASOCIADOS_INFO('fax')}"></td>
		</tr>
	</table>
	
	<h4>Tipo de requerimento</h4>
		
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<input name="tipo_requerimiento" type="radio" value="Cambio de fecha o de vuelo">
				Mudan&ccedil;a de data ou de voo 
			</td>
		</tr>
		<tr>
			<td>
				<input name="tipo_requerimiento" type="radio" value="Modificar ruta original">
				Modificar rota original
			</td>
		</tr>
        		<tr>
			<td>
			  <input name="tipo_requerimiento" type="radio" value="Diferencia de clases">
				Diferen&ccedil;a de classes			</td>
		</tr>
        		<tr>
			<td>
				<input name="tipo_requerimiento" type="radio" value="Utilizar tkt como forma de pago">
				Utilizar tkt como forma de pagamento</td>
		</tr>
        		<tr>
			<td>
				<input name="tipo_requerimiento" type="radio" value="Valorizar tkt no utilizado o parcialmente utilizado">
				Valorizar tkt n&atilde;o utilizado ou parcialmente utilizado</td>
		</tr>
        		<tr>
			<td>
				<input name="tipo_requerimiento" type="radio" value="Extension de validacion">
				Extens&atilde;o de validade</td>
		</tr>
		
		
	</table>
	
	<h4>Localizador Sabre</h4>
			
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
           
			<input name="pnr" type="text" id="pnr" size="7" maxlength="6">			 (o c&oacute;digo Sabre &eacute; composto por 6 letras. Exemplo: XYZABC)</td>
		</tr>
	</table>
	
			
	<h4>Tipo de passageiros</h4>
	
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col width="20%">
		<col width="20%">

<col>
		<tr>
			<th>&nbsp;</th>
			<th>Business</th>
			<th>Economy</th>
			
		</tr>
		<tr>
			<td class="sub-titulo">Adulto</td>
			<td><input name="clase_adulto" type="radio" value="p" checked="checked"></td>
			<td><input name="clase_adulto" type="radio" value="j"></td>
			
		</tr>
		<tr>
			<td class="sub-titulo">Child</td>
			<td><input name="clase_child" type="radio" value="p"></td>
			<td><input name="clase_child" type="radio" value="j"></td>

		</tr>
		<tr>
			<td class="sub-titulo">Infant</td>
			<td><input name="clase_infant" type="radio" value="p"></td>
			<td><input name="clase_infant" type="radio" value="j"></td>

		</tr>
	</table>
	
	<h4>Tipo de bilhete</h4>
	
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<input type="radio" name="tipo_viaje" value="online">
				Bilhete LAN <input name="num_ticket1" type="text" class="input" id="num_ticket1" size="4" maxlength="3"> - <input name="num_ticket2" type="text" class="input" id="num_ticket2" size="5" maxlength="4"> - <input name="num_ticket3" type="text" class="input" id="num_ticket3" size="7" maxlength="6">
			</td>
		</tr>
		<tr>
			<td>
				<input type="radio" name="tipo_viaje" value="offline">
				Bilhete de outras cias &nbsp;&nbsp;&nbsp;&nbsp;<!-- <strong>Nota:</strong>
				enviar imagem digital do tkt ou c&oacute;pia via fax ao 00xx 562 565 28 53 (Santiago, Chile)-->
		  </td>
		</tr>
		<!--<tr>
			<td>Utilizar formul&aacute;rio de fax <a href="formulario_fax.html">aqui</a></td>
		</tr>-->
	</table>
	
	<h4>Descri&ccedil;&atilde;o</h4>

	
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
                <p>(informa&ccedil;&otilde;es adicionais e account code, caso corresponda. Caso n&atilde;o saiba qual a classe tarif&aacute;ria aplic&aacute;vel, indique as classes dispon&iacute;veis no voo desejado)</p>
			  <textarea name="descripcion" style="width: 575px;" cols="85" rows="5" id="descripcion"></textarea>
			</td>
	  </tr>
	</table>
		
	<h4>Rota ou itiner&aacute;rio</h4>
    

		
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">


		<col width="20%">
        <col width="20%">
		<col width="20%">
		<col width="20%">
		<col width="20%">
		<col>
		<tr>
		  <td colspan="5"><p>(Indique a classe dispon&iacute;vel. Em caso de trecho surface,  selecione no menu &agrave; esquerda e preencha os campos Cidade, Carrier e Classe com &ldquo;x&rdquo;)</p></td>
	  </tr>
		<tr>
			<th>O/X</th>
			<th>Cidade</th>
			<th>Carrier</th>
			<th>Classe</th>
			<th>Data (dd/mm/aaaa)</th>
		</tr>
		<tr>
			<td>&nbsp;</td>
            
			<td>
            <input name="ciudad_1" type="text" id="ciudad_1" size="10"></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_2" id="select2" class="input">
					<option value="x" selected>conex&atilde;o</option>
					<option value="o">stopover</option>
				</select>			</td>
			<td>
				<input name="ciudad_2" type="text" id="ciudad_2" size="10">			</td>
			<td>
				<input name="carrier_2" type="text" id="carrier_2" size="10">			</td>
			<td>
				<input name="clase_2" type="text" id="clase_2" size="10">			</td>
			<td>
				<input name="fecha_2" type="text" id="fecha_2" size="10">			</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_3" id="select3" class="input">
					<option value="x" selected>conex&atilde;o</option>
					<option value="o">stopover</option>
				</select>			</td>
			<td>
				<input name="ciudad_3" type="text" id="ciudad_3" size="10">			</td>
			<td>
				<input name="carrier_3" type="text" id="carrier_3" size="10">			</td>
			<td>
				<input name="clase_3" type="text" id="clase_3" size="10">			</td>
			<td>
				<input name="fecha_3" type="text" id="fecha_3" size="10">			</td>
		</tr>
		<tr>
			<td>
				<select name="tipo_4" id="select4" class="input">
					<option value="x" selected>conex&atilde;o</option>
					<option value="o">stopover</option>
				</select>			</td>
			<td>
				<input name="ciudad_4" type="text" id="ciudad_4" size="10">			</td>
			<td>
				<input name="carrier_4" type="text" id="carrier_4" size="10">			</td>
			<td>
				<input name="clase_4" type="text" id="clase_4" size="10">			</td>
			<td>
				<input name="fecha_4" type="text" id="fecha_4" size="10">			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_5" id="select5" class="input">
					<option value="x" selected>conex&atilde;o</option>
					<option value="o">stopover</option>
				</select>			</td>
			<td>
				<input name="ciudad_5" type="text" id="ciudad_5" size="10">			</td>
			<td>
				<input name="carrier_5" type="text" id="carrier_5" size="10">			</td>
			<td>
				<input name="clase_5" type="text" id="clase_5" size="10">			</td>
			<td>
				<input name="fecha_5" type="text" id="fecha_5" size="10">			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_6" id="select6" class="input">
					<option value="x" selected>conex&atilde;o</option>
					<option value="o">stopover</option>
				</select>			</td>
			<td>
				<input name="ciudad_6" type="text" id="ciudad_6" size="10">			</td>
			<td>
				<input name="carrier_6" type="text" id="carrier_6" size="10">			</td>
			<td>
				<input name="clase_6" type="text" id="clase_6" size="10">			</td>
			<td>
				<input name="fecha_6" type="text" id="fecha_6" size="10">			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_7" id="select7" class="input">
					<option value="x" selected>conex&atilde;o</option>
					<option value="o">stopover</option>
				</select>			</td>
			<td>
				<input name="ciudad_7" type="text" id="ciudad_7" size="10">			</td>
			<td>
				<input name="carrier_7" type="text" id="carrier_7" size="10">			</td>
			<td>
				<input name="clase_7" type="text" id="clase_7" size="10">			</td>
			<td>
				<input name="fecha_7" type="text" id="fecha_7" size="10">			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_8" id="select8" class="input">
					<option value="x" selected>conex&atilde;o</option>
					<option value="o">stopover</option>
				</select>			</td>
			<td>
				<input name="ciudad_8" type="text" id="ciudad_8" size="10">			</td>
			<td>
				<input name="carrier_8" type="text" id="carrier_8" size="10">			</td>
			<td>
				<input name="clase_8" type="text" id="clase_8" size="10">			</td>
			<td>
				<input name="fecha_8" type="text" id="fecha_8" size="10">			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_9" id="select9" class="input">
					<option value="x" selected>conex&atilde;o</option>
					<option value="o">stopover</option>
				</select>			</td>
			<td>
				<input name="ciudad_9" type="text" id="ciudad_9" size="10">			</td>
			<td>
				<input name="carrier_9" type="text" id="carrier_9" size="10">			</td>
			<td>
				<input name="clase_9" type="text" id="clase_9" size="10">			</td>
			<td>
				<input name="fecha_9" type="text" id="fecha_9" size="10">			</td>
		</tr>		  
		<tr>
			<td>
				<select name="tipo_10" id="select10" class="input">
					<option value="x" selected>conex&atilde;o</option>
					<option value="o">stopover</option>
				</select>			</td>
			<td>
				<input name="ciudad_10" type="text" id="ciudad_10" size="10">			</td>
			<td>
				<input name="carrier_10" type="text" id="carrier_10" size="10">			</td>
			<td>
				<input name="clase_10" type="text" id="clase_10" size="10">			</td>
			<td>
				<input name="fecha_10" type="text" id="fecha_10" size="10">			</td>
		</tr>		  
	</table>
		
  <p><input type="button" name="Submit" value="Enviar" onclick="check_and_submit(this.form)"></p>

</form>

