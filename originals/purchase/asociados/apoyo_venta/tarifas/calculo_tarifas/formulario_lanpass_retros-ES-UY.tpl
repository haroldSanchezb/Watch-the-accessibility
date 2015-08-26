<!--
AUTH: ASOCIADOS
formulario_lanpass_retroos-ES-CL.tpl
-->


<form name="formulario" method="POST" action='/cgi-bin/formulario/envia_formulario.cgi'> 
  <div> 
     <input type='hidden' name='id_formulario' value='116'> 
     <input type="hidden" name="target" value="{+ASOCIADOS_IS_TARGET}"> 
     <input type="hidden" name="fecha_primer_segmento" value=""> 
     <input type="hidden" name="ciudad_agencia" value="{+ASOCIADOS_INFO('ciudad')}"> 
     <input type="hidden" name="pais_agencia" value="{+ASOCIADOS_INFO('country_iso')}"> 
  </div> 
  <h4>Informaci&oacute;n agente</h4> 
  <table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0"> 
     <col width="30%"> 
     <col> 
     <tr> 
      <td class="sub-titulo">Agencia</td> 
      <td><input name="agencia" type="hidden" id="agencia" value="{+ASOCIADOS_INFO('nombre_empresa')}"> 
         {+ASOCIADOS_INFO('nombre_empresa')}</td> 
    </tr> 
     <tr> 
      <td class="sub-titulo">C&oacute;digo IATA</td> 
      <td> {+ASOCIADOS_INFO('iata')}        <input type='hidden' name='iata' value="{+ASOCIADOS_INFO('iata')}"></td> 
    </tr> 
     <tr> 
      <td class="sub-titulo">Nombre Agente </td> 
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
      <td class="sub-titulo">Numero socio Lanpass</td> 
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
  <h4>Observaciones</h4> 
  <table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0"> 
     <tr> 
      <td> <textarea name="descripcion" style="width: 575px;" cols="82" rows="5" id="descripcion"></textarea> </td> 
    </tr> 
  </table> 
  <h4>Ruta o itinerario </h4> 
  <table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0"> 
     <col> 
     <col width="18%"> 
     <col width="18%"> 
     <col width="18%"> 
     <col width="18%"> 
     <tr> 
      <th>O/X</th> 
      <th>Ciudad</th> 
      <th>Carrier</th> 
      <th>Clase</th> 
      <th>Fecha (dd/mm/aaaa)</th> 
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
          <option value="x" selected>conexi&oacute;n</option> 
          <option value="o">stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_2" type="text" id="ciudad_2" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_2" type="text" id="carrier_2" size="10" maxlength="2"> </td> 
      <td> <input name="clase_2" type="text" id="clase_2" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_2" type="text" id="fecha_2" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_3" id="select3" class="input-text"> 
          <option value="x" selected>conexi&oacute;n</option> 
          <option value="o">stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_3" type="text" id="ciudad_3" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_3" type="text" id="carrier_3" size="10" maxlength="2"> </td> 
      <td> <input name="clase_3" type="text" id="clase_3" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_3" type="text" id="fecha_3" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_4" id="select4" class="input-text"> 
          <option value="x" selected>conexi&oacute;n</option> 
          <option value="o">stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_4" type="text" id="ciudad_4" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_4" type="text" id="carrier_4" size="10" maxlength="2"> </td> 
      <td> <input name="clase_4" type="text" id="clase_4" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_4" type="text" id="fecha_4" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_5" id="select5" class="input-text"> 
          <option value="x" selected>conexi&oacute;n</option> 
          <option value="o">stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_5" type="text" id="ciudad_5" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_5" type="text" id="carrier_5" size="10" maxlength="2"> </td> 
      <td> <input name="clase_5" type="text" id="clase_5" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_5" type="text" id="fecha_5" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_6" id="select6" class="input-text"> 
          <option value="x" selected>conexi&oacute;n</option> 
          <option value="o">stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_6" type="text" id="ciudad_6" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_6" type="text" id="carrier_6" size="10" maxlength="2"> </td> 
      <td> <input name="clase_6" type="text" id="clase_6" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_6" type="text" id="fecha_6" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_7" id="select8" class="input-text"> 
          <option value="x" selected>conexi&oacute;n</option> 
          <option value="o">stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_7" type="text" id="ciudad_7" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_7" type="text" id="carrier_7" size="10" maxlength="2"> </td> 
      <td> <input name="clase_7" type="text" id="clase_7" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_7" type="text" id="fecha_7" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_8" id="select8" class="input-text"> 
          <option value="x" selected>conexi&oacute;n</option> 
          <option value="o">stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_8" type="text" id="ciudad_8" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_8" type="text" id="carrier_8" size="10" maxlength="2"> </td> 
      <td> <input name="clase_8" type="text" id="clase_8" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_8" type="text" id="fecha_8" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_9" id="select9" class="input-text"> 
          <option value="x" selected>conexi&oacute;n</option> 
          <option value="o">stopover</option> 
        </select> </td> 
      <td> <input name="ciudad_9" type="text" id="ciudad_9" size="10" maxlength="3"> </td> 
      <td> <input name="carrier_9" type="text" id="carrier_9" size="10" maxlength="2"> </td> 
      <td> <input name="clase_9" type="text" id="clase_9" size="10" maxlength="1"> </td> 
      <td> <input name="impuesto_9" type="text" id="fecha_9" size="10" maxlength="10"> </td> 
    </tr> 
     <tr> 
      <td> <select name="tipo_10" id="select6" class="input-text"> 
          <option value="x" selected>conexi&oacute;n</option> 
          <option value="o">stopover</option> 
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
   <h3><strong>IMPORTANTE</strong></h3>
<p>Para acumulaci&oacute;n kil&oacute;metros retros:
La documentaci&oacute;n es procesada en la oficina de Atenci&oacute;n Agencias en Providencia n&uacute;mero 2008 piso 3 de lu a vi , 09:30 hrs. a 16:00 hrs.</p>
<h3><strong>Documentaci&oacute;n requerida:</strong></h3>
<p><strong>Boletos ETK</strong></p>
<li>Fotocopia Boarding </li>
<li>Datos del socio: Nombre y rut</li> 
<li>Datos de la agencia: Nombre vendedora , tel&eacute;fono </li>
<p><strong>Boletos Papel</strong></p>
<li>Fotocopia Boarding </li>
<li>Fotocopia del boleto ( passenger o  donde aparezca la ruta) </li> 
<li>Datos del socio: Nombre y rut  </li>
<li>Datos de la agencia: Nombre vendedora , tel&eacute;fono </li>
<p><strong>Nota:</strong> Su requerimiento s&oacute;lo puede ser atendido a trav&eacute;s de Mundolan, una vez que el ejecutivo atenci&oacute;n agencias haya procesado su solicitud despu&eacute;s de  8 d&iacute;as h&aacute;biles de la recepci&oacute;n de los documentos. </p>
</form> 
