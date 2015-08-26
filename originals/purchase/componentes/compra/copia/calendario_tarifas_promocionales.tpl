<table width="100%" border="0" cellpadding="0" cellspacing="0" class="calendario_buscador"  >
<tr >
	<td id="header_meses" colspan="7"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td style="width:10%;">{*BLOQUE_MES_ANTERIOR}
	 <a href="javascript:cambiar_mes('form_calendario', 'anterior','{DIRECCION}','{YEAR}','{MES}', '{FECHA_INICIO_CALENDARIO}')" style="color:#000000; padding-left:10px;" title="{_LABEL_RETROCEDER_MES}" id="id_link_compra_normal_retroceder_mes_calendario_buscador_tarifa"><img src='/images/common/flecha_retroceder_calendario.gif' alt='retroceder' width="11" height="11" border='0'></a>
	{/BLOQUE_MES_ANTERIOR}</td>
    <td style="text-align:center; width:80%;">{LABEL_MES_CALENDARIO} {YEAR}</td>
    <td style="width:10%;">{*BLOQUE_MES_SIGUIENTE}
	 <a href="javascript:cambiar_mes('form_calendario', 'siguiente','{DIRECCION}','{YEAR}','{MES}','{FECHA_INICIO_CALENDARIO}')" style="color:#ffffff; padding-right:10px;" title="{_LABEL_AVANZAR_MES}" id="id_link_compra_normal_avanzar_mes_calendario_buscador_tarifa"><img src='/images/common/flecha_avanzar_calendario.gif' alt='avanzar' width="11" height="11" border='0'></a>
	{/BLOQUE_MES_SIGUIENTE}	</td>
  </tr>
</table>

	</td>
</tr>
<tr>
	<td class="header_dia">{_DIA_LUNES_ABREV}</td>
	<td class="header_dia">{_DIA_MARTES_ABREV}</td>
	<td class="header_dia">{_DIA_MIERCOLES_ABREV}</td>
	<td class="header_dia">{_DIA_JUEVES_ABREV}</td>
	<td class="header_dia">{_DIA_VIERNES_ABREV}</td>
	<td class="header_dia">{_DIA_SABADO_ABREV}</td>
	<td class="header_dia">{_DIA_DOMINGO_ABREV}</td>
</tr>

<tr>
	<td style="border:1px solid #ffffff;" colspan="7"><table width="100%" border="0" cellspacing="1" cellpadding="0">
  {*BLOQUE_SEMANAS}
  	<tr>
  {*BLOQUE_DIAS}
    <td id='{DIRECCION}_{ID_DIA}' class='{CLASS_DIA}' onClick="cambiar_dia('{ID_DIA}', '{DIRECCION}');">{DIA}</td>
	{/BLOQUE_DIAS}  	</tr>
  {/BLOQUE_SEMANAS}
</table></td>
</tr>

</table>

<input type="hidden" id="mes_actual_{DIRECCION}" value="{YEAR}-{MES}"/>
<input type="hidden" id="dias_mes_actual_{DIRECCION}" value="{DIAS_MES}"/>
