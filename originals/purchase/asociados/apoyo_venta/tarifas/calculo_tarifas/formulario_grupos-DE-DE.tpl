<!--
AUTH: ASOCIADOS
-->
<div style="padding-top:15px;" class="warning-info" id="msg-op">
  <p>In diesem Abschnitt k&ouml;nnen ausschlie&szlig;lich Anfragen f&uuml;r Gruppenbuchungen get&auml;tigt werden, die mindestens einen LAN-Flug enthalten. Im Falle von kombinierten Flugrouten (LAN und TAM) k&ouml;nnen in diesem Abschnitt ausschlie&szlig;lich Anfragen get&auml;tigt werden, wenn das LAN-Segment der Flugroute vor dem TAM-Segment liegt.<br />
    Bei Gruppenanfragen, die ausschlie&szlig;lich TAM-Segmente enthalten oder bei kombinierten Flugrouten (TAM und LAN), deren erste Flugstrecke von TAM bedient wird, <br />
  ist die Anfrage an den TAM-Support f&uuml;r Gruppenfl&uuml;ge zu richten: 0 800-33 051 05</p>
</div>

<form name="formulario" method="POST" action='/cgi-bin/formulario/envia_formulario.cgi' onSubmit="return ValidacionFomulario(this)">

	<div>
		<input type='hidden' name='id_formulario' value='{_ID_FORMULARIO_GRUPOS}'>

	</div>


	 <h4>Daten des Reiseb&uuml;ros<br />
	 </h4>

<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
           <col width="30%">
           <col>
             <tr>
             <td class="sub-titulo">Name des Reiseb&uuml;ros</td>
             <td>{+ASOCIADOS_INFO('nombre_empresa')} <input type='hidden' name='agencia' value="{+ASOCIADOS_INFO('nombre_empresa')}"></td>
             </tr>

             <tr>
             <td class="sub-titulo">IATA-Code</td>
             <td>{+ASOCIADOS_INFO('iata')}<input type='hidden' name='iata' value="{+ASOCIADOS_INFO('iata')}"></td>
             </tr>

             <tr>
             <td class="sub-titulo">Land </td>
             <td>{+ASOCIADOS_INFO('pais')} <input type='hidden' name='pais' value="{+ASOCIADOS_INFO('pais')}"></td>
             </tr>
       </table>




	 <h4>Daten des Reiseb&uuml;ro-Mitarbeiters</h4>


<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
                <col width="30%">
                <col>
                <tr>
                <td class="sub-titulo">Name des Reiseb&uuml;ro-Mitarbeiters</td>
                <td>{+ASOCIADOS_INFO('nombre_agente')} <input type='hidden' name='agente' value="{+ASOCIADOS_INFO('nombre_agente')}"></td>
                </tr>

                <tr>
                <td class="sub-titulo">E-Mail</td>
                <td><input name="sender" type="text" id="fax" size="30" maxlength="250" value="{+ASOCIADOS_INFO('email')}">
                </td>
                </tr>


        </table>


	 <h4>Anfragetyp</h4>

<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
                <col width="30%">
                <col>


        <tr>
                <td class="sub-titulo">Segment</td>
      <td>
                <select name="segmento" id="segmento" class="input-text">
                <option value="Etnico" selected>Ethnische</option>
                <option value="Corporate">Corporate</option>
                <option value="Turismo">Urlaub</option>
                </select>
                        </td>
        </tr>
	  <tr>
               <td class="sub-titulo">Grund der Reise</td>
<td>
                                <select name="motivo" id="motivo" class="input-text">
                                        <option value="Relajacion" selected>Relajaci&oacute;n</option>
                                        <option value="NaturalezayDeporte">Naturaleza y Deporte</option>
                                        <option value="Aprendizaje">Aprendizaje</option>
                                </select></td>
        </tr>



        <tr>
                <td class="sub-titulo">Produkt</td>
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
                        <td class="sub-titulo">Unternehmen<br /></td>
                  <td><input name="empresa" type="text" id="empresa" size="30" maxlength="250">
                </td>
                </tr>


        </table>

 <h4>Informationen zur Gruppe</h4>

<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
                <col width="30%">
                <col>

                <tr>
                        <td class="sub-titulo">Name der Gruppe</td>
                  <td><input name="nombre" type="text" id="nombre" size="30" maxlength="250"></td>
                        <td class="sub-titulo">Emisivo</td>
                        <td><input name="flag_special_baggage" type="radio" value="0"></td>
                        <td class="sub-titulo">Receptivo</td>
                        <td><input name="flag_special_baggage" type="radio" value="1"></td>
                </tr>

                <tr>
                        <td class="sub-titulo">Gesamtzahl der Personen</td>
                  <td><input name="cantidad" type="text" id="cantidad" size="5" maxlength="3">
                </td>
                </tr>
                <tr>
                        <td class="sub-titulo">Erwachsene</td>
                  <td><input name="full" type="text" id="full" size="5" maxlength="3">
	 </td>
                </tr>
                <tr>
                        <td class="sub-titulo">Kinder</td>
                  <td><input name="child" type="text" id="child" size="5" maxlength="3">
                </td>
                </tr>
                <td class="sub-titulo">Kabine</td>
  <td>
                                <select name="cabina" id="cabina" class="input-text">
                                        <option value="Y" selected>Y</option>
                                        <option value="J">J</option>
                                </select>
                </td>
                </tr>
                <td class="sub-titulo">Basistarif</td>
                <td><input name="full" type="text" id="full" size="5" maxlength="3">
                </td>
                </tr>

        </table>
<h4><br />
  Flugsegment</h4>
<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
                <col width="10%">
                <col width="10%">
                <col width="10%">
                <col width="10%">
                <col width="10%">
                <col width="10%">
                <tr>

                        <th>Fluggesellschaft</th>
                  <th>Flugnummer</th>
                  <th>Datum des Reiseantritts (TT/MM/JJJJ)</th>
                        <th>Datum des Reiseantritts (TT/MM/JJJJ)</th>
                  <th>Zielort</th>
                  <th>Flugklasse</th>
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



 <h4>Hinweise</h4>

<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                        <td>
                                <textarea name="descripcion" style="width: 575px;" cols="82" rows="5" id="descripcion"></textarea>
                        </td>
                </tr>
        </table>






	<p><input type="submit" name="Submit" value="Senden"></p>

</form>
