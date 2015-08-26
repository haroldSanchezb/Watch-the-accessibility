<script type="text/javascript" src="/js/TravelAssist/TravelAssistPriceValidator.js"></script>
{*BLOQUE_DIAS}
<select name='{NAME}_dia' id='id_{NAME}_dia' {DISABLED_DIAS}>
  {LISTA_DIAS}
</select>
{/BLOQUE_DIAS}

{*BLOQUE_DIAS_ASISTENCIA}
<td>
<select class="assist_combo_day" name='{NAME}_dia' id='id_{NAME}_dia' onChange="TravelAssist.actualizarPrecios('{NAME}');">
  {LISTA_DIAS}
</select>
</td>
{/BLOQUE_DIAS_ASISTENCIA}

{LISTA_DIAS}

{*BLOQUE_MESANO}
<select name='{NAME}_mesano' id='id_{NAME}_mesano' {DISABLED_MESES}>
  {LISTA_MESESANO}
</select>
{/BLOQUE_MESANO}

{*BLOQUE_MESANO_SPLIT}
<select name='{NAME}_mes' id='id_{NAME}_mes'>
  {LISTA_MESES}
</select>
<select name='{NAME}_year' id='id_{NAME}_year'>
  {LISTA_YEARS}
</select>
{/BLOQUE_MESANO_SPLIT}


{*BLOQUE_MESANO_SPLIT_ASISTENCIA}
<td>
<select class="assist_combo_month" name='{NAME}_mes' id='id_{NAME}_mes' onChange="TravelAssist.actualizarPrecios('{NAME}');">
  {LISTA_MESES}
</select>
</td>
<td>
<select class="assist_combo_year" name='{NAME}_year' id='id_{NAME}_year' onChange="TravelAssist.actualizarPrecios('{NAME}');">
  {LISTA_YEARS}
</select>
</td>
<input type='hidden' id='{NAME}_is_adult' name='pax_type_assist' value='TRUE'>
{/BLOQUE_MESANO_SPLIT_ASISTENCIA}
