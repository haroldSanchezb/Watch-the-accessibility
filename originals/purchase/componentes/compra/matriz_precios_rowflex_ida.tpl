{_MSG_DESPLIEGUE_ROWFLEX}

<input type='hidden' id='fecha_ida_min' value='{FECHA_IDA_MIN}'>
<input type='hidden' id='fecha_ida_max' value='{FECHA_IDA_MAX}'>

{*BLOCK_OW}
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
    		<td style="padding:0px; margin:0px; vertical-align:middle; text-align:right">{*SEMANA_SIGUIENTE_IDA}
				<a href='{PARAMETROS_PASO2_SEMANA_SIGUIENTE_DERECHA}' class="sinlinea" title="{_MSG_AVANZAR_SEMANA}"><img width="23" height="23" src='/images/common/fle_simple_avanzar_ida.gif' alt='{_MSG_AVANZAR_SEMANA}' border='0'></a>
			{/SEMANA_SIGUIENTE_IDA}</td>
		</tr>
		{*FILA_OW}
		<tr>
			<td style="background-color:#FFFFFF; border:none;"></td>
			{*COLUMNA_IDA}
			<td class="color_{COLOR} unselected" id="ida_fechas_{FECHA_IDA}|{FECHA_VUELTA}" onMouseOver="set_way(this);celda_mouse_over({FORM_NAME}, '{FECHA_IDA}', '');" onMouseOut="set_way(this);celda_mouse_out({FORM_NAME}, '{FECHA_IDA}', '{FECHA_VUELTA}', 'color_{COLOR}');" onClick="set_way(this);celda_mouse_click({FORM_NAME}, '{FECHA_IDA}', '{FECHA_VUELTA}'); {DESPLIEGA_OWFLEX}" style='text-align: center; vertical-align: middle; border:1px solid #EAEAEA; padding-top:2px; padding-bottom: 2px;'>
			<input type="hidden" id="ida_fechas_{FECHA_IDA}|{FECHA_VUELTA}_color" value="color_{COLOR}"/>
			<input type="hidden" id="ida_fechas_{FECHA_IDA}|{FECHA_VUELTA}_bg_familia" value="{BG_COLOR_FAMILIA}"/>
			<input type="hidden" id="ida_fechas_{FECHA_IDA}|{FECHA_VUELTA}_fg_familia" value="{FG_COLOR_FAMILIA}"/>

			<input name="fechas" type="radio" id="ida_radio_{FECHA_IDA}|{FECHA_VUELTA}" value="{FECHA_IDA}|{FECHA_VUELTA}" style='display:none' onclick="set_way(this);set_fechas(this.form, '{FECHA_IDA}', '{FECHA_VUELTA}');"/>
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
	{/MSG_TARIFA_MAS_BARATA_BLOCK_OW}
{*BLOQUE_VALORES_EN}
{/BLOQUE_VALORES_EN}
{/BLOCK_OW}
<script type="text/javascript">
function init_ida() {
	window.onLoad = init({FORM_NAME}, '{FECHA_IDA_PRESEL}', 'ida');
}
</script>

