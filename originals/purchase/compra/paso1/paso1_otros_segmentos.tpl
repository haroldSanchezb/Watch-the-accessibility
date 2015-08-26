<tr>
	<td>
		{_LABEL_SEGMENTO} {NUM_SEGMENTO}
	</td>
	<td id='id_from_city{NUM_SEGMENTO}'>
		<select name='from_city{NUM_SEGMENTO}' onchange='acciones_combo_origen_destino(this.form,this,"{NUM_SEGMENTO}","origen")' class="combo-box">
			<option value=''>
			{_LABEL_SELECCIONE}
			</option>
			{LISTA_ORIGENES}
		</select>
		&nbsp;
	</td>
	<td id='id_to_city{NUM_SEGMENTO}'>
		<select name='to_city{NUM_SEGMENTO}' onchange='acciones_combo_origen_destino(this.form,this,"{NUM_SEGMENTO}","destino")' class="combo-box">
			<option value=''>
			{_LABEL_SELECCIONE}
			</option>
			{LISTA_DESTINOS}
		</select>
	</td>
	<td id='id_fecha{NUM_SEGMENTO}'>
		<select name='fecha{NUM_SEGMENTO}_dia' class="combo-box">
			<option value=''>
			{_LABEL_MULTIPLES_DESTINOS_FECHA_DIA}
			</option>
			{DIAS}
		</select>
		<select name='fecha{NUM_SEGMENTO}_anomes' class="combo-box">
			<option value=''>
			{_LABEL_MULTIPLES_DESTINOS_FECHA_MES}
			</option>
			{MESES_ANO}
		</select>
	<!-- 	<img src='/images/sitio_personas/layout/ic_calendario.gif' style="display: none;" alt='{_PALABRA_CALENDARIO}' name='calendario{NUM_SEGMENTO}' onclick="activate_calendar_segun_form(document.paso1, '{NUM_SEGMENTO}')" onmouseout="MM_swapImage('calendario{NUM_SEGMENTO}','','/images/sitio_personas/layout/ic_calendario.gif');" style='vertical-align:bottom' width=25 height=20>  -->

 <div id="layer_calendario{NUM_SEGMENTO}" style="position:absolute; width:94px; height:109px; z-index:2; left: 0px; top: 0px; visibility: hidden">
	<img name="imagen_calendario{NUM_SEGMENTO}" src="/images/html/imagen1x1.gif" usemap="#MapCalendario" alt="calendario vuelta" width="94" height="109">
	<br>
</div> 
 <div id="iframelayer{NUM_SEGMENTO}" style="position:absolute; width:94px; height:109px; z-index:1; left: 0px; top: 0px; visibility: hidden">
	<iframe   id="iframepatch{NUM_SEGMENTO}"   src="/images/html/imagen1x1.gif"   scrolling="no"   frameborder="0"   style="width:94px; height:109px; display:block;">
	</iframe>
</div> 

	</td>
</tr>
