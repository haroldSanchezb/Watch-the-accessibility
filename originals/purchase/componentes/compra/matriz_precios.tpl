<script type="text/javascript">

var last_ida_painted = '';
var last_vuelta_painted = '';
var last_fechas_painted = '';

function init(f, fecha_ida, fecha_vuelta)
	{
	var val = getRadioValue(f.fechas);
	if (val == null)
		{
		if (typeof(f.fechas) != 'undefined')
			{
			for (var i = 0; i < f.fechas.length; ++i)
				{
				if (f.fechas[i].value == fecha_ida + '|' + fecha_vuelta)
					{
					f.fechas[i].checked = true;
					set_fechas(f, fecha_ida, fecha_vuelta);
					set_id_mas_barato_owflex(document.getElementById('fechas_' + fecha_ida + '|' + fecha_vuelta + '_ID_OWFLEX_VUELO_IDA').value, document.getElementById('fechas_' + fecha_ida + '|' + fecha_vuelta + '_ID_OWFLEX_VUELO_VUELTA').value, document.getElementById('fechas_' + fecha_ida + '|' + fecha_vuelta + '_FAREBASIS_OWFLEX_VUELO_IDA').value, document.getElementById('fechas_' + fecha_ida + '|' + fecha_vuelta + '_FAREBASIS_OWFLEX_VUELO_VUELTA').value);
					break;
					}
				}
			}
		}
	else
		{
		var fechas_arr = val.split('|');
		set_fechas(f, fechas_arr[0], fechas_arr[1]);
		}
	}

function set_id_mas_barato_owflex(id_ida, id_vuelta, farebasis_ida, farebasis_vuelta)
	{
	if (id_ida != null || farebasis_ida != null)
		{		
		document.getElementById('mas_barato_owflex_ida').value = id_ida;
		document.getElementById('mas_barato_owflex_ida_farebasis').value = farebasis_ida;
		}
	if (id_vuelta != null || farebasis_vuelta != null)
		{
		(document.getElementById('mas_barato_owflex_vuelta')).value = id_vuelta;
		(document.getElementById('mas_barato_owflex_vuelta_farebasis')).value = farebasis_vuelta;
		}
		
	}

function set_fechas(f, f0, f1)
	{
	unset_fechas(f);

	// La celda misma
	last_fechas_painted = 'fechas_' + f0 + '|' + f1;
	celda = document.getElementById(last_fechas_painted);
	var color = (document.getElementById(last_fechas_painted + '_color')).value;
	celda.className = color + ' selected';

	var celda_bg_color = document.getElementById(last_fechas_painted + '_bg_familia') ? document.getElementById(last_fechas_painted + '_bg_familia').value : '';
	var celda_fg_color = document.getElementById(last_fechas_painted + '_fg_familia') ? document.getElementById(last_fechas_painted + '_fg_familia').value : '';

	if (celda_bg_color && celda_fg_color)
		{
		celda.style.backgroundColor = celda_bg_color;
		celda.style.color = celda_fg_color;
		}

	// La fila con las fechas de ida
	last_ida_painted = 'ida_' + f0;
	var celda = document.getElementById(last_ida_painted);
	celda.className = 'selected';
	celda.style.backgroundColor = celda_bg_color;
	celda.style.color = celda_fg_color;
	
	var fecha_ida = f0.split('-');
	f.fecha1_dia.value = fecha_ida[2];
	f.fecha1_anomes.value = fecha_ida[0] + '-' + fecha_ida[1];

	// La columna con las fechas de vuelta
	if (f.num_segmentos_interfaz.value == 2)
		{
		last_vuelta_painted = 'vuelta_' + f1;
		celda = document.getElementById(last_vuelta_painted);
		celda.className = 'selected';
		celda.style.backgroundColor = celda_bg_color;
		celda.style.color = celda_fg_color;
		
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
	celda.style.backgroundColor = '';
	celda.style.color = '';
	
	if (f.num_segmentos_interfaz.value == 2)
		{
		celda = document.getElementById(last_vuelta_painted);
		celda.className = 'unselected';

		celda.style.backgroundColor = '';
		celda.style.color = '';
		}

	celda = document.getElementById(last_fechas_painted);
	var color = (document.getElementById(last_fechas_painted + '_color')).value;
	celda.className = color + ' unselected';

	celda.style.backgroundColor = '';
	celda.style.color = '';
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

	var celda_bg_color = document.getElementById(celda_id + '_bg_familia') ? document.getElementById(celda_id + '_bg_familia').value : '';
	var celda_fg_color = document.getElementById(celda_id + '_fg_familia') ? document.getElementById(celda_id + '_fg_familia').value : '';

	celda.style.backgroundColor = celda_bg_color;
	celda.style.color = celda_fg_color;

	// La fila con las fechas de ida
	var celda_ida = document.getElementById('ida_' + f_ida);

	celda_ida.prevBackground = celda_ida.style.backgroundColor;
	celda_ida.prevColor = celda_ida.style.color;

	celda_ida.style.backgroundColor = celda_bg_color;
	celda_ida.style.color = celda_fg_color;
	
	// La columna con las fechas de vuelta
	if (form.num_segmentos_interfaz.value == 2)
		{
		var celda_vuelta = document.getElementById('vuelta_' + f_vuelta);
			
		celda_vuelta.prevBackground = celda_vuelta.style.backgroundColor;
		celda_vuelta.prevColor = celda_vuelta.style.color;

		celda_vuelta.style.backgroundColor = celda_bg_color;
		celda_vuelta.style.color = celda_fg_color;
		}
	}
function celda_mouse_out(form, f_ida, f_vuelta)
	{
	var celda_ida = document.getElementById('ida_' + f_ida);

	celda_ida.style.backgroundColor = celda_ida.prevBackground;
	celda_ida.style.color = celda_ida.prevColor;

	if (form.num_segmentos_interfaz.value == 2)
		{
		var celda_vuelta = document.getElementById('vuelta_' + f_vuelta);

		celda_vuelta.style.backgroundColor = celda_vuelta.prevBackground;
		celda_vuelta.style.color = celda_vuelta.prevColor;
		}

	var celda_id = 'fechas_' + f_ida + '|' + f_vuelta;
	var celda = document.getElementById(celda_id);

	var radio_id = 'radio_' + f_ida + '|' + f_vuelta;
	var radio = document.getElementById(radio_id);
	if (!(radio && radio.checked))
		{
		celda.style.backgroundColor = '';
		celda.style.color = '';
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
.flex_matrix td {
	border-style: solid;
	border-width: 1px;
	text-align: left;
	vertical-align: middle;
	padding-left: 1px;
	padding-right: 1px;
	cursor: pointer;
	}
	
.flex_matrix th {

	border-style: solid;
	border-width: 1px;
	text-align: center;
	vertical-align: middle;
	border-left: 1px #F4F5FA solid;
	border-right: 1px #F4F5FA solid;
	border-top: 1px #F4F5FA solid;
	border-bottom: 1px #F4F5FA solid;
	border-collapse: collapse;
	padding-left: 1px;
	padding-right: 1px;
	color: #000000;
	}
	
.flex_matrix{
	background-color: #DDE0EF;
	border-width: 0px;
}

.legend table {
	border-width: 0px;
	text-align: center;
	vertical-align: middle;
	border-collapse: collapse;
	padding-left: 5px;
	padding-right: 5px;

	}

.legend td {
	font-size: xx-small;  
	font-style: normal;
	}
	
.legend {
	padding-left: 5px;
	padding-right: 5px
	border-width: 0px;
	text-align: right;
	float:right;
	clear:left;
	font-size: xx-small;  
	font-style: normal;
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

/* Colores para tarifas - 1 es la mas barata */
.color_7 {
	/*background-color: rgb(150, 154, 168);*/
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	}
.color_6 {
	/*background-color: rgb(150, 154, 168);*/
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	}
.color_5 {
	/*background-color: rgb(170, 174, 188);*/
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	}
.color_4 {
	/*background-color: rgb(190, 194, 208);*/
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	}
.color_3 {
	/*background-color: rgb(210, 214, 228);*/
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	
	}
.color_2 {
	/*background-color: rgb(230, 234, 248);*/
	background-color: #FFFFFF;
	border-color:#FFFFFF;
	}
.color_1 {
	/*background-color: #F6F6F6;*/
	border-color:#F6F6F6;
	}

/* Este es el de las celdas vacias */
.color_0 {
	/*background-color: rgb(230, 234, 248);*/
	background-color: #FFFFFF;
	border-color: #FFFFFF;
	}

.color_legend_1 {
	background-color: #CC0001;
	border-color:#000000;

}

.color_legend_2 {
	background-color: #DDE0EF;
	border-color:#000000;
}

</style>

<input type='hidden' name='fecha1_dia' value=''>
<input type='hidden' name='fecha1_anomes' value=''>
<input type='hidden' name='fecha2_dia' value=''>
<input type='hidden' name='fecha2_anomes' value=''>

<input type='hidden' id='mas_barato_owflex_ida' name='mas_barato_owflex_ida' value=''>
<input type='hidden' id='mas_barato_owflex_vuelta' name='mas_barato_owflex_vuelta' value=''>
<input type='hidden' id='mas_barato_owflex_ida_farebasis' name='mas_barato_owflex_ida_farebasis' value=''>
<input type='hidden' id='mas_barato_owflex_vuelta_farebasis' name='mas_barato_owflex_vuelta_farebasis' value=''>

{*BLOCK_OW}

	{*MSG_TARIFA_MAS_BARATA_BLOCK_OW}
	<table class="legend unselected" border="0">
	<tr><th class="color_legend_2">&nbsp;&nbsp;&nbsp;</th><th>{_MSG_TARIFA_MAS_BARATA}</th></tr>
	</table>
	{/MSG_TARIFA_MAS_BARATA_BLOCK_OW}

	<br>
	<br>
	<h4>{_PASO2_FLEX_TITULO_SELECCIONA_FECHA}</h4>
	<table class="flex_matrix table" cellpadding="0" cellspacing="1" width="100%">
		<tr>
			<th colspan="7" style:"text-align:center;"> 
				
				<table style="text-align:center;margin-left:auto;margin-right:auto;">
					<tr>
						{*SEMANA_ANTERIOR_IDA}
						<th><a title="{_MSG_SEMANA_ANTERIOR}" href='{PARAMETROS_PASO2_SEMANA_ANTERIOR_IZQUIERDA}' class="sinlinea"><img width="8" height="8" src='/images/espanol/botones/bullet_ant.gif' border='0' alt='{_MSG_SEMANA_ANTERIOR}'></a></th>
						<th><span onClick="location.href='{PARAMETROS_PASO2_SEMANA_ANTERIOR_IZQUIERDA}'" style='cursor: pointer'>{_MSG_SEMANA_ANTERIOR}</span></th>
						{/SEMANA_ANTERIOR_IDA}
						<th>|</th>
						{*SEMANA_SIGUIENTE_IDA}
						<th><span onClick="location.href='{PARAMETROS_PASO2_SEMANA_SIGUIENTE_DERECHA}'" style='cursor: pointer'>{_MSG_SEMANA_SIGUIENTE}</span></th>
						<th><a title="{_MSG_SEMANA_SIGUIENTE}" href='{PARAMETROS_PASO2_SEMANA_SIGUIENTE_DERECHA}' class="sinlinea"><img width="7" height="8" src='/images/espanol/botones/bullet_sgte.gif' alt='{_MSG_SEMANA_SIGUIENTE}' border='0'></a></th>
						{/SEMANA_SIGUIENTE_IDA}
					</tr>
				</table>
				
			</th>
		</tr>
		<tr>
			{*COLUMNA_IDA_HEADER}
			<th class="unselected" id="ida_{FECHA}"> 
				{_LABEL_SALIENDO}<br />
				<b>{FECHA_FORMAT}</b>
			</th>

			
			{/COLUMNA_IDA_HEADER} 
		</tr>
		{*FILA_OW}
		<tr>
			{*COLUMNA_IDA}
			<td class="color_{COLOR} unselected" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}" onMouseOver="celda_mouse_over({FORM_NAME}, '{FECHA_IDA}', '{FECHA_VUELTA}');" onMouseOut="celda_mouse_out({FORM_NAME}, '{FECHA_IDA}', '{FECHA_VUELTA}');" onClick="celda_mouse_click({FORM_NAME}, '{FECHA_IDA}', '{FECHA_VUELTA}'); set_id_mas_barato_owflex(document.getElementById('fechas_{FECHA_IDA}|{FECHA_VUELTA}_ID_OWFLEX_VUELO_IDA').value, null,document.getElementById('fechas_{FECHA_IDA}|{FECHA_VUELTA}_FAREBASIS_OWFLEX_VUELO_IDA').value, null);" style='text-align: center; vertical-align: middle'>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_color" value="color_{COLOR}"/>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_bg_familia" value="{BG_COLOR_FAMILIA}"/>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_fg_familia" value="{FG_COLOR_FAMILIA}"/>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_monto" value="{MONTO}"/>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_ID_OWFLEX_VUELO_IDA" value="{ID_OWFLEX_VUELO_IDA}"/>	
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_ID_OWFLEX_VUELO_VUELTA" value="{ID_OWFLEX_VUELO_VUELTA}"/>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_FAREBASIS_OWFLEX_VUELO_IDA" value="{FAREBASIS_OWFLEX_VUELO_IDA}"/>	
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_FAREBASIS_OWFLEX_VUELO_VUELTA" value="{FAREBASIS_OWFLEX_VUELO_VUELTA}"/>
			<input name="fechas" type="radio" id="radio_{FECHA_IDA}|{FECHA_VUELTA}" value="{FECHA_IDA}|{FECHA_VUELTA}" onclick="set_fechas(this.form, '{FECHA_IDA}', '{FECHA_VUELTA}'); set_id_mas_barato_owflex(document.getElementById('fechas_{FECHA_IDA}|{FECHA_VUELTA}_ID_OWFLEX_VUELO_IDA').value, null, document.getElementById('fechas_{FECHA_IDA}|{FECHA_VUELTA}_FAREBASIS_OWFLEX_VUELO_IDA').value, null);"/><br>
			{SIGNO}{TARIFA}
			</td>
			{/COLUMNA_IDA} 

			{*COLUMNA_IDA_VACIA}
			<td class="color_0 unselected" style='text-align: center; vertical-align: middle; cursor: default;'>
				&mdash;
			</td>
			{/COLUMNA_IDA_VACIA}
		</tr>
		{/FILA_OW}
	</table>
{/BLOCK_OW}

{*BLOCK_RT}
	{*MSG_TARIFA_MAS_BARATA_BLOCK_RT}
	<table class="legend" border="0">
	<tr><th class="color_legend_2">&nbsp;&nbsp;&nbsp;</th><th>{_MSG_TARIFA_MAS_BARATA}</th></tr>
	</table>
	{/MSG_TARIFA_MAS_BARATA_BLOCK_RT}
	<br>
	<br>
	<h4>{TITULO_SELECCIONA}</h4>
	<table class="flex_matrix table" cellpadding="0" cellspacing="1" width="100%">
		<tr>
			{*BLOQUE_VALORES_EN}
			<th colspan="2"  rowspan='2' style="text-align: center; color: #9b0704; font-weight: bold;">{_VALORES_EN}<br>{NOMBRE_MONEDA}</th>
			{/BLOQUE_VALORES_EN}
			
			{*BLOQUE_SUP_IZ_EASYFLY}
			<th colspan="2"  rowspan='2' style="text-align: center; color: #9b0704; font-weight: bold;">{_MSG_SUP_IZ_EASYFLY}<br></th>
			{/BLOQUE_SUP_IZ_EASYFLY}

			<th  colspan="7" style="text-align:center;"> 
				
				<table style="text-align:center;margin-left:auto;margin-right:auto;" >
					<tr>
						{*SEMANA_ANTERIOR_IDA}
						<th><a title="{_MSG_SEMANA_ANTERIOR}" href='{PARAMETROS_PASO2_SEMANA_ANTERIOR_IZQUIERDA}' class="sinlinea"><img width="8" height="8" src='/images/espanol/botones/bullet_ant.gif' border='0' alt='{_MSG_SEMANA_ANTERIOR}'></a></th>
						<th><span onClick="location.href='{PARAMETROS_PASO2_SEMANA_ANTERIOR_IZQUIERDA}'" style='cursor: pointer'>{_MSG_SEMANA_ANTERIOR}</span></th>
						{/SEMANA_ANTERIOR_IDA}
						<th>|</th>
						{*SEMANA_SIGUIENTE_IDA}
						<th><span onClick="location.href='{PARAMETROS_PASO2_SEMANA_SIGUIENTE_DERECHA}'" style='cursor: pointer'>{_MSG_SEMANA_SIGUIENTE}</span></th>
						<th><a title="{_MSG_SEMANA_SIGUIENTE}" href='{PARAMETROS_PASO2_SEMANA_SIGUIENTE_DERECHA}' class="sinlinea"><img width="7" height="8" src='/images/espanol/botones/bullet_sgte.gif' alt='{_MSG_SEMANA_SIGUIENTE}' border='0'></a></th>
						{/SEMANA_SIGUIENTE_IDA}
						{*SEMANA_SIGUIENTE_IDA_VUELTA}
						<th><a title="{_MSG_SEMANA_SIGUIENTE}" href='{PARAMETROS_PASO2_SEMANA_SIGUIENTE_IDA_VUELTA}' class="sinlinea"><img width="7" height="8" src='/images/espanol/botones/bullet_sgte.gif' alt='{_MSG_SEMANA_SIGUIENTE}' border='0'></a></th>
						{/SEMANA_SIGUIENTE_IDA_VUELTA}
					</tr>
				</table>
				
			</th>
		</tr>
		
		<tr>
			{*COLUMNA_IDA_HEADER}
			<th class="unselected" id="ida_{FECHA}"> 
				{_LABEL_SALIENDO}<br />
				<b>{FECHA_FORMAT}</b>
			</th>
			{/COLUMNA_IDA_HEADER}
		</tr>
		{*FILA_VUELTA}
		<tr>
			{*FIRST_COLUMN}
					<th  rowspan="7" class="verticalelement">
					<table  class="vertical table" >	
					{*SEMANA_ANTERIOR_IDA_VUELTA}
					<tr><td><a title="{_MSG_SEMANA_ANTERIOR}" href='{PARAMETROS_PASO2_SEMANA_ANTERIOR_IDA_VUELTA}' class="sinlinea"><img width="8" height="8" src='/images/espanol/botones/bullet_up.gif' border='0' alt= '{_MSG_SEMANA_ANTERIOR}'></a></td></tr>
					{/SEMANA_ANTERIOR_IDA_VUELTA}
					{*SEMANA_ANTERIOR_VUELTA}
					<tr><td><a title="{_MSG_SEMANA_ANTERIOR}" href='{PARAMETROS_PASO2_SEMANA_ANTERIOR_ARRIBA}' class="sinlinea"><img width="8" height="8" src='/images/espanol/botones/bullet_up.gif' border='0' alt='{_MSG_SEMANA_ANTERIOR}'></a></td></tr>
					<tr><td><span onClick="location.href='{PARAMETROS_PASO2_SEMANA_ANTERIOR_ARRIBA}'" style='cursor: pointer'>{+IMAGEN_VERTICAL(texto='MSG_SEMANA_ANTERIOR',point_size='8')}</span></td></tr>
					{/SEMANA_ANTERIOR_VUELTA}
					<tr><td>-</td></tr>
					{*SEMANA_SIGUIENTE_VUELTA}
					<tr><td><span onClick="location.href='{PARAMETROS_PASO2_SEMANA_SIGUIENTE_ABAJO}'" style='cursor: pointer'>{+IMAGEN_VERTICAL(texto='MSG_SEMANA_SIGUIENTE',point_size='8')}</span></td></tr>
					<tr><td><a title="{_MSG_SEMANA_SIGUIENTE}" href='{PARAMETROS_PASO2_SEMANA_SIGUIENTE_ABAJO}' class="sinlinea"><img width="8" height="7" src='/images/espanol/botones/bullet_down.gif' alt='{_MSG_SEMANA_SIGUIENTE}' border='0'></a></td></tr>
					{/SEMANA_SIGUIENTE_VUELTA}
					</table>
					</th>
			{/FIRST_COLUMN}
			<th class="unselected" id="vuelta_{FECHA}">{_LABEL_VOLVIENDO}<br />
				<b>{FECHA_FORMAT}</b>
			</th>
						
			{*COLUMNA_IDA_RT}

			<td  class="color_{COLOR} unselected" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}" onMouseOver="celda_mouse_over({FORM_NAME}, '{FECHA_IDA}', '{FECHA_VUELTA}');" onMouseOut="celda_mouse_out({FORM_NAME}, '{FECHA_IDA}', '{FECHA_VUELTA}');" onClick="celda_mouse_click({FORM_NAME}, '{FECHA_IDA}', '{FECHA_VUELTA}'); set_id_mas_barato_owflex(document.getElementById('fechas_{FECHA_IDA}|{FECHA_VUELTA}_ID_OWFLEX_VUELO_IDA').value, document.getElementById('fechas_{FECHA_IDA}|{FECHA_VUELTA}_ID_OWFLEX_VUELO_VUELTA').value, document.getElementById('fechas_{FECHA_IDA}|{FECHA_VUELTA}_FAREBASIS_OWFLEX_VUELO_IDA').value, document.getElementById('fechas_{FECHA_IDA}|{FECHA_VUELTA}_FAREBASIS_OWFLEX_VUELO_VUELTA').value);" style='text-align: center; vertical-align: middle'>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_color" value="color_{COLOR}"/>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_bg_familia" value="{BG_COLOR_FAMILIA}"/>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_fg_familia" value="{FG_COLOR_FAMILIA}"/>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_monto" value="{MONTO}"/>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_ID_OWFLEX_VUELO_IDA" value="{ID_OWFLEX_VUELO_IDA}"/>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_ID_OWFLEX_VUELO_VUELTA" value="{ID_OWFLEX_VUELO_VUELTA}"/>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_FAREBASIS_OWFLEX_VUELO_IDA" value="{FAREBASIS_OWFLEX_VUELO_IDA}"/>
			<input type="hidden" id="fechas_{FECHA_IDA}|{FECHA_VUELTA}_FAREBASIS_OWFLEX_VUELO_VUELTA" value="{FAREBASIS_OWFLEX_VUELO_VUELTA}"/>
			<input name="fechas" type="radio" id="radio_{FECHA_IDA}|{FECHA_VUELTA}" value="{FECHA_IDA}|{FECHA_VUELTA}" onclick="set_fechas(this.form, '{FECHA_IDA}', '{FECHA_VUELTA}');set_id_mas_barato_owflex(document.getElementById('fechas_{FECHA_IDA}|{FECHA_VUELTA}_ID_OWFLEX_VUELO_IDA').value, document.getElementById('fechas_{FECHA_IDA}|{FECHA_VUELTA}_ID_OWFLEX_VUELO_VUELTA').value, document.getElementById('fechas_{FECHA_IDA}|{FECHA_VUELTA}_FAREBASIS_OWFLEX_VUELO_IDA').value, document.getElementById('fechas_{FECHA_IDA}|{FECHA_VUELTA}_FAREBASIS_OWFLEX_VUELO_VUELTA').value);"/><br>
			{*BLOQUE_DESDE}
				{DESDE}
				<br/>
			{/BLOQUE_DESDE}
			{SIGNO}{TARIFA}
			</td>
			
			{/COLUMNA_IDA_RT}

			{*COLUMNA_IDA_RT_VACIA}
			<td class="color_0 unselected" style='text-align: center; vertical-align: middle; cursor: default;'>
				&mdash;
			</td>
			{/COLUMNA_IDA_RT_VACIA}
			
		</tr>
		{/FILA_VUELTA} 
		
	</table>
<div id="contenido_tarifas_promocionales_matriz" style="display:none">
</div>
{/BLOCK_RT}

{_PASO2_FLEX_NOTA}	

<script type="text/javascript">
window.onLoad = init({FORM_NAME}, '{FECHA_IDA_PRESEL}', '{FECHA_VUELTA_PRESEL}');
</script>
