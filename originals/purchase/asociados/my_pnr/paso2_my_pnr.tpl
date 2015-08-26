<script type='text/javascript'>

function show_panel(panel_to_show) {
   document.getElementById(panel_to_show).style.display = 'block';
}

function goTo(next) {
	document.mypnrform.action=next;
	document.mypnrform.submit();
}

function isNum(num){
    return !isNaN(num)
}

function check_submit_pnr_edit(f)
        {
        var errors = '';

	f.mobilecountry.value        = Trim(f.mobilecountry.value);
        f.mobilecity.value           = Trim(f.mobilecity.value);
        f.mobiletelnumber.value      = Trim(f.mobiletelnumber.value);
        f.landcountry.value          = Trim(f.landcountry.value);
        f.landarea.value             = Trim(f.landarea.value);
        f.landtelnumber.value        = Trim(f.landtelnumber.value);
        var sel = document.getElementsByName('destination')[0];
        var i = sel.options.selectedIndex;
        destination_value = sel.options[i].value;

        change_bg_for_id('destination','ok');
        change_bg_for_id('landcountry','ok');
        change_bg_for_id('landarea','ok');
        change_bg_for_id('landtelnumber','ok');
        change_bg_for_id('mobilecountry','ok');
        change_bg_for_id('mobilecity','ok');
        change_bg_for_id('mobiletelnumber','ok');

        var checked = 0;
        var length = document.mypnrform.passenger.length;

		// if there is only 1 passenger, then it's not an array
		if (document.mypnrform.passenger && !length) {
         	if (document.mypnrform.passenger.checked==true)
            checked++;
		}

        for (i=0; i < length; i++){
                if (document.mypnrform.passenger[i].checked==true)
                checked++;
        }

        if( checked < 1 ){
           errors += "{_ERROR_SIN_PASSENGER_JS}\n";
	   change_bg_for_id('passenger','dato-erroneo');
        }
	 var phoneisthere = 0;
        if(f.mobilecountry.value > 0  &&  f.mobilecity.value > 0 &&  f.mobiletelnumber.value > 0 && isNum(f.mobilecountry.value) &&
            isNum(f.mobilecity.value) && isNum(f.mobiletelnumber.value) ) {
           phoneisthere=1;
        }
        if( f.landcountry.value > 0 && f.landarea.value > 0 &&  f.landtelnumber.value > 0 && isNum(f.landcountry.value) &&
            isNum(f.landarea.value) && isNum(f.landtelnumber.value) ) {
           phoneisthere=1;
        }
        if(phoneisthere==0) {
           errors += "{_ERROR_SIN_TELEFONO_JS}\n";

           change_bg_for_id('mobilecountry','dato-erroneo');
           change_bg_for_id('mobilecity','dato-erroneo');
           change_bg_for_id('mobiletelnumber','dato-erroneo');
           change_bg_for_id('landcountry','dato-erroneo');
           change_bg_for_id('landarea','dato-erroneo');
           change_bg_for_id('landtelnumber','dato-erroneo');
        }
        if ( destination_value.length < 1 ) {
            errors += "{_ERROR_SIN_DESTINO_JS}\n";
            change_bg_for_id('destination','dato-erroneo');
        }
        if (errors.length > 0)
                {
                alert(errors);
                return false;
                
	}

        document.mypnrform.action=('{NEXT_STEP}' || 'paso3.cgi');
        document.mypnrform.submit();

}

function selectAll() {

	var checked = (document.mypnrform.select_all.checked) ? true : false;

    var length = document.mypnrform.passenger.length;

	// if there is only 1 passenger, then it's not an array
	if (document.mypnrform.passenger && !length) {
		document.mypnrform.passenger.checked = checked;
	}

	for (i=0; i < length; i++) {
		document.mypnrform.passenger[i].checked = checked;
	}
}

function clearPhones() {
	var f = document.mypnrform;
	f.mobilecountry.value = '';
	f.mobilecity.value = '';
	f.mobiletelnumber.value = '';
	f.landcountry.value = '';
	f.landarea.value = '';
	f.landtelnumber.value = '';
}

function checkPaxCount() {
	var count = 0;

    var pax = document.mypnrform.passenger;
	for (i=0; i < pax.length; i++) {
		if (pax[i].checked) 
			count++;
	}

	var el = document.getElementById('select_pax_count');
	el.innerHTML = count;
}

</script>

<form action="#" method="post" name="mypnrform">
<div id="panel-general">
	<br />
	<h1>{_TITULO2_SELECCION_PASAJERO_INGRESO_DATOS}</h1>
	<br />
	<div class="content_tb_process">
		<h2>{_LABEL_INFO_PASAJERO}</h2>
		<div class="box_content_process">
			<div class="box_int_border_process">
				<div id="cont_itinerario_amadeus">
					{ITINERARIO}
				</div>
			</div>
		</div>
	</div>

	<br />
	
	<div class="content_tb_process">
		<h2>{_LABEL_AGREGAR_DATOS}</h2>
		<div class="box_content_process">
			<div class="box_int_border_process pax_mypnr">
				<br />
				{_MSG_EDITAR_INFO_CONTACTO_DESTINO}
				{_MSG2_DETALLE_PASAJEROS_E_INGRESO_DATOS}

				<div id="list_pax_pnr">
					<!--BEGIN PASS-->
					{*SUCCESS}
					<div id="success">
						{_MSG_INFO_CONTACTO_DESTINO_EDITADA}
					</div>
					{/SUCCESS}
					<div id="passengerdata" class="cont_pax">
						<div class="selectall">
							<input type="checkbox" id="select_all" name="select_all" onClick="selectAll(); checkPaxCount();" value="1" />
							<label for="select_all"><strong>{_LABEL_SELECCIONAR_TODOS}</strong></label>
						</div>
						<div class="boxpax">
							<ul>
								{PAXDATA}
							</ul>
						</div>
						<div class="selectpax"><span id="select_pax_count">0</span> {_LABEL_PASAJEROS_SELECCIONADOS}</div>
					</div>
				</div>


				<div id="paneledit" class="mypnr_panel" style="display:none" />
				<!--CONTENIDO OPCION EDITAR DATOS-->
					<div id="cont_editar_datos">
						<table class="table_formulario_my_pnr" width="100%" cellspacing="0" cellpadding="0">
							<tr>
								<td style="width:30%;">
									<strong>{_LABEL_SELECCIONE_DESTINO}</strong>
								</td>
								<td class="table_formulario_my_pnr table_color_blanco">
									<select style="width: 155px;" id="destination" name="destination" onChange="clearPhones();">
										<option value="" selected="selected">{_LABEL_SELECCIONE}</option>
										{*DESTINATION_SELECT}
										<option value="{KEY_SELECCIONE}">{LABEL_SELECCIONE}</option>
										{/DESTINATION_SELECT}
									</select>
								</td>
							</tr>
						</table>
	
						<table class="table_formulario_my_pnr" width="100%" cellspacing="0" cellpadding="0">
							<tr>
								<td style="width:30%;"><strong>{_LABEL_TELEFONO}</strong></td>
								<td class="table_formulario_my_pnr table_color_blanco">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tr>
											<td style="width:3%; border-bottom:none; padding: 0px;"><input id="landcountry" type="text" name="landcountry" value="{COUNTRY}" size="3" />
											<br><label>{_LABEL_PAIS}</label></td>
											<td style=" width:3%; border-bottom:none; padding: 0px; vertical-align:top; text-align:center;">-</td>
											<td style=" width: 3%; border-bottom:none; padding: 0px;"><input id="landarea" type="text" name="landarea" value="{CITY}" size="4" /><br><label>{_LABEL_CIUDAD}</label></td>
											<td style=" width:3%; border-bottom:none; padding: 0px; vertical-align:top; text-align:center;">-</td>
											<td style="border-bottom:none; padding: 0px;"><input id="landtelnumber" type="text" name="landtelnumber" value="{NUMBER}" size="8" /><br><label>{_LABEL_NUMERO}</label></td>
										</tr>
										<tr>
											<td colspan="5" style=" border-bottom:none; padding:0px;"><span class="ejemplo">{_LABEL_EJEMPLO_TELEFONO_LP}</span></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td style="width:30%;"><strong>{_LABEL_MOVIL}</strong></td>
								<td class="table_formulario_my_pnr table_color_blanco">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tr>
											<td style=" width:3%; border-bottom:none; padding:0px;"><input id='mobilecountry' type="text" name="mobilecountry" value="{MCOUNTRY}" size="3" />
											<br><label>{_LABEL_PAIS}</label></td>
											<td style=" width:3%; border-bottom:none; padding: 0px; vertical-align:top; text-align:center;">-</td>
											<td style="width: 3%; border-bottom:none; padding: 0px;"><input id='mobilecity' type=text"" name="mobilecity" value="{MCITY}" size="4" />
											<br><label>{_LABEL_CIUDAD}</label></td>
											<td style=" width:3%; border-bottom:none; padding: 0px; vertical-align:top; text-align:center;">-</td>
											<td style="border-bottom:none; padding: 0px;"><input id='mobiletelnumber' type="text" name="mobiletelnumber" value="{MNUMBER}" size="8" /> 
											{_LABEL_ROAMING}
											<br><label>{_LABEL_NUMERO}</label></td>
										</tr>
										<tr>
											<td colspan="5" style=" border-bottom:none; padding:0px;"><span class="ejemplo">{_LABEL_EJEMPLO_CELULAR}</span></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
						<div class="cont_guardar">
						<!--<a href="#" title="{_LABEL_CANCELAR}">{_LABEL_CANCELAR}</a>-->
							<button class="button-page" onClick="return check_submit_pnr_edit(this.form)" title="{_LABEL_GUARDAR_DATOS}">{_LABEL_GUARDAR_DATOS}</button>
						</div>
						<!--MENSAJE CUANDO SE EDITAN DATOS-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" name="session_id" value="{SESSION_ID}" />
	<input type="hidden" name="pnr" value="{PNR}" />
	<input type="hidden" name="apellido" value="{APELLIDO}" />
		<div id="cont_btns" style=" float:right;">
			
			<input type="submit" class="button-page" onClick="show_panel('paneledit'); return false;" name="paneledit" value="{_LABEL_EDITAR}" />

			<input type="submit" class="button-page" onClick="window.location.href='{HOME}'; return false;" value="{_LABEL_VOLVER_AL_HOME}" />
		</div>
	</div>
</div>
</form>
<br />
<br />
