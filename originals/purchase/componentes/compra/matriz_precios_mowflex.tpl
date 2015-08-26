<script type="text/javascript">

var last_ida_painted = '';
var last_vuelta_painted = '';
var last_fechas_painted = '';

function init(f, fecha_ida, fecha_vuelta)
	{
	var val = getRadioValue(f.fechas);
	
	if (typeof(f.fechas) != 'undefined')
		{
		for (var i = 0; i < f.fechas.length; ++i)
			{
			if (f.fechas[i].value == fecha_ida + '|' + fecha_vuelta)
				{
				f.fechas[i].checked = true;
				set_fechas(f, fecha_ida, fecha_vuelta);
				break;
				}
			}
		}
	}

function set_fechas(f, f0, f1)
	{
	unset_fechas(f);

	document.getElementById('fecha_ida_seleccionada').value = f0;
	document.getElementById('fecha_vuelta_seleccionada').value = f1;

	// La celda misma
	last_fechas_painted = 'fechas_' + f0 + '|' + f1;
	document.getElementById('fecha_monto_seleccionada').value = document.getElementById(last_fechas_painted + '_monto').value;
	celda = document.getElementById(last_fechas_painted);
	var color = (document.getElementById(last_fechas_painted + '_color')).value;

	celda.className = 'color_celda_selected';

	// La fila con las fechas de ida
	last_ida_painted = 'ida_' + f0;
	var celda = document.getElementById(last_ida_painted);
	//celda.className = 'selected';
	celda.className = 'color_dia_selected selected';
	celda.style.color = "#000000";
	
	var fecha_ida = f0.split('-');
	f.fecha1_dia.value = fecha_ida[2];
	f.fecha1_anomes.value = fecha_ida[0] + '-' + fecha_ida[1];

	// La columna con las fechas de vuelta
	if (f.num_segmentos_interfaz.value == 2)
		{
		last_vuelta_painted = 'vuelta_' + f1;
		celda = document.getElementById(last_vuelta_painted);
		celda.className = 'color_dia_selected selected';
		celda.style.color = "#000000";
		var fecha_vuelta = f1.split('-');
		f.fecha2_dia.value = fecha_vuelta[2];
		f.fecha2_anomes.value = fecha_vuelta[0] + '-' + fecha_vuelta[1];
		}
	}

function unset_fechas(f)
	{
	if (last_ida_painted == '')
		{
		return;
		}

	var celda = document.getElementById(last_ida_painted);
	celda.className = 'unselected';
//	celda.style.backgroundColor = '';
//	celda.style.color = '';
	
	if (f.num_segmentos_interfaz.value == 2)
		{
		celda = document.getElementById(last_vuelta_painted);
		celda.className = 'unselected';
		}

	celda = document.getElementById(last_fechas_painted);
	var color = (document.getElementById(last_fechas_painted + '_color')).value;
	celda.className = color + ' unselected';

//	celda.style.backgroundColor = '';
//	celda.style.color = '';
//	celda.style.backgroundImage = "";
	}

function set_fechas_segun_radio(f)
	{
	var fechas_arr;
	var algo_checked = false;

	if (typeof(f.fechas) != 'undefined')
		{
		for (i = 0; i < f.fechas.length; i++)
			{
			if (f.fechas[i].checked == true)
				{
				var val = f.fechas[i].value;
				fechas_arr = val.split('|');
				algo_checked = true;
				break //exist for loop, as target acquired.
				}
			}
		}
	if (algo_checked)
		{
		set_fechas(f, fechas_arr[0], fechas_arr[1]);
		}
	}


function celda_mouse_over(form, f_ida, f_vuelta)
	{
	// La celda donde estoy parado
	var celda_id = 'fechas_' + f_ida + '|' + f_vuelta;
	var celda = document.getElementById(celda_id);
	
	if (f_ida == document.getElementById('fecha_ida_seleccionada').value &&
		f_vuelta == document.getElementById('fecha_vuelta_seleccionada').value)
		{
		return;
		}

	// La fila con las fechas de ida
	var celda_ida = document.getElementById('ida_' + f_ida);
	celda_ida.className = 'color_over_dia';
	celda_ida.style.color = '#FFFFFF';

	celda.className = 'color_celda_over';

	// La columna con las fechas de vuelta
	if (form.num_segmentos_interfaz.value == 2)
		{
		var celda_vuelta = document.getElementById('vuelta_' + f_vuelta);
		celda_vuelta.className = 'color_over_dia';
		celda_vuelta.style.color = '#FFFFFF';
		}
	}

function celda_mouse_out(form, f_ida, f_vuelta, class_color)
	{
	var celda_ida = document.getElementById('ida_' + f_ida);


	if (f_ida == document.getElementById('fecha_ida_seleccionada').value &&
		f_vuelta == document.getElementById('fecha_vuelta_seleccionada').value)
		{
		return;
		}


	if (f_ida == document.getElementById('fecha_ida_seleccionada').value)
		{
		celda_ida.className = 'color_dia_selected';
		celda_ida.style.color = '#000000';
		}
	else
		{
		celda_ida.className = 'unselected';
		}

	if (form.num_segmentos_interfaz.value == 2)
		{
		var celda_vuelta = document.getElementById('vuelta_' + f_vuelta);
		if (f_vuelta == document.getElementById('fecha_vuelta_seleccionada').value)
			{
			celda_vuelta.className = 'color_dia_selected';
			celda_vuelta.style.color = '#000000';
			}	
		else
			{
			celda_vuelta.className = 'unselected';
			}
		}

	var celda_id = 'fechas_' + f_ida + '|' + f_vuelta;
	var celda = document.getElementById(celda_id);

	var radio_id = 'radio_' + f_ida + '|' + f_vuelta;
	var radio = document.getElementById(radio_id);
	if (!(radio && radio.checked))
		{
		celda.className = class_color;
		}
	}

function celda_mouse_click(form, f_ida, f_vuelta)
	{
	var radio_id = 'radio_' + f_ida + '|' + f_vuelta;
	var radio = document.getElementById(radio_id);

	if(radio)
		{
		radio.checked = true;
		set_fechas(form, f_ida, f_vuelta);
		celda_mouse_over(form, f_ida, f_vuelta);
		}	
	}
</script>

<style type="text/css">

.flex_matrix{
	background-color: #fff;
	border: none;
	margin:0;
	padding:0;
}

.flex_matrix td {
	border: none;
	text-align: left;
	vertical-align: middle;
	cursor: pointer;
	padding:0px;
	margin: 0px;
	}
	
.flex_matrix th {
	text-align: center;
	vertical-align: middle;
	color: #ffffff;
	font-size:11px;
	height:25px;
	padding:0px;
	margin:0px;
	background-color:#5b81aa;
	}
	


.legend table {
	border-width: 0px;
	text-align: center;
	vertical-align: middle;
	border-collapse: collapse;
	padding-left: 5px;
	padding-right: 5px;

	}

.legend th {
	font-size: xx-small;  
	font-style: normal;
	}
	
.legend {
	padding-left: 5px;
	padding-right: 5px
	border-width: 0px;
	/*text-align: right;*/
	float:left;
	/*clear:left;*/
	font-size: xx-small;  
	font-style: normal;
	width:100%;
}

.vertical td {
	border-width: 0px;
	text-align: center; 
	vertical-align: middle;
    }

.vertical{
	border-width: 0px;
	text-align: center;
	vertical-align: middle;
	
    }
	
.verticalelement {
	border-width: 0px;
	text-align: center;
	vertical-align: middle;
	padding-left: 1px;
	padding-right: 1px;
	}
	
th.selected {
	font-weight: bold;
	}
td.selected {
	font-weight: bold;
	}

/* colores para cuando el puntero esta sobre la celda*/
.color_celda_over {
	background-image: url('/images/common/bg_tarifas_mowflex_over.gif');
	background-color: #033D7D;
	border-color:#FFFFFF;
	color: #FFFFFF;
	}

.color_over_dia {
	background-image: url('/images/common/bg_tarifas_mowflex_over_dia.gif');
	background-color: #033D7D;
	color: #FFFFFF;
	}

.color_dia_selected { 
	background-image: url('/images/common/bg_tarifas_mowflex_selec.gif');
	background-color: #FDE966;
	color: #000000;
	font-weight: bold;
	}

.color_celda_selected { 
	background-image: url('/images/common/bg_tarifas_mowflex_selec.gif');
	background-color: #FDE966;
	color: #000000;
	font-weight: bold;
	}


/* Colores para tarifas - 1 es la mas barata */
.color_7 {
	/*background-color: rgb(150, 154, 168);*/
	background-image: url('/images/common/bg_tarifas_mowflex.gif');
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	}
.color_6 {
	/*background-color: rgb(150, 154, 168);*/
	background-image: url('/images/common/bg_tarifas_mowflex.gif');
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	}
.color_5 {
	/*background-color: rgb(170, 174, 188);*/
	background-image: url('/images/common/bg_tarifas_mowflex.gif');
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	}
.color_4 {
	/*background-color: rgb(190, 194, 208);*/
	background-image: url('/images/common/bg_tarifas_mowflex.gif');
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	}
.color_3 {
	/*background-color: rgb(210, 214, 228);*/
	background-image: url('/images/common/bg_tarifas_mowflex.gif');
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	
	}
.color_2 {
	/*background-color: rgb(230, 234, 248);*/
	background-image: url('/images/common/bg_tarifas_mowflex.gif');
	background-color: #FFF;
	border-color:#FFF;
	}
.color_1 {
	border: 1px solid #000000;
	background: #dde0e3 url('/images/common/bg_tarifas_mowflex_economica.gif') repeat-x bottom;
	color:#000000;
}

.color {
	background-image: url('/images/common/bg_tarifas_mowflex.gif');
}

/* Este es el de las celdas vacias */
.color_0 {
	/*background-color: rgb(230, 234, 248);*/
	background-color: #FFFFFF;
	border-color: #FFFFFF;
	}

.color_legend_1 {
	background-color: #6A72A3;
	border-color:#000000;

}

.color_legend_2 {
	background-color: #99DBD1;
	border-color:#000000;
}

.color_fecha_seleccionada{
	background-image: url('/images/common/bg_tarifas_mowflex_economica.gif');
	background-color: #FDEB7F;
	border-color:#000000;
}

</style>

<input type='hidden' name='fecha1_dia' value=''>
<input type='hidden' name='fecha1_anomes' value=''>
<input type='hidden' name='fecha2_dia' value=''>
<input type='hidden' name='fecha2_anomes' value=''>

<input type='hidden' id='fecha_ida_seleccionada' value=''>
<input type='hidden' id='fecha_vuelta_seleccionada' value=''>
<input type='hidden' id='fecha_monto_seleccionada' value=''>

<input type='hidden' id='fecha_ida_min' value='{FECHA_IDA_MIN}'>
<input type='hidden' id='fecha_ida_max' value='{FECHA_IDA_MAX}'>
<input type='hidden' id='fecha_vuelta_min' value='{FECHA_VUELTA_MIN}'>
<input type='hidden' id='fecha_vuelta_max' value='{FECHA_VUELTA_MAX}'>

{*BLOCK_OW}
<div id="content_tb_process">
<h2>{_LABEL_SELECCIONE_FECHA}</h2>
<div id="box_content_process">
<div id="box_int_border_process">
	<!--<h4>{_PASO2_FLEX_TITULO_SELECCIONA_FECHA}</h4> -->
	<table width="100%" border="0" cellpadding="0" cellspacing="2" class="flex_matrix">
		<tr>
    		<td style="padding:0px; margin:0px; vertical-align:middle;">{*SEMANA_ANTERIOR_IDA}
				<a href='{PARAMETROS_PASO2_SEMANA_ANTERIOR_IZQUIERDA}' class="sinlinea" title="{_MSG_RETROCEDER_SEMANA}"><img width="23" height="23" src='/images/common/fle_simple_retroceder_ida.gif' border='0' alt="{_MSG_RETROCEDER_SEMANA}" ></a>
			{/SEMANA_ANTERIOR_IDA}</td>
			{*COLUMNA_IDA_HEADER}
			<th class="unselected" id="ida_{FECHA}"> 
				  <!-- {_LABEL_SALIENDO}-->
				<b>{FECHA_FORMAT}</b>
		  </th>

			
			{/COLUMNA_IDA_HEADER} 
    		<td style="padding:0px; margin:0px; vertical-align:middle;">{*SEMANA_SIGUIENTE_IDA}
				<a href='{PARAMETROS_PASO2_SEMANA_SIGUIENTE_DERECHA}' class="sinlinea" title="{_MSG_AVANZAR_SEMANA}"><img width="23" height="23" src='/images/common/fle_simple_avanzar_ida.gif' alt='{_MSG_AVANZAR_SEMANA}' border='0'></a>
			{/SEMANA_SIGUIENTE_IDA}</td>
		</tr>
		{*FILA_OW}
		<tr>
			<td style="background-color:#FFFFFF; border:none;"></td>
			{*COLUMNA_IDA}
			<td class="color_{COLOR} unselected" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}" onMouseOver="celda_mouse_over({FORM_NAME}, '{FECHA_IDA}', '{FECHA_VUELTA}');" onMouseOut="celda_mouse_out({FORM_NAME}, '{FECHA_IDA}', '{FECHA_VUELTA}', 'color_{COLOR}');" onClick="celda_mouse_click({FORM_NAME}, '{FECHA_IDA}', '{FECHA_VUELTA}'); {DESPLIEGA_OWFLEX}" style='text-align: center; vertical-align: middle; border:1px solid #EAEAEA; padding-top:2px; padding-bottom: 2px;'>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_color" value="color_{COLOR}"/>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_bg_familia" value="{BG_COLOR_FAMILIA}"/>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_fg_familia" value="{FG_COLOR_FAMILIA}"/>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_monto" value="{MONTO}"/>

			<input name="fechas" type="radio" id="radio_{FECHA_IDA}|{FECHA_VUELTA}" value="{FECHA_IDA}|{FECHA_VUELTA}" style='display:none' onclick="set_fechas(this.form, '{FECHA_IDA}', '{FECHA_VUELTA}');"/>
			{SIGNO}{TARIFA}
			</td>
			{/COLUMNA_IDA} 

			{*COLUMNA_IDA_VACIA}
			<td class="color_0 unselected" style='text-align: center; vertical-align: middle; cursor: default; border:1px solid #EAEAEA;'>
				&mdash;
			</td>
			{/COLUMNA_IDA_VACIA}
			
		</tr>
		{/FILA_OW}
	</table>
	{*MSG_TARIFA_MAS_BARATA_BLOCK_OW}
	<!--
	<div class="content_legend">
	<table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size:xx-small;">
  <tr>
    <td class="color_legend_2" style="width:10px;">&nbsp;</td>
    <td style="padding-left:5px;">{_LABEL_IDA}</td>
	<td><img width="6" height="9" src='http://www.lan.com/images/common/iconos/flecha_simple_re.gif' alt='{_MSG_RETROCEDER_SEMANA}' border='0'></td>
	<td style="padding-left:5px;">{_MSG_RETROCEDER_SEMANA}</td>
	<td><img width="6" height="9" src='http://www.lan.com/images/common/iconos/flecha_simple.gif' alt='{_MSG_AVANZAR_SEMANA}' border='0'></td>
	<td style="padding-left:5px;">{_MSG_AVANZAR_SEMANA}</td>
	</tr>
</table>
</div>
	 -->
	{/MSG_TARIFA_MAS_BARATA_BLOCK_OW}
   </div>
{*BLOQUE_VALORES_EN}
<div id="nota">{_NOTA_VALOR}&nbsp;{_VALORES_EN}&nbsp;{NOMBRE_MONEDA}&nbsp;{_FF_POR_PERSONA_MOWFLEX}</div>
{/BLOQUE_VALORES_EN}
</div>
</div> 
{/BLOCK_OW}

{*BLOCK_RT}
<div id="content_tb_process">
<h2>{_LABEL_SELECCIONE_FECHA}</h2>
<div id="box_content_process">
<div id="box_int_border_process">
	<!--<h4>{TITULO_SELECCIONA}</h4> -->
	<table class="flex_matrix" cellpadding="0" cellspacing="2" width="100%" border="0">
		<tr>
		
			
			<th rowspan='2' style="text-align: center; color: #666; background-color:#FFFFFF; padding:0px ; margin:0px; font-size:10px; font-weight:normal; border: 1px solid #FFF"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="background-image: url('/images/common/bg_ida_regreso.gif');">
              <tr>
                <td style="text-align:right; font-size:10px; padding: 0px 5px 0px 5px; margin:0px; vertical-align:middle; cursor:auto;"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td style="text-align:right; font-size:11px; cursor:auto; padding: 0px; margin: 0px; font-weight: normal; color:#333333;">{_LABEL_IDA}</td>
                  </tr>
                  <tr>
                    <td style="text-align:left; font-size:11px; cursor:auto; padding:0px; margin: 0px; font-weight: normal; color:#333333;">{_LABEL_REGRESO}</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td></td>
              </tr>
              <tr>
                <td style="text-align:center; font-size:10px;"></td>
              </tr>
            </table></th> 
			
			
			{*BLOQUE_SUP_IZ_EASYFLY}
			<th rowspan='2' style="text-align: center; color: #666; font-weight: bold; background-color:#F3F3F4; padding:0 0 2px 0; margin:0px; font-size:10px; border: 1px solid #E7E8EA;">{_MSG_SUP_IZ_EASYFLY}<br></th> 
			{/BLOQUE_SUP_IZ_EASYFLY}
	

		</tr>
		
		<tr>

			<td style="background-color:#FFFFFF; border:none;"></td>
			<td style="padding:0px; margin:0px; vertical-align:middle;">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" height="8" style="vertical-align:middle;">
  					<tr>
    						<td style=" padding:0px; margin:0px; vertical-align:middle; border:none; width:12px; height:8px; cursor:auto;">{*SEMANA_ANTERIOR_IDA}
							<a href='{PARAMETROS_PASO2_SEMANA_ANTERIOR_IZQUIERDA}' class="sinlinea" title="{_MSG_RETROCEDER_SEMANA}"><img width="23" height="23" src='/images/common/fle_simple_retroceder_ida.gif' border='0' alt="{_MSG_RETROCEDER_SEMANA}" ></a>
						{/SEMANA_ANTERIOR_IDA}</td>
					</tr>
					
				</table>
		  	</td>
			{*COLUMNA_IDA_HEADER}
			<th class="unselected" id="ida_{FECHA}"> 
				<!--{_LABEL_SALIENDO} -->
				<b>{FECHA_FORMAT}</b>
			</th>
			{/COLUMNA_IDA_HEADER}
		  	<td style="padding:0px; margin:0px; vertical-align:middle; cursor:auto;">{*SEMANA_SIGUIENTE_IDA}
							<a href='{PARAMETROS_PASO2_SEMANA_SIGUIENTE_DERECHA}' class="sinlinea" title="{_MSG_AVANZAR_SEMANA}"><img width="23" height="23" src='/images/common/fle_simple_avanzar_ida.gif' alt='{_MSG_AVANZAR_SEMANA}' border='0'></a>
						{/SEMANA_SIGUIENTE_IDA}</td>
			
		</tr>		
		<tr>
			<td style="background-color:#FFFFFF; border:none;"> </td>
			<td colspan="9" style="background-color:#FFFFFF; border:none;"></td>
		</tr>
		<tr>
			<td style="padding:0px; margin:0px; height:8px; vertical-align:middle; text-align:center; cursor:auto;">
			{*SEMANA_ANTERIOR_IDA_VUELTA}
							<a href='{PARAMETROS_PASO2_SEMANA_ANTERIOR_IDA_VUELTA}' class="sinlinea" title="{_MSG_RETROCEDER_SEMANA}"><img width="23" height="23" src='/images/common/fle_simple_retroceder_regreso.gif' border='0' alt= '{_MSG_RETROCEDER_SEMANA}' ></a>
						{/SEMANA_ANTERIOR_IDA_VUELTA}</td>
			<td colspan="9" style="background-color:#FFFFFF; border:none; height:23px; cursor: auto;"></td>
		</tr>

		{*FILA_VUELTA}
		<tr>
			{*FIRST_COLUMN}
			{/FIRST_COLUMN}
			<th id="vuelta_{FECHA}"> <!--{_LABEL_VOLVIENDO}-->
			  	<b>{FECHA_FORMAT}</b>
		  	</th>
			<td style="background-color:#FFFFFF; border:none;"></td>	
			<td style="background-color:#FFFFFF; border: none;"></td>	
			{*COLUMNA_IDA_RT}
			<td  class="color_{COLOR} unselected" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}" onMouseOver="celda_mouse_over({FORM_NAME}, '{FECHA_IDA}', '{FECHA_VUELTA}');" onMouseOut="celda_mouse_out({FORM_NAME}, '{FECHA_IDA}', '{FECHA_VUELTA}', 'color_{COLOR}');" onClick="celda_mouse_click({FORM_NAME}, '{FECHA_IDA}', '{FECHA_VUELTA}'); {DESPLIEGA_OWFLEX}" style='text-align: center; vertical-align: middle; border-right:1px solid #e7e7e7; border-bottom:1px solid #e7e7e7; border-top:1px solid #cccccc; border-left:1px solid #cccccc; '>

				<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_color" value="color_{COLOR}"/>
				<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_bg_familia" value="{BG_COLOR_FAMILIA}"/>
				<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_fg_familia" value="{FG_COLOR_FAMILIA}"/>
			        <input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_monto" value="{MONTO}"/>
				<input name="fechas" type="radio" id="radio_{FECHA_IDA}|{FECHA_VUELTA}" value="{FECHA_IDA}|{FECHA_VUELTA}" style='display:none' onclick="set_fechas(this.form, '{FECHA_IDA}', '{FECHA_VUELTA}');"/>
				{*BLOQUE_DESDE}
					{DESDE}
					{/BLOQUE_DESDE}
				{SIGNO}{TARIFA}
			</td>
			
			{/COLUMNA_IDA_RT}

			{*COLUMNA_IDA_RT_VACIA}
			<td class="color_0 unselected" style='text-align: center; vertical-align: middle; cursor: default; border:1px solid #EAEAEA;'>
				&mdash;
			</td>
			{/COLUMNA_IDA_RT_VACIA}
			
		</tr>
		{/FILA_VUELTA} 
		
		<tr>
			<td style="padding:0px; margin:0px; vertical-align:middle; text-align:center; cursor:auto;">{*SEMANA_SIGUIENTE_VUELTA}
							<a href='{PARAMETROS_PASO2_SEMANA_SIGUIENTE_ABAJO}' class="sinlinea" title="{_MSG_AVANZAR_SEMANA}"><img width="23" height="23" src='/images/common/fle_simple_avanzar_regreso.gif' alt='{_MSG_AVANZAR_SEMANA}' border='0' ></a>
						{/SEMANA_SIGUIENTE_VUELTA}</td>
			<td style="background-color:#ffffff; border:none; height:23px;"></td>
			<td style="background-color:#ffffff;"></td>
			<td style="background-color:#ffffff;"></td>
			<td style="background-color:#ffffff;"></td>
			<td style="background-color:#ffffff;"></td>
			<td style="background-color:#ffffff;"></td>
			<td style="background-color:#ffffff;"></td>
			<td style="background-color:#ffffff;"></td>
			<td style="background-color:#ffffff;"></td>
			<td style="background-color: #FFFFFF;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <!--<tr>
    <td style=" cursor:auto;">{*SEMANA_ANTERIOR_VUELTA}
							<a href='{PARAMETROS_PASO2_SEMANA_ANTERIOR_ARRIBA}' class="sinlinea" title="{_MSG_RETROCEDER_SEMANA_IDA_VUELTA}"><img width="23" height="23" src='/images/common/fle_simple_retroceder_diago.gif' border='0' alt='{_MSG_RETROCEDER_SEMANA_IDA_VUELTA}' ></a>
						{/SEMANA_ANTERIOR_VUELTA}</td>
    <td style="width:2px; cursor:auto;">&nbsp;</td>
    <td>{*SEMANA_SIGUIENTE_IDA_VUELTA}
							<a href='{PARAMETROS_PASO2_SEMANA_SIGUIENTE_IDA_VUELTA}' class="sinlinea" title="{_MSG_AVANZAR_SEMANA_IDA_VUELTA}"><img width="23" height="23" src='/images/common/fle_simple_avanzar_diago.gif' alt='{_MSG_AVANZAR_SEMANA_IDA_VUELTA}' border='0' ></a>
						{/SEMANA_SIGUIENTE_IDA_VUELTA}</td>
  </tr> -->
</table>
</td>
			
		</tr>

	</table>

<div id="contenido_tarifas_promocionales_matriz" style="display:none">
</div>
</div>
{*BLOQUE_VALORES_EN}
<div id="nota">{_NOTA_VALOR}&nbsp;{_VALORES_EN}&nbsp;{NOMBRE_MONEDA}&nbsp;{_FF_POR_PERSONA_MOWFLEX}</div>
{/BLOQUE_VALORES_EN}
</div>
</div>
<!--{_PASO2_FLEX_NOTA}	-->
{/BLOCK_RT}
<script type="text/javascript">window.onLoad = init({FORM_NAME}, '{FECHA_IDA_PRESEL}', '{FECHA_VUELTA_PRESEL}');</script>

