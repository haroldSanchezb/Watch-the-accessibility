<script src="/js/jquery/jquery_1_4_2_min.js" type="text/javascript"></script>
<script type="text/javascript">

function check_and_submit()
	{
	var fecha_ida = jQuery("#fecha_ida").val();
	var fecha_vuelta = jQuery("#fecha_vuelta").val();
	var fecha_ida_cmp = (fecha_ida.split("-")).join("");
	var fecha_vuelta_cmp = (fecha_vuelta.split("-")).join("");

	if (fecha_ida == '' || fecha_vuelta == '' || fecha_ida_cmp > fecha_vuelta_cmp)
		{
		alert('{_MSG_FECHAS_INVALIDAS_JS}');
		return;
		}

	var fecha_ida_aux = fecha_ida.split('-');
	var fecha_vuelta_aux = fecha_vuelta.split('-');
	var fecha1_ida = fecha_ida_aux[2];
	var fecha1_anomes = fecha_ida_aux[0] + '-' + fecha_ida_aux[1];
	var fecha2_ida = fecha_vuelta_aux[2];
	var fecha2_anomes = fecha_vuelta_aux[0] + '-' + fecha_vuelta_aux[1];

	var url = '{URL_RETORNO}' + '&fecha1_dia=' + fecha1_ida + '&fecha1_anomes=' + fecha1_anomes + '&fecha2_dia=' + fecha2_ida +'&fecha2_anomes=' + fecha2_anomes;

	window.location = url;
	
	}
function cambiar_mes(f, sentido, direccion, year, mes, fecha_inicio_calendario)
	{
	var direccion_contraria = direccion == 'ida' ? 'vuelta': 'ida';
	var mes_contrario = jQuery("#mes_actual_" + direccion_contraria).val();	
	var mes_actual = year + '-' + mes;
	
	var form =document.getElementById(f);
	
	if (direccion == 'ida')
		{
		form.fecha_inicio_calendario_ida.value = fecha_inicio_calendario;
		if (sentido == 'siguiente' && mes_actual == mes_contrario)
			{
			form.fecha_inicio_calendario_vuelta.value = fecha_inicio_calendario; 
			}
		}
	else
		{
		form.fecha_inicio_calendario_vuelta.value = fecha_inicio_calendario;
		if (sentido == 'anterior' && mes_actual == mes_contrario)
			{
			form.fecha_inicio_calendario_ida.value = fecha_inicio_calendario;
			}
		}
	

	form.submit();
	
	}
	
function cambiar_dia(fecha, direccion)
	{
	var mascara_seleccionada = jQuery("#mascara_seleccionada_" + direccion).val();
	var mascara = jQuery("#mascara_" + direccion + "_" + mascara_seleccionada).val();
    //alert('cambiar_dia: ' + direccion + " - " + fecha);
	var dia_aux = fecha.split('-')[2];
	if (mascara == '' || dia_aux == '' || (direccion == 'vuelta' && mascara.substring(dia_aux - 1, dia_aux) != '1') || document.getElementById(direccion +'_'+fecha ).className == 'dia_mes')
		{
		return;
		}

	// Verificar que no se elija fecha de vuelta mayor a fecha de ida
	var fecha_ida, fecha_vuelta, fecha_ida_cmp, fecha_vuelta_cmp;
	fecha_ida = jQuery("#fecha_ida").val();
	fecha_vuelta = jQuery("#fecha_vuelta").val();

	var direccion_opuesta;
	
	if (direccion == "ida")
		{
		direccion_opuesta = "vuelta";
		fecha_ida_cmp = (fecha.split("-")).join("");
		fecha_vuelta_cmp = fecha_vuelta == '' ? '' : fecha_vuelta.split("-").join("");
		}
	else
		{
		direccion_opuesta = "ida";
		fecha_vuelta_cmp = (fecha.split("-")).join("");
		fecha_ida_cmp = fecha_ida == '' ? '' : fecha_ida.split("-").join("");
		}

	if (fecha_ida_cmp != '' && fecha_vuelta_cmp != '' && (direccion == 'vuelta' && fecha_ida_cmp > fecha_vuelta_cmp))
		{
		return;
		}
	
	// Cambiar clases correspondientes
	var fecha_anterior = jQuery("#fecha_" + direccion).val();
	var clase_anterior = jQuery("#clase_anterior_" + direccion).val();
	
	if (clase_anterior != '' && fecha_anterior != '')
		{
		document.getElementById(direccion + "_" + fecha_anterior).className = clase_anterior;	
		}

	var clase_seleccionada = document.getElementById(direccion + "_" + fecha).className;
	jQuery("#clase_anterior_" + direccion).val(clase_seleccionada);
	document.getElementById(direccion + "_" + fecha).className = 'dia_seleccionado';
	jQuery("#fecha_" + direccion).val(fecha);
	if (direccion == 'ida' && fecha_ida_cmp > fecha_vuelta_cmp) {
	    jQuery("#fecha_vuelta").val('');
	} 

	// Actualizar calendario opuesto
	var mascara_1 = jQuery("#mascara_" + direccion + "_1").val();
	var mascara_2 = jQuery("#mascara_" + direccion + "_2").val();
	var mascara_nueva = 0;

	if (mascara_1.substring(dia_aux - 1, dia_aux) == 1)
	{
		mascara_nueva += 2;	
	}
	if (mascara_2.substring(dia_aux - 1, dia_aux) == 1)
	{
		mascara_nueva += 1;
	}
    if (mascara_nueva == 0) {
        mascara_nueva = 1;
    }

	if (direccion_opuesta != 'ida') {
	        cambiar_mascara(direccion_opuesta, mascara_nueva, fecha);
	        aplicar_minima_estadia(fecha, direccion_opuesta, mascara_nueva);
	        aplicar_maxima_estadia(fecha, direccion_opuesta, mascara_nueva);
	    } else {
	        apply_default_state('ida');
	    }
	}

function apply_default_state(direccion) {
    
    var mascara1 = jQuery("#mascara_" + direccion + "_" + 1).val();
    var mascara2 = jQuery("#mascara_" + direccion + "_" + 2).val();
    var mascara3 = jQuery("#mascara_" + direccion + "_" + 3).val();

    var inicio_mes = 1;
	var dias_mes_actual = jQuery("#dias_mes_actual_" + direccion).val();
	var mes_year_actual = jQuery("#mes_actual_" + direccion).val();
	var fin_mes = dias_mes_actual;
	//alert("Applying state for " +direccion);
	for (var dia = inicio_mes; dia <= fin_mes; dia ++)
	{
		var dia_calendario = dia < 10 ? '0' + dia : dia;
		var fecha = mes_year_actual + "-" + dia_calendario;
		var id_dia = direccion + "_" + fecha;
		var class_dia;

		if (mascara1.substring(dia - 1, dia) == '1' || mascara2.substring(dia - 1, dia) == '1' || mascara3.substring(dia - 1, dia) == '1')
		{
		    class_dia = fecha == jQuery("#fecha_" + direccion).val() ? 'dia_seleccionado' : 'dia_mes_disponible';
		} else {
			class_dia = 'dia_mes';
		}
		//log = log + dia + ": " + id_dia + " - " +class_dia + "\n";
		document.getElementById(id_dia).className = class_dia;
	}
	//	alert(log);
}

function aplicar_minima_estadia(fecha, direccion, mascara_nueva)
	{
	var dias_mes_actual = jQuery("#dias_mes_actual_" + direccion).val();
	var mascara = jQuery("#mascara_" + direccion + "_" + mascara_nueva).val();
	var mes_year_actual = jQuery("#mes_actual_" + direccion).val();


	for (var dia = 1; dia <= dias_mes_actual; dia ++)
		{
		if (mascara.substring(dia - 1, dia) == '1')
			{
			var dia_calendario = dia < 10 ? '0' + dia : dia;
			var fecha_opuesta = mes_year_actual + "-" + dia_calendario;
			var aplica_mn;
			if (mascara_nueva == 1 || mascara_nueva == 2)
				{
				aplica_mn = direccion == 'vuelta' ? 
					descartar_por_restriccion_mn(fecha, fecha_opuesta, mascara_nueva) : 
					descartar_por_restriccion_mn(fecha_opuesta, fecha, mascara_nueva);
				}
			else
				{
				var aplica_mn_1 = direccion == 'vuelta' ? 
					descartar_por_restriccion_mn(fecha, fecha_opuesta, 1) : 
					descartar_por_restriccion_mn(fecha_opuesta, fecha, 1);
				var aplica_mn_2 = direccion == 'vuelta' ? 
					descartar_por_restriccion_mn(fecha, fecha_opuesta, 2) : 
					descartar_por_restriccion_mn(fecha_opuesta, fecha, 2);
				aplica_mn = aplica_mn_1 | aplica_mn_2;
				}
				
			if (aplica_mn)
				{
				var id_dia = direccion + "_" + fecha_opuesta;
				document.getElementById(id_dia).className = 'dia_mes';
				//mascara.substring(dia - 1, dia) = 1;
				}
			}
		}
	}

function cambiar_mascara(direccion, mascara_nueva, fecha_seleccionada)
	{
	jQuery("#mascara_seleccionada_" + direccion).val(mascara_nueva);
	var mascara = jQuery("#mascara_" + direccion + "_" + mascara_nueva).val();

	var mes_year_actual = jQuery("#mes_actual_" + direccion).val();
	var dia_seleccionado_calendario =fecha_seleccionada.split("-")[2];
	var dia_seleccionado = parseInt(dia_seleccionado_calendario.charAt(0) == '0' ? dia_seleccionado_calendario.charAt(1) : dia_seleccionado_calendario);
	var mes_year_seleccionado = fecha_seleccionada.split("-").slice(0, 2).join("-");
	
	var inicio_mes = 1;
	var dias_mes_actual = jQuery("#dias_mes_actual_" + direccion).val();
	var fin_mes = dias_mes_actual;

	// Bloquear dias inviables
	if (mes_year_seleccionado == mes_year_actual)
		{
		// Bloquear fecha_vuelta < fecha_ida
		if (direccion == 'vuelta')
			{
			inicio_mes = dia_seleccionado;
			for (var dia = 1; dia < inicio_mes; dia ++)
				{
				var dia_calendario = dia < 10 ? '0' + dia : dia;
				var fecha = mes_year_actual + "-" + dia_calendario;
				var id_dia = direccion + "_" + fecha;
				document.getElementById(id_dia).className = 'dia_mes';
				}
			}
		//Bloquear fecha_ida > fecha_vuelta
		else
			{
			// fin_mes = dia_seleccionado;
			for (var dia = fin_mes + 1; dia <= dias_mes_actual; dia ++)
				{
				var dia_calendario = dia < 10 ? '0' + dia : dia;
				var fecha = mes_year_actual + "-" + dia_calendario;
				var id_dia = direccion + "_" + fecha;
				document.getElementById(id_dia).className = 'dia_mes';
				}
			}
		}

    //alert('direccion:' + direccion);
    //var log = '';
	// Pintar dias segun mascara
	for (var dia = inicio_mes; dia <= fin_mes; dia ++)
		{
		var dia_calendario = dia < 10 ? '0' + dia : dia;
		var fecha = mes_year_actual + "-" + dia_calendario;
		var id_dia = direccion + "_" + fecha;
		var class_dia;

		if (mascara.substring(dia - 1, dia) == '1')
			{
		        class_dia = fecha == jQuery("#fecha_" + direccion).val() ? 'dia_seleccionado' : 'dia_mes_disponible';
			}
		else
			{
			class_dia = 'dia_mes';
			}
			//log = log + dia + ": " + id_dia + " - " +class_dia + "\n";
		document.getElementById(id_dia).className = class_dia;
		}
		//alert(log);
	}

function descartar_por_restriccion_mn(fecha_ida, fecha_vuelta, farebasis)
	{
	var retorno_or = 0;
	var retorno_and = 1;
	var retorno2 = 1;
	var dias_es_min = jQuery("#dias_es_min_f" + farebasis).val();

	var fecha_ida_cmp = (fecha_ida.split("-")).join("");
	var fecha_vuelta_cmp = (fecha_vuelta.split("-")).join("");
	if (fecha_ida_cmp > fecha_vuelta_cmp)
		{
		return 1;
		}

	if (dias_es_min != null && dias_es_min != '')
		{
		var fecha_ida_aux = fecha_ida.split("-");
		var fecha_vuelta_aux = fecha_vuelta.split("-");
		var un_dia = 1000*60*60*24;
		var date_ida = new Date(fecha_ida_aux[0], fecha_ida_aux[1]-1, fecha_ida_aux[2]);
		var date_vuelta = new Date(fecha_vuelta_aux[0], fecha_vuelta_aux[1]-1, fecha_vuelta_aux[2]);
		
		if (Math.ceil((date_vuelta - date_ida) / un_dia) < dias_es_min)
			{
			retorno_or = 0;
			retorno_and = 0;
			}
		else
			{
			retorno_or = 1;
			retorno_and = 1;
			}
		}
	
	var noche_est_min1 = jQuery("#noche_est_min1_f" + farebasis).val();
	var noche_est_min2 = jQuery("#noche_est_min2_f" + farebasis).val();
	var op1 = jQuery("#op1_f" + farebasis).val();

	if (noche_est_min1 != '' || op1 != '' && noche_est_min2 != '')
		{
		retorno2 = valida_reglas_mn_noches(fecha_ida, fecha_vuelta, farebasis);
		}
	if (op1 != '' && op1 == 'OR')
		{
		if (retorno_or == 1 || retorno2 == 1)
			{
			return (0);
			}
		else
			{
			return (1);
			}
		}
	else
		{
		if (retorno_and == 1 && retorno2 == 1)
			{
			return (0);
			}
		else
			{
			return (1);
			}
		}
	}

function valida_reglas_mn_noches(fecha_ida, fecha_vuelta, farebasis)
	{
	var op1 = jQuery("#op1_f" + farebasis).val();

	var bits_dias = 0;
	var week = new Object();
	week['MON'] = 0;
	week['TUE'] = 1;
	week['WED'] = 2;
	week['THU'] = 3;
	week['FRI'] = 4;
	week['SAT'] = 5;
	week['SUN'] = 6;
	var mask_mn = 0;
	var max_operandos = 4;

	for (var i=1; i<=max_operandos; i++)
		{
		if (!jQuery("#noche_est_min" + i + "_f" + farebasis).val())
			{
			continue;
			}
		var dia = week[jQuery("#noche_est_min" + i + "_f" + farebasis).val()];
		mask_mn |= Math.pow(2, dia);
		}

	var fecha_ida_aux = fecha_ida.split("-");
	var fecha_vuelta_aux = fecha_vuelta.split("-");
	var un_dia = 1000*60*60*24;
	var date_ida = new Date(fecha_ida_aux[0], fecha_ida_aux[1]-1, fecha_ida_aux[2]);
	var date_vuelta = new Date(fecha_vuelta_aux[0], fecha_vuelta_aux[1]-1, fecha_vuelta_aux[2]);
	var delta_days = Math.ceil((date_vuelta - date_ida) / un_dia);
	var di = date_ida.getUTCDay();
	var dt = date_vuelta.getUTCDay();
	var i;
	var largo_semana = 7;

	if (delta_days >= largo_semana)
		{
		di = 0;
		dt = 6;
		for (i=0; i<largo_semana; i++)
			{
			bits_dias |= (1 << i);
			}
		}
	else
		{
		for (i=di % largo_semana; i % largo_semana != dt; i=(i+1) % largo_semana)
			{
			 bits_dias |= (1 << i);
			}
		}
	if( op1 == '' && (bits_dias & mask_mn) == mask_mn)
		{
		return 1;
		}
	else if( op1 == 'AND' && (bits_dias & mask_mn) == mask_mn)
		{
		return 1;
		}
	else if (op1 == 'OR' && (bits_dias & mask_mn) != 0)
		{
		return 1;
		}
	else
		{
		return 0;
		}
	}

function obtener_fecha_mx_estadia(fecha, direccion)
	{
	var mx_f1 = jQuery("#mx_f1").val().split(" "); 
	var mx_f2 = jQuery("#mx_f2").val().split(" ") ; 

	if ((mx_f1 == null || mx_f1 == '') && (mx_f2 == null || mx_f2 == ''))
		{
		return 0;
		}

	var fecha_seleccionada = fecha.split("-");
	var date = new Date(fecha_seleccionada[0], fecha_seleccionada[1]-1, fecha_seleccionada[2]);

	var date_f1 = mx_f1 != '' ? new Date(date.getFullYear(), date.getMonth(), date.getDate()) : null;
	var date_f2 = mx_f2 != '' ? new Date(date.getFullYear(), date.getMonth(), date.getDate()) : null;

	if (direccion == 'ida')
		{
		mx_f1[0] = parseInt(mx_f1[0]) * -1;
		mx_f2[0] = parseInt(mx_f2[0]) * -1;
		}

	if (mx_f1 != '' && mx_f1[1] == 'DAY')
		{
		date_f1.setDate(date_f1.getDate() + parseInt(mx_f1[0]));
		}
	else if (mx_f1 != '' && mx_f1[1] == 'MONTH')
		{
		date_f1.setMonth(date_f1.getMonth() + parseInt(mx_f1[0]));
		}
	if (mx_f2 != '' && mx_f2[1] == 'DAY')
		{
		date_f2.setDate(date_f2.getDate() + parseInt(mx_f2[0]));
		}
	else if (mx_f2 != '' && mx_f2[1] == 'MONTH')
		{
		date_f2.setMonth(date_f2.getMonth() + parseInt(mx_f2[0]));
		}
	var fecha_menor;

	if (!date_f1)
		{
		fecha_menor = date_f2.getFullYear()+"-"+date_f2.getMonth()+"-"+date_f2.getDate();
		}
	else if (!date_f2)
		{
		fecha_menor = date_f1.getFullYear()+"-"+date_f1.getMonth()+"-"+date_f1.getDate();
		}
	else
		{
		if (direccion == 'vuelta')
			{
			fecha_menor = (date_f1 - date_f2) > 0 ? date_f2.getFullYear()+"-"+date_f2.getMonth()+"-"+date_f2.getDate(): date_f1.getFullYear()+"-"+date_f1.getMonth()+"-"+date_f1.getDate();
			}
		else
			{
			fecha_menor = (date_f1 - date_f2) > 0 ? date_f1.getFullYear()+"-"+date_f1.getMonth()+"-"+date_f1.getDate(): date_f2.getFullYear()+"-"+date_f2.getMonth()+"-"+date_f2.getDate();
			}
		}

	var fecha_menor_aux = fecha_menor.split("-");
	fecha_menor_aux[1]++;
	fecha_menor_aux[1] = fecha_menor_aux[1] < 10 ? '0' + fecha_menor_aux[1] : fecha_menor_aux[1];
	fecha_menor_aux[2] = fecha_menor_aux[2] < 10 ? '0' + fecha_menor_aux[2] : fecha_menor_aux[2];

	return fecha_menor_aux[0]+"-"+fecha_menor_aux[1]+"-"+fecha_menor_aux[2];
	}

function aplicar_maxima_estadia(fecha, direccion, mascara_nueva)
	{
	var dias_mes_actual = jQuery("#dias_mes_actual_" + direccion).val();
	var mascara = jQuery("#mascara_" + direccion + "_" + mascara_nueva).val();
	var mes_year_actual = jQuery("#mes_actual_" + direccion).val();
	var fecha_mx_estadia = obtener_fecha_mx_estadia(fecha, direccion);
	if (!fecha_mx_estadia)
		{
		return;
		}
	var fecha_mx_estadia_split = fecha_mx_estadia.split("-");
	var fecha_mx_estadia_aux = new Date(fecha_mx_estadia_split[0], fecha_mx_estadia_split[1]-1, fecha_mx_estadia_split[2]);

	for (var dia = 1; dia <= dias_mes_actual; dia ++)
		{
		if (mascara.substring(dia - 1, dia) == '1')
			{
			var dia_calendario = dia < 10 ? '0' + dia : dia;
			var fecha_opuesta = mes_year_actual + "-" + dia_calendario;
			var fecha_opuesta_split = fecha_opuesta.split("-");
			var fecha_opuesta_aux = new Date(fecha_opuesta_split[0], fecha_opuesta_split[1]-1, fecha_opuesta_split[2]);
			var aplica_mx;
			if (direccion == 'vuelta')
				{
				aplica_mx = fecha_opuesta_aux <= fecha_mx_estadia_aux ? 0 : 1;
				}
			else
				{
				aplica_mx = fecha_opuesta_aux >= fecha_mx_estadia_aux ? 0 : 1;
				}
			if (aplica_mx)
				{
				var id_dia = direccion + "_" + fecha_opuesta;
				document.getElementById(id_dia).className = 'dia_mes';
				//mascara.substring(dia - 1, dia) = 1;
				}
			}
		}
	
	}
	jQuery('document').ready(function() {
	    
        apply_default_state('ida');
        apply_default_state('vuelta');
        return;
    	if (direccion_opuesta != 'ida') {
    	        cambiar_mascara(direccion_opuesta, mascara_nueva, fecha);
    	        aplicar_minima_estadia(fecha, direccion_opuesta, mascara_nueva);
    	        aplicar_maxima_estadia(fecha, direccion_opuesta, mascara_nueva);
    	} else {
    	        apply_default_state('ida', mascara_nueva);
    	}
	});
</script>

<input type="hidden" id="clase_anterior_ida" value='' >
<input type="hidden" id="clase_anterior_vuelta" value='' >

<input type="hidden" id="fecha_ida" value=''/>
<input type="hidden" id="fecha_vuelta" value=''/>

<input type="hidden" id="mascara_ida_1" value='{MASCARA_IDA_1}'/>
<input type="hidden" id="mascara_ida_2" value='{MASCARA_IDA_2}'/>
<input type="hidden" id="mascara_vuelta_1" value='{MASCARA_VUELTA_1}'/>
<input type="hidden" id="mascara_vuelta_2" value='{MASCARA_VUELTA_2}'/>
<input type="hidden" id="mascara_ida_3" value='{MASCARA_IDA_COMBINADA}' />
<input type="hidden" id="mascara_vuelta_3" value='{MASCARA_VUELTA_COMBINADA}' />

<input type="hidden" id="mascara_seleccionada_ida" value='3'/>
<input type="hidden" id="mascara_seleccionada_vuelta" value='3'/>

<input type="hidden" id="dias_es_min_f1" value='{DIAS_ES_MIN_F1}' />
<input type="hidden" id="noche_est_min1_f1" value='{NOCHE_EST_MIN1_F1}' />
<input type="hidden" id="noche_est_min2_f1" value='{NOCHE_EST_MIN2_F1}' />
<input type="hidden" id="noche_est_min3_f1" value='{NOCHE_EST_MIN3_F1}' />
<input type="hidden" id="noche_est_min4_f1" value='{NOCHE_EST_MIN4_F1}' />
<input type="hidden" id="op1_f1" value='{OP1_F1}' />
<input type="hidden" id="mx_f1" value='{MX_F1}' />

<input type="hidden" id="dias_es_min_f2" value='{DIAS_ES_MIN_F2}' />
<input type="hidden" id="noche_est_min1_f2" value='{NOCHE_EST_MIN1_F2}' />
<input type="hidden" id="noche_est_min2_f2" value='{NOCHE_EST_MIN2_F2}' />
<input type="hidden" id="noche_est_min3_f2" value='{NOCHE_EST_MIN3_F2}' />
<input type="hidden" id="noche_est_min4_f2" value='{NOCHE_EST_MIN4_F2}' />
<input type="hidden" id="op1_f2" value='{OP1_F2}' />
<input type="hidden" id="mx_f2" value='{MX_F2}' />


<form id='form_calendario' name='form_calendario'  action='/cgi-bin/compra/paso_calendario.cgi'  method='post'>
	<input name="id_promocion" type="hidden" id="id_promocion" value='{ID_PROMOCION}'/>
	<input name="nadults" type="hidden" id="nadults" value='{NADULTS}'/>
	<input name="nchildren" type="hidden" id="nchildren" value='{NCHILDREN}'/>
	<input name="ninfants" type="hidden" id="ninfants" value='{NINFANTS}'/>
	<input name="fecha_vuelo_ida" type="hidden" id="fecha_vuelo_ida" value='{FECHA_VUELO_IDA}'/>
	<input name="fecha_inicio_calendario_vuelta" type="hidden" id="fecha_inicio_calendario_vuelta" value='{FECHA_CALENDARIO_VUELTA}'/>
	<input name="fecha_inicio_calendario_ida" type="hidden" id="fecha_inicio_calendario_ida" value='{FECHA_CALENDARIO_IDA}'/>
    <input name="back_url" type="hidden" id="back_url" value='{BACK_URL}' />

<div id="asistencia">
<h3>{ORIGEN} - {DESTINO}</h3>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="buscador_tarifas" id="id_tabla_compra_normal_calendario_buscador_tarifas">
  <tr>
    <td>
	<p>{_MSG_BUSCADOR_TARIFA_2}</p>
    </td>
	</tr>
	<tr>
	<td style="padding:0px; margin:0px;"><div id="calendario_tarifas">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td style="text-align:center; padding:0px 0px 4px 0px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td style="width:35%;"></td>
    <td style="width:65%; text-align:center;padding:0px;"><strong>{_LABEL_IDA}</strong></td>
    
  </tr>
</table>
</td>
    <td>&nbsp;</td>
    <td style="padding:0px 0px 4px 0px; text-align:center;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="width:65%; text-align:center;padding:0px;"><strong>{_LABEL_REGRESO}</strong></td>
        <td style="width:35%;"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td style="padding:0px; float:right;">{CALENDARIO_IDA}</td>
    <td style="width:50px;">&nbsp;</td>
    <td style="padding:0px; float:left;">{CALENDARIO_VUELTA}</td>
  </tr>
</table>

	

	
	</div>
  </td>
  </tr>
  <tr><td><br>{_MSG_ACTUALIZAR_TARIFAS}</td>
  </tr>
  
</table>

	
</div>
</form>
<br>
<table width="100%" border="0" cellpadding="0" cellspacing="0" id="barra-continuar">
<tr>
<td style="text-align:left; width:25%; padding:0px; margin:0px;"><input class="button-process-small-back bluegrey-back" value='{_LABEL_VOLVER}' type="submit" ONCLICK="window.location.href='{BACK_URL}'"></td>
<td style="width:50%;">&nbsp;</td>
<td style="text-align:right; width:25%; padding:0px; margin:0px;"><input type="button"  id="btn_paso_calendario"  value='{_LABEL_CONTINUAR}' onClick="check_and_submit()" class="button-process"></td>
</tr>
</table>
