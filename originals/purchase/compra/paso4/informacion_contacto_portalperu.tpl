<SCRIPT TYPE="text/javascript">
<!-- 
function bloquea_cod_cel_pe(cod_pais)
{
if (cod_pais==51)
	{
	document.paso4.telefono_celular_codigo_ciudad_aux.disabled=true;
	document.paso4.telefono_celular_codigo_ciudad_aux.value="N/A";
	document.paso4.telefono_celular_codigo_ciudad.value=99; // este es el valor que se enviara de verdad
	}
else
	{
	document.paso4.telefono_celular_codigo_ciudad_aux.disabled=false;
	document.paso4.telefono_celular_codigo_ciudad.value=document.paso4.telefono_celular_codigo_ciudad_aux.value; // limpio el dato que se enviara de verdad para que el usuario lo ingrese
	}
}

//-->
/*function validate(evt) {
  var theEvent = evt || window.event;
  var key = theEvent.keyCode || theEvent.which;
  key = String.fromCharCode( key );
  var regex = /[0-9]|\./;
  if( !regex.test(key) ) {
    theEvent.returnValue = false;
    if(theEvent.preventDefault) theEvent.preventDefault();
  }
}  */
</SCRIPT>

<!--<style>
	form input[type='number']::-webkit-outer-spin-button,
	form input[type='number']::-webkit-inner-spin-button {
	    -webkit-appearance: none;
	    margin: 0;
	}
</style>-->

	<h4>{_TITULO_INFORMACION_CONTACTO} </h4>
    <table id="qa_info_contacto" class="table" cellspacing="0" cellpadding="0" width="100%">
		
		<tr>
			<td>
				<table class="no-table" width="100%">
                <colgroup>
                	<col width="31%" />
                    <col width="6%" />
                    <col width="2%" />
                    <col width="6%" />
                    <col width="2%" />
                    <col width="10%" />
                    <col width="43%" />
                </colgroup>
					<tr>
						<td style="text-align: left; font-size:9pt;">{_LABEL_PASAJERO_A_NOTIFICAR}</td>
						<td colspan="6">
							<select style="width:180px; font-size:9pt;" class="combo-box" name="self_notify_paxs">
							</select>						</td>
					</tr>
					<tr>
						<td id='id_email_l0' style="font-size:9pt;">{_LABEL_EMAIL}</td>
						<td id='id_email_l1' colspan="3">
							<input type="text" class="input" name="email" id="email" value='{EMAIL_VALUE}' size='32' maxlength="40" style="font-size:9pt;">
                        </td>
                        <td colspan="3">&nbsp;</td>
					</tr>
					{*BLOQUE_REGISTRO_EMAIL}
					<tr>
					  <td>&nbsp;</td>
					  <td colspan="6" style="padding:4px 0 8px 0; vertical-align: top;"><input type="checkbox" name="registro_email" id="registro_email" value="registrar" {CHECKED} > <label for="registro_email">{_MSG_RECIBIR_OFERTAS_PROMOCIONES}</label></td>
				  	</tr>
					{/BLOQUE_REGISTRO_EMAIL}
					<tr>
                    <td colspan="7">&nbsp;</td>
                    </tr>
                    <tr>
                    <td colspan="7"> <span style="color:#363636; font-weight:bold;"> {_MSG_INGRESO_TELEFONO_PRUEBA}</span></td>
                    </tr>
                    <tr>
						<td style="text-align: left; font-size:9pt;">{_LABEL_LISTA_CODIGOS_TELEFONICOS}</td>
						<td colspan="6">
							<select style="width:180px; font-size:9pt;" class="combo-box" name="country_phone_code" onchange="set_all_phones_country_codes(this);bloquea_cod_cel_pe(document.paso4.telefono_celular_codigo_pais.value)">
								{*COUNTRY_PHONE_CODES}<option value="{VALUE}" {SELECTED}>{TEXT}</option>{/COUNTRY_PHONE_CODES}
							</select>						
						</td>
					</tr>
                    
					<tr>
						<td>&nbsp;</td>
						<td style="text-align: left; font-size:9pt; padding-left: 10px; padding-top:8px;">{_LABEL_PAIS}</td>
						<td>&nbsp;</td>
						<td style="text-align: left; font-size:9pt; padding-left: 10px; padding-top:8px;">{_LABEL_AREA}</td>
						<td>&nbsp;</td>
						<td style="text-align:left; font-size:9pt; padding-left:10px; padding-top:8px;">{_LABEL_NUMERO}</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td id='id_telefono_casa_l0' style="text-align: left; font-size:9pt;">{_LABEL_TELEFONO_FIJO}</td>
						<td id='id_telefono_casa_l1'>							
							<input type="text" class="input" name="telefono_casa_codigo_pais" size='1' maxlength="5" value='{FONO_CASA_PAIS}' style="font-size:9pt;" onblur="txt2sabre_txt(this);removeLeadingZeros(this);">
							<!--onkeypress='validate(event)'-->
						</td>
						<td id='id_telefono_casa_l2' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_casa_l3'>
							<input type="text" class="input" name="telefono_casa_codigo_ciudad" size='1' maxlength="5" value='{FONO_CASA_CIUDAD}' style="font-size:9pt;" onblur="txt2sabre_txt(this);">
						</td>
						<td id='id_telefono_casa_l4' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_casa_l5'>
							<input type="text" class="input" name="telefono_casa_numero" value='{FONO_CASA_NUMERO}' size="9" maxlength="15" style="font-size:9pt;" onblur="txt2sabre_txt(this);">
						</td>
					</tr>
					<tr>
						<td id='id_telefono_celular_l0' style="text-align: left; font-size:9pt;">{_LABEL_TELEFONO_CELULAR}</td>
						<td id='id_telefono_celular_l1'>
							<input type="text" class="input" name="telefono_celular_codigo_pais" size='1' maxlength="5" value='{FONO_CELULAR_PAIS}' style="font-size:9pt;" onchange="bloquea_cod_cel_pe(this.value)" onblur="txt2sabre_txt(this);removeLeadingZeros(this);">
						</td>
						<td id='id_telefono_celular_l2' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_celular_l3'>
							<input type='hidden' name="telefono_celular_codigo_ciudad" value='{FONO_CELULAR_CIUDAD}'>
							<input type="text" class="input" name="telefono_celular_codigo_ciudad_aux" size='1' maxlength="5" value='{FONO_CELULAR_CIUDAD}' style="font-size:9pt;" onchange="document.paso4.telefono_celular_codigo_ciudad.value=this.value;" onblur="txt2sabre_txt(this);">
						</td>
						<td id='id_telefono_celular_l4' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_celular_l5'>
							<input type="text" class="input" name="telefono_celular_numero" value='{FONO_CELULAR_NUMERO}' size='9' maxlength="15" style="font-size:9pt;" onblur="txt2sabre_txt(this);">
						</td>												
					</tr>
					<tr>
						<td id='id_telefono_oficina_l0' style="text-align: left; font-size:9pt;">{_LABEL_TELEFONO_TRABAJO}</td>
						<td id='id_telefono_oficina_l1'>
							<input type="hidden" name="telefono_oficina_codigo_pais" value='{FONO_OFICINA_PAIS}'>
							<input type="text" class="input" size='1' value='{FONO_OFICINA_PAIS}' style="font-size:9pt;" disabled>
						</td>
						<td id='id_telefono_oficina_l2' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_oficina_l3'>
							<input type="hidden" name="telefono_oficina_codigo_ciudad" value='{FONO_OFICINA_CIUDAD}'>
							<input type="text" class="input" size='1' maxlength="5" value='{FONO_OFICINA_CIUDAD}' style="font-size:9pt;" disabled>
						</td>
						<td id='id_telefono_oficina_l4' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_oficina_l5'>
							<input type="text" class="input" name="telefono_oficina_numero" value='{FONO_OFICINA_NUMERO}' size='9' maxlength="15" style="font-size:9pt;" onblur="txt2sabre_txt(this);">
						</td>
					</tr>
					<!--Agregado para portal peru RPM-->
					<tr>
						<td id='id_telefono_rpm_l0' style="text-align: left; font-size:9pt;">{_LABEL_TELEFONO_RPM}</td>
						<td id='id_telefono_rpm_l1'>
							<input type="text" class="input" name="telefono_rpm_codigo_pais" size='1' value='{FONO_RPM_PAIS}' style="font-size:9pt;"></td>
						<td id='id_telefono_rpm_l2' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_rpm_l3'>							
							<input type="text" class="input" name="telefono_rpm_codigo_ciudad" size='1' maxlength="5" value='{FONO_RPM_CIUDAD}' style="font-size:9pt;">
						</td>
						<td id='id_telefono_rpm_l4' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_rpm_l5'>
							<input type="text" class="input" name="telefono_rpm_numero" value='{FONO_RPM_NUMERO}' size='9' maxlength="15" style="font-size:9pt;">
						</td>						
					</tr>
					<!--Agregado para portal peru RPC-->
					<tr>
						<td id='id_telefono_rpc_l0' style="text-align: left; font-size:9pt;">{_LABEL_TELEFONO_RPC}</td>
						<td id='id_telefono_rpc_l1'>
							<input type="text" class="input" name="telefono_rpc_codigo_pais" size='1' value='{FONO_RPC_PAIS}' style="font-size:9pt;">
						</td>
						<td id='id_telefono_rpc_l2' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_rpc_l3'>							
							<input type="text" class="input" name="telefono_rpc_codigo_ciudad" size='1' maxlength="5" value='{FONO_RPC_CIUDAD}' style="font-size:9pt;">
						</td>
						<td id='id_telefono_rpc_l4' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_rpc_l5'>
							<input type="text" class="input" name="telefono_rpc_numero" value='{FONO_RPC_NUMERO}' size='9' maxlength="15" style="font-size:9pt;">
						</td>						
						</tr>
					<!--Agregado para portal peru NEXTEL-->
					<tr>
						<td id='id_telefono_nextel_l0' style="text-align: left; font-size:9pt;">{_LABEL_TELEFONO_NEXTEL}</td>
						<td id='id_telefono_nextel_l1'>
							<input type="text" class="input" name="telefono_nextel_codigo_pais" size='1' value='{FONO_NEXTEL_PAIS}' style="font-size:9pt;">
						</td>
						<td id='id_telefono_nextel_l2' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_nextel_l3'>							
							<input type="text" class="input" name="telefono_nextel_codigo_ciudad" size='1' maxlength="5" value='{FONO_NEXTEL_CIUDAD}' style="font-size:9pt;" >
						</td>
						<td id='id_telefono_nextel_l4' style="font-size:9pt;">
							-						
						</td>
						<td id='id_telefono_nextel_l5'>
							<input type="text" class="input" name="telefono_nextel_numero" value='{FONO_NEXTEL_NUMERO}' size='9' maxlength="15" style="font-size:9pt;">
						</td>
						<td style="font-size:9pt; width:180px;">
							{_LABEL_EJ_FULL}						
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

<!-- esto es para que limpie el telefono de la precarga inicial de datos --> 
<SCRIPT TYPE="text/javascript">
<!--
bloquea_cod_cel_pe(document.paso4.telefono_celular_codigo_pais.value);
//-->
</SCRIPT>
