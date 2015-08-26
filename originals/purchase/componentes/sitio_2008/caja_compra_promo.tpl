{*FUNCIONES}
<script type="text/javascript" src="/js/cabinas_caja_compra_data.js"></script>
<script type="text/javascript" src="/js/caja_compra.js"></script>
<script type="text/javascript" src="/js/jscalendar/calendar_new.js"></script>
<script type="text/javascript" src="/js/jscalendar/lang/calendar_lang.js"></script>
<script type="text/javascript" src="/js/jscalendar/calendar_setup_new.js"></script>
<script type="text/javascript">
	function refresh_fechas_ida(f)
		{
		var id_form = f.elements['id_form'].value;
		var pattern = /([0-9]{2})\/([0-9]{2})\/([0-9]{4})/;
		var res = pattern.exec(f.elements['vuelos_fecha_salida_ddmmaaaa_' + id_form].value);
		var aux = res[1] + '/' + get_meses_cortos( res[2]) + '/' + res[3];
		f.elements['vuelos_fecha_salida'].value = aux;
		return;
		}

	function refresh_fechas_regreso(f)
		{
		var id_form = f.elements['id_form'].value;
		var pattern = /([0-9]{2})\/([0-9]{2})\/([0-9]{4})/;
		var res = pattern.exec(f.elements['vuelos_fecha_regreso_ddmmaaaa_' + id_form].value);
		f.elements['vuelos_fecha_regreso'].value = res[1] + '/' + get_meses_cortos( res[2]) + '/' + res[3];
		return;
		}

	function vuelos_set_fecha_from_text(f, id, text)
                {
				var id_form = f.elements['id_form'].value;
                var pattern = /([0-9]{2})\/([0-9]{2})\/([0-9]{4})/;
                var res = pattern.exec(text);
                var fecha_regreso_aux  = '';

                var errores = 0;
				id = (id % 2) ? 1 : 2 ;
                
                if (!res)
                        {
                        errores++;
                        }
                else
                        {
                        var dia = res[1];
                        var mes = res[2];
                        var ano = res[3];

                        if (dia < 1 || dia > 31)
                                {
                                errores++;
                                }
                        if (mes < 1 || mes > 12)
                                {
                                errores++;
                                }
                        if (ano < 2007 || ano > 3000)
                                {
                                errores++;
                                }
                        }

                // En caso de error dejo las fechas internas en vacio
                if (errores)
                        {
                        if (id == 1)
                                {
                                alert ("{_ERROR_FECHA_IDA_INVALIDA_JS}");
                                }
                        else
                                {
                                alert ("{_ERROR_FECHA_REGRESO_INVALIDA_JS}");
                                }

                        vuelos_set_fecha_from_calendar(f, id, '', '', '');
                        return ;
                        }
                if(id == 1)
                        {
                        f.elements['vuelos_fecha_salida_ddmmaaaa_' + id_form].value = dia + '/' + mes + '/' + ano;
                        refresh_fechas_ida(f);
                        fecha_regreso_aux  = pattern.exec(f.elements['vuelos_fecha_regreso_ddmmaaaa_' + id_form].value);
                        var aux_ida_aaaammdd = res[3] + "-" + res[2] + "-" + res[1];
                        var aux_regreso_aaaammmddd = fecha_regreso_aux[3] + "-" + fecha_regreso_aux[2] + "-" + fecha_regreso_aux[1];
                        if( aux_ida_aaaammdd  >=  aux_regreso_aaaammmddd )
                                {
                                var f2 = f.elements['vuelos_fecha_salida_ddmmaaaa_' + id_form].value;
                                f2=f2.split('/');
                                f2=f2[1]+'/'+f2[0]+'/'+f2[2];
                                var fida = new Date(f2);         
                                fida.setTime(fida.getTime()+ 24*60*60*1000);    
                                var day = fida.getDate();
                                if (day < 10)
                                        {
                                        day = '0' + day;
                                        }
                                var month = fida.getMonth();
                
                                month += 1;
                
                                if (month < 10)
                                        {
                                        month = '0' + month;
                                        }
                                
                                var year = fida.getFullYear();
								var nueva_fecha_regreso = year + '-' + month + '-' + day;
								var fecha_max_regreso = f.elements['fecha_max_regreso_calendario'].value;
								
								if (nueva_fecha_regreso > fecha_max_regreso)
									{
									fecha_max_regreso = fecha_max_regreso.split('-');	
									day = fecha_max_regreso[2];
									month = fecha_max_regreso[1];
									year = fecha_max_regreso[0];
									}
								
                               	f.elements['vuelos_fecha_regreso_ddmmaaaa_' + id_form].value = day + '/' + month + '/' + year;
                               	refresh_fechas_regreso(f);                                               
                               	vuelos_set_fecha_from_calendar(f, 2, year, month, day);
                                }
                        vuelos_set_fecha_from_calendar(f, id, ano, mes, dia);
                        }
                else if(id == 2)
                        {
                        f.elements['vuelos_fecha_regreso_ddmmaaaa_' + id_form].value = dia + '/' + mes + '/' + ano;
                        refresh_fechas_regreso(f);
                        vuelos_set_fecha_from_calendar(f, id, ano, mes, dia);
                        }

                }

	function vuelos_set_fecha_from_calendar(f, id, ano, mes, dia)
		{
		var id_anomes = 'vuelos_fecha' + id + '_anomes';
		var id_dia = 'vuelos_fecha' + id + '_dia';

		if (ano && mes && dia)
			{
			f.elements[id_anomes].value = ano + '-' + mes;
			f.elements[id_dia].value = dia;
			}
		else
			{
			f.elements[id_anomes].value = '';
			f.elements[id_dia].value = '';
			}
		}

	function vuelos_init_date_ida(f, fecha)
		{
		var id_form = f.elements['id_form'].value;
		var aux = fecha.split('-');
		var day = aux[2];
		var	month = aux[1];
		var year = aux[0];
		//Funcion que obtiene el mes en letras
		var month_txt = get_meses_cortos(month);

		if (month.length < 2)
			{
			month = '0' + month;
			}
			
		var anomes = year + '-' + month;

		if (!f.elements['vuelos_fecha1_dia'].value || !f.elements['vuelos_fecha1_anomes'].value)
			{
			f.elements['vuelos_fecha1_dia'].value = day;
			f.elements['vuelos_fecha1_anomes'].value = anomes;
			f.elements['vuelos_fecha_salida_ddmmaaaa_' + id_form].value = day + '/' + month + '/' + year;
			refresh_fechas_ida(f);
			}
		}
	
	function vuelos_init_date_regreso(f, fecha)
		{
		var id_form = f.elements['id_form'].value;
		var aux = fecha.split('-');
		var day = aux[2];
		var	month = aux[1];
		var year = aux[0];
		//Funcion que obtiene el mes en letras
		var month_txt = get_meses_cortos(month);

		if (month.length < 2)
			{
			month = '0' + month;
			}
			
		var anomes = year + '-' + month;
     
		if (!f.elements['vuelos_fecha2_dia'].value || !f.elements['vuelos_fecha2_anomes'].value)
				{
				f.elements['vuelos_fecha2_dia'].value = day;
				f.elements['vuelos_fecha2_anomes'].value = anomes;
				f.elements['vuelos_fecha_regreso_ddmmaaaa_' + id_form].value = day + '/' + month + '/' + year;
				refresh_fechas_regreso(f);
				}
		}

	function get_meses_cortos(month)
		{
		if(month == '01')
			{
			month = "{_MESCORTO01_JS}";
			}
		else if(month == '02')
			{
			month = "{_MESCORTO02_JS}";
			}
		else if(month == '03')
			{
			month = "{_MESCORTO03_JS}";
			}
		else if(month == '04')
			{
			month = "{_MESCORTO04_JS}";
			}
		else if(month == '05')
			{
			month = "{_MESCORTO05_JS}";
			}
		else if(month == '06')
			{
			month = "{_MESCORTO06_JS}";
			}
		else if(month == '07')
			{
			month = "{_MESCORTO07_JS}";
			}
		else if(month == '08')
			{
			month = "{_MESCORTO08_JS}";
			}
		else if(month == '09')
			{
			month = "{_MESCORTO09_JS}";
			}
		else if(month == '10')
			{
			month = "{_MESCORTO10_JS}";
			}
		else if(month == '11')
			{
			month = "{_MESCORTO11_JS}";
			}
		else if(month == '12')
			{
			month = "{_MESCORTO12_JS}";
			}
		return month;
		}

	
	function check_and_submit_compra_promo(f)
		{
		var id_form = f.elements['id_form'].value;
		var errores, i, elem, elem2, fecha_segmento1, fecha_segmento2, from,nadults, ninfants, nchildren;
		errores = '';
		from = '';
		// Chequeo de pasajeros
		// para forzar el ida y vuelta	
		var x = f.elements['to_city1'];
		f.elements['from_city2'].value = x.value;
		x = f.elements['from_city1'];
		f.elements['to_city2'].value = x.value;
		f.elements['num_segmentos_interfaz'].value = '2';
		
		elem = eval("f.elements['from_city1']");
		if (x.type == 'hidden')
			{
			from = x.value;
			}
		else
			{
			if (elem && elem.options[elem.selectedIndex].value == '')
				{
				errores += "{_ERROR_CIUDAD_DE_ORIGEN_FALTANTE_JS}\n";
				}
			else
				{
				from = elem.options[elem.selectedIndex].value;
				}
			}


		// Chequeo de pasajeros
                elem = f.elements['nadults'];
                nadults = 0;
                if (elem)
                        {
                        nadults = parseInt(elem.options[elem.selectedIndex].value, 10);
                        }
                elem = f.elements['nchildren'];
                nchildren = 0;
                if (elem)
                        {
                        nchildren = parseInt(elem.options[elem.selectedIndex].value, 10);
                        }
                elem = f.elements['ninfants'];
                ninfants = 0;
                if (elem)
                        {
                        ninfants = parseInt(elem.options[elem.selectedIndex].value, 10);
                        }

                if (nadults < ninfants)
                        {
                        errores += "{_ERROR_MAS_INFANTES_QUE_ADULTOS_JS}\n";
                        }

                if (nadults + ninfants + nchildren > 9)
                        {
                        errores += "{_ERROR_DEMASIADOS_PASAJEROS_JS}\n";
                        }

		// Chequeo de fechas
		var fecha_min_ida_calendario = f.elements['fecha_min_ida_calendario'].value;
		var fecha_max_ida_calendario = f.elements['fecha_max_ida_calendario'].value;
		var fecha_min_regreso_calendario = f.elements['fecha_min_regreso_calendario'].value;
		var fecha_max_regreso_calendario = f.elements['fecha_max_regreso_calendario'].value;
		
		elem = f.elements['fecha1_dia'];
		elem2 = f.elements['fecha1_anomes'];
		if (!elem.value || !elem2.value)
			{
			errores += "{_ERROR_FECHA_IDA_INVALIDA_JS}\n";
			}
		else
			{
			fecha_segmento1 = elem2.value + "-" + elem.value;
			if (fecha_segmento1 < fecha_min_ida_calendario)
				{
				errores += "{_ERROR_FECHA_IDA_PASADO_JS}\n";
				}
			if (fecha_segmento1 > fecha_max_ida_calendario)
				{
				errores += "{_ERROR_FECHA_IDA_FUTURO_JS}\n";
				}
			}

		elem = f.elements['fecha2_dia'];
		elem2 = f.elements['fecha2_anomes'];
		if (!elem.value || !elem2.value)
			{
			errores += "{_ERROR_FECHA_REGRESO_INVALIDA_JS}\n";
			}
		else
			{
			fecha_segmento2 = elem2.value + "-" + elem.value;

			if (fecha_segmento1 > fecha_segmento2)
				{
				errores += "{_ERROR_FECHA_REGRESO_ANTERIOR_IDA_JS}\n";
				}
			if (fecha_segmento2 < fecha_min_regreso_calendario)
				{
				errores += "{_ERROR_FECHA_REGRESO_PASADO_JS}\n";
				}
			if (fecha_segmento2 > fecha_max_regreso_calendario)
				{
				errores += "{_ERROR_FECHA_REGRESO_FUTURO_JS}\n";
				}
			}
		var fecha_ida = set_fecha(f.elements['vuelos_fecha_salida_ddmmaaaa_' + id_form].value);
		var fecha_ida_aux = set_fecha(f.elements['vuelos_fecha_salida_ddmmaaaa_' + id_form].value);
		var fecha_vuelta = set_fecha(f.elements['vuelos_fecha_regreso_ddmmaaaa_' + id_form].value);
		// Despliego errores o avanzo al siguiente paso
		if (errores.length > 0)
			{
			alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
			return;
			}
		else
			{
			f.action = '/cgi-bin/compra/paso2.cgi';
			f.elements['rand_check'].value = Math.random() * 10000;
			f.submit();
			}
		}


	function set_fecha(fecha)
		{
		var f=fecha.split('/');
		f=f[1]+'/'+f[0]+'/'+f[2];
		return new Date(f);
		}



</script>
{/FUNCIONES}
<div class="caja_calendario_detalle_mata">

<form name="form_promo_{ID}" action="/no_js.html" method="GET">
<div id="calendario">
	<input type="hidden" name="url_promo" id="url_promo" value="{URL_PROMO}">
	<input type="hidden" name="id_form" id="id_form" value="{ID}">
	<input type="hidden" name="fecha1_dia" id="vuelos_fecha1_dia" value="">
	<input type="hidden" name="fecha1_anomes" id="vuelos_fecha1_anomes" value="">
	<input type="hidden" name="fecha2_dia" id="vuelos_fecha2_dia" value="">
	<input type="hidden" name="fecha2_anomes" id="vuelos_fecha2_anomes" value="">
	
	<input type="hidden" name="num_segmentos_interfaz" value="1">
	<input type="hidden" id="tipo_paso1" name="tipo_paso1" value="caja">

	<input type="hidden" name="from_city2" value="{CODIGO_CIUDAD_DESTINO}">
	<input type="hidden" name="to_city2" value="">

	<input type="hidden" name="rand_check" value="">
	<input type="hidden" name="ida_vuelta" value="ida_vuelta">
	<input type="hidden" name="otras_ciudades" value="">
	
	<input type="hidden" name="to_city1" id="vuelos_destino" value="{CODIGO_CIUDAD_DESTINO}">
	<input type="hidden" name="cod_promo" id="cod_promo" value="{COD_PROMO}">
	<input type='hidden' name='from_city1' id='vuelos_origen' value='{CODIGO_CIUDAD_ORIGEN}'>

	<input type='hidden' name='fecha_min_ida_calendario' id='fecha_min_ida_calendario' value='{FECHA_MIN_IDA_CALENDARIO}'>
	<input type='hidden' name='fecha_max_ida_calendario' id='fecha_max_ida_calendario' value='{FECHA_MAX_IDA_CALENDARIO}'>
	<input type='hidden' name='fecha_min_regreso_calendario' id='fecha_min_regreso_calendario' value='{FECHA_MIN_REGRESO_CALENDARIO}'>
	<input type='hidden' name='fecha_max_regreso_calendario' id='fecha_max_regreso_calendario' value='{FECHA_MAX_REGRESO_CALENDARIO}'>
	<input type='hidden' name='auAvailability' id='auAvailability' value='{AU_AVAILABILIY}'>
	
	<div class="fila_1">

		<div class='bloque_destino' id='bloque_ciudad_origen_vacaciones'>
			<label for="vuelos_origen">{_LABEL_ORIGEN}</label>
			<div class="ciudad_destino">{CIUDAD_ORIGEN}</div>
		</div>
	
		<div class="bloque_destino" id="bloque_ciudad_destino_vacaciones">
			<label for="vuelos_destino" id="label_vuelos_destino" >{_LABEL_DESTINO}</label>
			<div class="ciudad_destino">{CIUDAD_DESTINO}</div>		
		</div>

	</div>
	<br>

	<div class="fila_2">
		<div id="bloque_fecha_ida">
			<label for="vuelos_fecha_salida" id="label_vuelos_fecha_salida">{_LABEL_IDA}</label>
			<input type="text" class="text fecha" name="vuelos_fecha_salida" width="80px" id="vuelos_fecha_salida" value="" onChange="vuelos_set_fecha_from_text(document.form_promo_{ID}, {ID_CAL_IDA}, this.value);">
			<input type="hidden" class="text fecha" name="vuelos_fecha_salida_ddmmaaaa_{ID}" id="vuelos_fecha_salida_ddmmaaaa_{ID}" onChange="vuelos_set_fecha_from_text(document.form_promo_{ID}, {ID_CAL_IDA}, this.value);">
			<img src="/css/themes/base/images/calendar-icon.gif" id="cal{ID_CAL_IDA}" class="calendario" alt="" width="14" height="15">
			<script type="text/javascript">
				Calendar.setup({
					inputField  : "vuelos_fecha_salida_ddmmaaaa_{ID}",
					ifFormat    : "%d/%m/%Y",
					button      : "cal{ID_CAL_IDA}",
					minDate		: "{FECHA_MIN_IDA_CALENDARIO}",
					maxDate		: "{FECHA_MAX_IDA_CALENDARIO}",
					yearButtons	: false,
					id			: {ID_CAL_IDA}
					});
				document.form_promo_{ID}.elements['vuelos_fecha_salida'].onclick = document.getElementById('cal{ID_CAL_IDA}').onclick;
				vuelos_init_date_ida(document.form_promo_{ID}, "{FECHA_DESPLIEGUE_INICIAL_CALENDARIO}");
			</script>
		</div>
		<div id="bloque_fecha_regreso">
			<label for="vuelos_fecha_regreso" id="label_vuelos_fecha_regreso">{_LABEL_REGRESO}</label>
			<input type="text" class="text fecha" name="vuelos_fecha_regreso" width="80px" id="vuelos_fecha_regreso" value="" onChange="vuelos_set_fecha_from_text(document.form_promo_{ID}, {ID_CAL_VUELTA}, this.value);">
                        <input type="hidden" class="text fecha" name="vuelos_fecha_regreso_ddmmaaaa_{ID}" id="vuelos_fecha_regreso_ddmmaaaa_{ID}" onChange="vuelos_set_fecha_from_text(document.form_promo_{ID}, {ID_CAL_VUELTA}, this.value);">
                        <img src="/css/themes/base/images/calendar-icon.gif" id="cal{ID_CAL_VUELTA}" class="calendario" alt="" width="14" height="15">
                        <script type="text/javascript">
                                Calendar.setup({
                                        inputField  : "vuelos_fecha_regreso_ddmmaaaa_{ID}",
                                        ifFormat    : "%d/%m/%Y",
                                        button      : "cal{ID_CAL_VUELTA}",
                                        minDate         : "{FECHA_MIN_REGRESO_CALENDARIO}",
                                        maxDate         : "{FECHA_MAX_REGRESO_CALENDARIO}",
                                        yearButtons     : false,
                                        id                      : {ID_CAL_VUELTA}
                                        });
                                document.form_promo_{ID}.elements['vuelos_fecha_regreso'].onclick = document.getElementById('cal{ID_CAL_VUELTA}').onclick;
                                vuelos_init_date_regreso(document.form_promo_{ID}, "{FECHA_DESPLIEGUE_INICIAL_CALENDARIO_REGRESO}");
                        </script>
		</div>
	</div>

	<div class="fila_3">
		<div id="bloque_cabina">
			<label for="vuelos_cabina">{_LABEL_CABINA}</label>
			<select name="cabina" id="vuelos_cabina">
				{CABINAS}
			</select>
		</div>
		<div id="bloque_pasajeros">
			<div class="bloque_pasajeros_adultos">
				<label for="nadults">{_PALABRA_NUMERO_ABREVIADO} {_LABEL_ADULTOS}</label> 
				{*SELECT_NADULTS}
				<select name="nadults" id="nadults">
					{OPTIONS_NADULTS}
                        	</select>
				{/SELECT_NADULTS}
			</div>

			<div class="bloque_pasajeros_ninos">
				<label for="nchildren">{_PALABRA_NUMERO_ABREVIADO} {_LABEL_NINOS}</label>
				{*SELECT_NCHILD}
                        	<select name="nchildren" id="nchildren">
                                	{OPTIONS_NCHILD}
                        	</select>
                        	{/SELECT_NCHILD}
			</div>	
			<div class="bloque_pasajeros_infantes">
                        	<label for="ninfants">{_PALABRA_NUMERO_ABREVIADO} {_LABEL_INFANTES}</label>
				{*SELECT_NINF}
                                <select name="ninfants" id="ninfants">
                                        {OPTIONS_NINF}
                                </select>
                                {/SELECT_NINF}
			</div>
		</div>
	</div>

	<div class="fila_4">
		<div class="flotar_izq" style="margin-left: -4px; width: 345px;">
                        <div style="width: 48%;" class="flotar_izq">
                                <div id="pregunta_flex_on">
                                        <input class="flotar_izq" type="hidden" name="flex" id="r_flex_1" value="1" checked>
                                        <!--<span class="label_radio" style="display: block; padding-left: 18px !important;" onClick="document.form_promo_{ID}.elements['r_flex_1'].checked = 1;">{_LABEL_FECHA_PRECIO}</span>-->
                                </div>
                        </div>
                        <div style="width: 48%;" class="flotar_der">
                                <!--<div id="pregunta_flex_off">
                                        <input class="flotar_izq" type="radio" name="flex" id="r_flex_0" value="0" >
                                        <span class="label_radio" style="display: block; padding-left: 18px !important;" onClick="document.form_promo_{ID}.elements['r_flex_0'].checked = 1;">{_LABEL_FECHA_EXACTA}</span>
                                </div>-->
                        </div>
                </div>
	</div>

	<br />
	<div class="fila_6">
		<div style="text-align:right;"><input class="button-page" value="{_PALABRA_PAGINA_PROMO_COMPRAR}" title="Comprar" type="button" onClick="javascript:check_and_submit_compra_promo(document.form_promo_{ID})"></div>
	</div>

</div>	
</form>

</div>
<!--<script type="text/javascript">
	{_FUNCION_RUTAS_FLEX}('vuelos_origen', 'vuelos_destino', document.paso1.elements['flex'], 'pregunta_flex');
	cabinas_set_cabinas('vuelos_origen', 'vuelos_destino', 'vuelos_cabina');
</script>-->	
