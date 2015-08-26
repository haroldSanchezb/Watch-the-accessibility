<table cellspacing="0" cellpadding="0" style="width: 100%; border: 1px solid #CCCCCC; margin:0 auto;">
  <tr style="background: #F3F4F9; font: 11px Arial, Helvetica, sans-serif;">
    <td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_PASAJEROS}</td>
    <td style="font-weight: normal; padding: 4px 10px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: right;">{_LABEL_UPG_SALDO_INICIAL} </td>
	<td style="font-weight: normal; padding: 4px 10px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: right;">{_LABEL_UPG_CUPONES_REQUERIDOS} </td>
	<td style="font-weight: normal; padding: 4px 10px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: right;">{_LABEL_UPG_CUPONES_DONAR_TITULAR}</td>    
	<td style="font-weight: normal; padding: 4px 10px 0 5px; color: #003e7e; text-align: right;">{_LABEL_UPG_SALDO_FINAL_CUPONES}</td>
  </tr>
  {LISTA_PASAJEROS}
</table>

{*LINEA_PASAJERO}
  <tr style="background: #fff; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left; vertical-align: text-top; font-weight:normal;">
    <td style="font-weight: normal; padding: 4px 5px 5px 5px; border-right: 1px solid #CCCCCC;">
		{NOMBRE}
		<input type="hidden" name="es_comodoro_{FOID}" id="es_comodoro_{FOID}" value="{ES_COMODORO}"/>
	</td>
	<td style="font-weight: normal; padding: 4px 10px 5px 5px; border-right: 1px solid #CCCCCC; text-align:right">
		<label id="cupones_disponibles_{FOID}" for="cupones_disponibles_{FOID}">{CUPONES_DISPONIBLES}</label>
	</td>
	<td style="font-weight: normal; padding: 4px 10px 5px 5px; border-right: 1px solid #CCCCCC; text-align:right;">
		<label id="cupones_requeridos_{FOID}" for="cupones_requeridos_{FOID}">{CUPONES_REQUERIDOS}</label>
		<input type="hidden" name="input_cupones_tipo_requeridos_{FOID}" id="input_cupones_tipo_requeridos_{FOID}" value="{CUPONES_REQUERIDOS}"/>
		<input type="hidden" name="input_cupones_tipo_socios_{FOID}" id="input_cupones_tipo_socios_{FOID}" value="{CUPONES_TIPO_SOCIOS}"/>
		<input type="hidden" name="input_cupones_tipo_ambos_{FOID}" id="input_cupones_tipo_ambos_{FOID}" value="{CUPONES_TIPO_AMBOS}"/>
		<input type="hidden" name="input_cupones_tipo_acompanantes_{FOID}" id="input_cupones_tipo_acompanantes_{FOID}" value="{CUPONES_TIPO_ACOMPANANTES}"/>
	</td>
	<td style="font-weight: normal; padding: 4px 10px 5px 5px; border-right: 1px solid #CCCCCC; text-align:right;">
		<input type="hidden" name="input_cupones_donados_por_titular_{FOID}" id="input_cupones_donados_por_titular_{FOID}" value="{CUPONES_DONADOS_POR_TITULAR}"/>
		<label id="cupones_donados_por_titular_{FOID}" for="cupones_donados_por_titular_{FOID}">{CUPONES_DONADOS_POR_TITULAR}</label>
    </td>	
	<td style="font-weight: normal; padding: 4px 10px 5px 5px; text-align:right;">
		<input type="hidden" name="input_cupones_donados_a_otros_{FOID}" id="input_cupones_donados_a_otros_{FOID}" value="{CUPONES_DONADOS_A_OTROS}"/>
		<input type="hidden" name="input_cupones_saldo_{FOID}" id="input_cupones_saldo_{FOID}" value="{CUPONES_SALDO}"/>
		<label id="cupones_saldo_{FOID}" for="cupones_saldo_{FOID}">{CUPONES_SALDO_TXT}</label>
	</td>
  </tr>
 {/LINEA_PASAJERO}



