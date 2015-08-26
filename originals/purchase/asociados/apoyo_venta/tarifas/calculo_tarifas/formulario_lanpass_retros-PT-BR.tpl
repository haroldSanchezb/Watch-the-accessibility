<!--
AUTH: ASOCIADOS
formulario_lanpass_retros-PT-BR.tpl
-->


<form name="formulario" method="POST" action='/cgi-bin/formulario/envia_formulario.cgi'> 
  <div> 
     <input type='hidden' name='id_formulario' value='116'> 
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
      <td class="sub-titulo">Ag&ecirc;ncia</td> 
      <td><input name="agencia" type="hidden" id="agencia" value="{+ASOCIADOS_INFO('nombre_empresa')}"> 
         {+ASOCIADOS_INFO('nombre_empresa')}</td> 
    </tr> 
     <tr> 
      <td class="sub-titulo">C&oacute;digo IATA</td> 
      <td> {+ASOCIADOS_INFO('iata')}        <input type='hidden' name='iata' value="{+ASOCIADOS_INFO('iata')}"></td> 
    </tr> 
     <tr> 
      <td class="sub-titulo">Nome do Agente</td> 
      <td> <input name="nombre_agente" type="hidden" id="nombre_agente" value="{+ASOCIADOS_INFO('nombre_agente')}" > 
         <input name="login_agente" type="hidden" value="{+LOGIN}" > 
         {+ASOCIADOS_INFO('nombre_agente')} </td> 
    </tr> 
     <tr> 
      <td class="sub-titulo">Email</td> 
      <td><input name="sender" type="text" id="sender" size="30" maxlength="250" value="{+ASOCIADOS_INFO('email')}"></td> 
    </tr> 
     <tr> 
      <td class="sub-titulo">Fono</td> 
      <td><input name="telefono" type="text" id="telefono" size="30" maxlength="9" value="{+ASOCIADOS_INFO('telefono')}"></td> 
    </tr> 
     <tr> 
      <td class="sub-titulo">Fax</td> 
      <td><input name="fax" type="text" id="fax" size="30" maxlength="9" value="{+ASOCIADOS_INFO('fax')}"></td> 
    </tr> 
     <tr> 
      <td class="sub-titulo">Record</td> 
      <td><input name="pnr" type="text" id="fax" size="30" maxlength="7" value="{+ASOCIADOS_INFO('record')}"></td> 
    </tr> 
     <tr> 
      <td class="sub-titulo">N &uacute;mero de s&oacute;cio Lanpass</td> 
      <td><input name="numero_socio1" type="text" id="numero_socio1" size="30" maxlength="9" value="{+ASOCIADOS_INFO('numero_socio1')}"></td> 
    </tr> 
     <tr> 
      <td> </td> 
      <td><input name="numero_socio2" type="text" id="numero_socio2" size="30" maxlength="9" value="{+ASOCIADOS_INFO('numero_socio2')}"></td> 
    </tr> 
     <tr> 
      <td></td> 
      <td><input name="numero_socio3" type="text" id="numero_socio3" size="30" maxlength="9" value="{+ASOCIADOS_INFO('numero_socio3')}"></td> 
    </tr> 
     <tr> 
      <td></td> 
      <td><input name="numero_socio4" type="text" id="numero_socio4" size="30" maxlength="9" value="{+ASOCIADOS_INFO('numero_socio4')}"></td> 
    </tr> 
     <tr> 
      
      
     </tr> 
  </table> 
  <h4>Observa&ccedil;&otilde;es</h4> 
  <table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0"> 
     <tr> 
      <td> <textarea name="descripcion" style="width: 575px;" cols="82" rows="5" id="descripcion"></textarea> </td> 
    </tr> 
  </table> 
  <h4>Rota ou itiner&aacute;rio</h4> 
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
      <td> <select name="tipo_2" id="select2" class="input-text"> 
          <option value="x" selected>Conex&atilde;o</option> 
          <option value="o">Stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_2" type="text" id="ciudad_2" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_2" type="text" id="carrier_2" size="10" maxlength="2"> </td> 
      <td> <input name="clase_2" type="text" id="clase_2" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_2" type="text" id="fecha_2" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_3" id="select3" class="input-text"> 
          <option value="x" selected>Conex&atilde;o</option> 
          <option value="o">Stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_3" type="text" id="ciudad_3" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_3" type="text" id="carrier_3" size="10" maxlength="2"> </td> 
      <td> <input name="clase_3" type="text" id="clase_3" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_3" type="text" id="fecha_3" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_4" id="select4" class="input-text"> 
          <option value="x" selected>Conex&atilde;o</option> 
          <option value="o">Stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_4" type="text" id="ciudad_4" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_4" type="text" id="carrier_4" size="10" maxlength="2"> </td> 
      <td> <input name="clase_4" type="text" id="clase_4" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_4" type="text" id="fecha_4" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_5" id="select5" class="input-text"> 
          <option value="x" selected>Conex&atilde;o</option> 
          <option value="o">Stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_5" type="text" id="ciudad_5" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_5" type="text" id="carrier_5" size="10" maxlength="2"> </td> 
      <td> <input name="clase_5" type="text" id="clase_5" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_5" type="text" id="fecha_5" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_6" id="select6" class="input-text"> 
          <option value="x" selected>Conex&atilde;o</option> 
          <option value="o">Stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_6" type="text" id="ciudad_6" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_6" type="text" id="carrier_6" size="10" maxlength="2"> </td> 
      <td> <input name="clase_6" type="text" id="clase_6" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_6" type="text" id="fecha_6" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_7" id="select8" class="input-text"> 
          <option value="x" selected>Conex&atilde;o</option> 
          <option value="o">Stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_7" type="text" id="ciudad_7" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_7" type="text" id="carrier_7" size="10" maxlength="2"> </td> 
      <td> <input name="clase_7" type="text" id="clase_7" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_7" type="text" id="fecha_7" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_8" id="select8" class="input-text"> 
          <option value="x" selected>Conex&atilde;o</option> 
          <option value="o">Stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_8" type="text" id="ciudad_8" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_8" type="text" id="carrier_8" size="10" maxlength="2"> </td> 
      <td> <input name="clase_8" type="text" id="clase_8" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_8" type="text" id="fecha_8" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_9" id="select9" class="input-text"> 
          <option value="x" selected>Conex&atilde;o</option> 
          <option value="o">Stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_9" type="text" id="ciudad_9" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_9" type="text" id="carrier_9" size="10" maxlength="2"> </td> 
      <td> <input name="clase_9" type="text" id="clase_9" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_9" type="text" id="fecha_9" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_10" id="select6" class="input-text"> 
          <option value="x" selected>Conex&atilde;o</option> 
          <option value="o">Stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_10" type="text" id="ciudad_10" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_10" type="text" id="carrier_10" size="10" maxlength="2"> </td> 
      <td> <input name="clase_10" type="text" id="clase_10" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_10" type="text" id="fecha_10" size="10" maxlength="10"> </td> 
    </tr> 
  </table> 
  <p> 
    <input type="button" name="Submit" value="Enviar" onclick='check_and_submit(this.form)'> 
  </p> 
   <br>
<h3><strong>Documenta&ccedil;&atilde;o requerida:</strong></h3>
<p><strong>Bilhetes ETK</strong></p>
<li>C&oacute;pia do Boarding</li>
<li>Dados do s&oacute;cio: Nome e RG</li> 
<li>Dados da ag&ecirc;ncia: Nome do vendedor , telefone</li>
<p><strong>Bilhetes de Papel</strong></p>
<li>C&oacute;pia do Boarding</li>
<li>C&oacute;pia do bilhete ( passenger ou onde apare&ccedil;a a rota)</li> 
<li>Dados do s&oacute;cio: Nome e RG</li>
<li>Dados da ag&ecirc;ncia: Nome do vendedor , telefone</li>
<p><strong>Nota:</strong> Seu requerimento somente pode ser atendido atrav&eacute;s do Mundolan, uma vez que o executivo de aten&ccedil;&atilde;o a ag&ecirc;ncias tenha processado sua solicita&ccedil;&atilde;o depois de 8 dias &uacute;teis da recep&ccedil;&atilde;o dos documentos.</p>
</form> 
