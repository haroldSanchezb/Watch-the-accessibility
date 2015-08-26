<!--
AUTH: ASOCIADOS
-->





<form name="formulario_tarifas" method="POST" action='/cgi-bin/formulario/envia_formulario.cgi'>

	<div>
		<input type='hidden' name='id_formulario' value='10'>
		<input type="hidden" name="target" value="{+ASOCIADOS_IS_TARGET}">	
		<input type="hidden" name="fecha_primer_segmento" value="">	
                <input type="hidden" name="ciudad_agencia" value="{+ASOCIADOS_INFO('ciudad')}">
                <input type="hidden" name="pais_agencia" value="{+ASOCIADOS_INFO('country_iso')}">
	</div>
	

	<p>Prezado agente, todas as informa&ccedil;&otilde;es sobre tarifas est&atilde;o disponibilizadas nos sistemas de distribui&ccedil;&atilde;o. Para oferecer sempre a melhor op&ccedil;&atilde;o aos nossos clientes e facilitar os processos das vendas, desenvolvemos esta ferramenta exclusiva para que possa esclarecer eventuais d&uacute;vidas sobre tarifas atrav&eacute;s de nosso departamento especializado.</p>
	<p><a href="/asociados/apoyo_venta/tarifas/calculo_tarifas/procedimiento_solicitud.html" target="_self">Clique  aqui</a> para conhecer nossa  pol&iacute;tica para solicita&ccedil;&otilde;es e tempos de resposta.</p>
    <ul><h4>Importante</h4>
            

    <li>Tarifas v&aacute;lidas somente para reservas individuais. Para tarifas de grupos, <a href="/cgi-bin/asociados/formularios_grupos.cgi?form_name=create_request_mundolan">clique aqui.</a></li>
    <li>Informamos exclusivamente sobre cota&ccedil;&otilde;es para tarifas com 3 ou mais pontos.</li>
    <li>N&atilde;o visualizamos disponibilidade. O agente deve informar para qual classe deseja consultar o c&aacute;lculo. </li>
    <li>As regulamenta&ccedil;&otilde;es de tarifas devem ser obtidas diretamente atrav&eacute;s de seu sistema.</li>
    <li>Todos os campos devem ser preenchidos.  Caso tenha d&uacute;vidas, <a href="/asociados/apoyo_venta/tarifas/calculo_tarifas/procedimiento_solicitud.html">clique aqui</a> para obter instru&ccedil;&otilde;es.</li>
    </ul>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
  <h4>Informa&ccedil;&atilde;o do agente</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col width="30%">
		<col>
	<tr>
	<td class="sub-titulo">Ag&ecirc;ncia</td>
		<td><input name="agencia" type="hidden" id="agencia" value="{+ASOCIADOS_INFO('nombre_empresa')}">{+ASOCIADOS_INFO('nombre_empresa')}</td>
	  </tr>
		<tr>
		<td class="sub-titulo">C&oacute;digo IATA</td>
		<td>{+ASOCIADOS_INFO('iata')}<input type='hidden' name='iata' value="{+ASOCIADOS_INFO('iata')}"></td>
      </tr>
		<tr>
		<td class="sub-titulo">Nome do Agente </td>
			<td>
		  <input name="nombre_agente" type="hidden" id="nombre_agente" value="{+ASOCIADOS_INFO('nombre_agente')}" >
	  <input name="login_agente" type="hidden" value="{+LOGIN}" >
  {+ASOCIADOS_INFO('nombre_agente')}
</td>
		</tr>
		<tr>
		<td class="sub-titulo">E-mail * </td>
		<td><input name="sender" type="text" id="sender" size="30" maxlength="250" value="{+ASOCIADOS_INFO('email')}"></td>
		</tr>
		<tr>
		<td class="sub-titulo">Fone * </td>
		<td><input name="telefono" type="text" id="telefono" size="30" maxlength="15" value="{+ASOCIADOS_INFO('telefono')}"></td>
		</tr>
		<!--<tr>
		<td class="sub-titulo">Fax * </td>
		<td><input name="fax" type="text" id="fax" size="30" maxlength="9" value="{+ASOCIADOS_INFO('fax')}"></td>-->
		</tr>
	</table>
	
<h4>Localizador Sabre * </h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
	<td><input name="pnr" type="text" id="pnr" size="7" maxlength="6">	   (o c&oacute;digo Sabre &eacute; composto por 6 letras. Exemplo: XYZABC)</td>
	</tr>
  </table>
	
	<h4>Tipo de passageiros * </h4>
		
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
                <col>
                <col width="24%">
                <col width="24%">
                <col width="24%">
                
                <tr>
                        <th>&nbsp;</th>
                        <th>Business</th>
                        <th>Economy</th>
                        
                </tr>
                <tr>
                        <td class="sub-titulo">Adulto</td>
                        <td><input name="clase_adulto" type="radio" value="Business"></td>
                        <td><input name="clase_adulto" type="radio" value="Economy"></td>
                       
                </tr>
                <tr>
                        <td class="sub-titulo">Child</td>
                        <td><input name="clase_child" type="radio" value="Business"></td>
                        <td><input name="clase_child" type="radio" value="Economy"></td>
                        
                </tr>
                <tr>
                        <td class="sub-titulo">Infant</td>
                        <td><input name="clase_infant" type="radio" value="Business"></td>
                        <td><input name="clase_infant" type="radio" value="Economy"></td>
                        
                </tr>
  </table>
	
	<!--<h4>Tipo de Solicita&ccedil;&atilde;o * </h4>
 		<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">		
				<tr>
      <td class="sub-titulo">Grupo</td>
       <td><input name="clase_solicitud" type="radio" value="Grupo"></td>        
                </tr>

				<tr>
       <td class="sub-titulo">Individual</td>
       <td><input name="clase_solicitud" type="radio" value="Individual"></td>        
                </tr>
  </table>-->
	
	<h4>Observa&ccedil;&otilde;es * </h4>
    <p>Informa&ccedil;&otilde;es adicionais e account code, caso corresponda. Caso n&atilde;o saiba qual a classe tarif&aacute;ria aplic&aacute;vel, indique as classes dispon&iacute;veis no voo desejado.</p>
		
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<textarea name="descripcion" style="width: 575px;" cols="82" rows="5" id="descripcion"></textarea>
			</td>
		</tr>
	</table>
	
	<h4>Rota ou itiner&aacute;rio * </h4>
	<p>Indique a classe dispon&iacute;vel. Em caso de trecho <em>surface</em>,&nbsp; selecione no menu &agrave;  esquerda e preencha os campos Cidade, Carrier e Classe com &ldquo;x&rdquo; </p>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col>
		<col width="18%">
		<col width="18%">
		<col width="18%">
		<col width="18%">
		<tr>
			<th>O/X</th>
			<th>Cidade</th>
			<th>Carrier</th>
			<th>Classe</th>
			<th>Data (dd/mm/aaaa)</th>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
					<option value="x" selected>Conex&atilde;o</option>
					<option value="o">Stopover</option>
					<option value="surface">Surface</option>
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
	
	
		
	<p><input type="button" name="Submit" value="Enviar" onclick='check_and_submit(this.form)'></p>
	
	
</form>	

