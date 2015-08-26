	<table cellspacing="0" cellpadding="0" style="width: 100%; border: 1px solid #CCCCCC; margin:0 auto;">
   		<tr style="background: #F3F4F9; font: 11px Arial, Helvetica, sans-serif;">
				<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_FECHA}</td>
				<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_SALIDA}</td>
				<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_LLEGADA}</td>
				<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_VUELO}</td>
				<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_CABINA}</td>

				<td style="font-weight: normal; padding: 4px 5px 0 5px; color: #003e7e; text-align: left;>">{_LABEL_UPG_CABINA_POSTULAR}</td>
				{*BLOQUE_PERMITE_POSTULACION}
				<!--<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_UPG_PERMITE_POSTULACION}</td> -->
				{/BLOQUE_PERMITE_POSTULACION}
  		</tr>
  		{LINEAS_ITINERARIO}
	</table>
	
   {*BLOQUE_INFO_PAX_TITULAR}
  <tr>
  	<td>
	<h4>{_LABEL_UPG_DATOS_PASAJERO_TITULAR}</h4>
	<table class="table" width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr style="height: 22px; background: #F3F4F9; font: 11px Arial, Helvetica, sans-serif;">
			<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_NOMBRE}</td>
			<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_APELLIDO}</td>
			<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_NUMERO_SOCIO}</td>
			<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_UPG_CATEGORIA}</td>
			<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_UPG_CUPONES_SOCIOS}</td>
			<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_UPG_CUPONES_AMBOS}</td>
			<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_UPG_CUPONES_ACOMPANANTES}</td>
			<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_UPG_CUPONES_DONAR_TITULAR}</td>
		</tr>
		<tr style="height: 22px; background: #fff; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left; vertical-align: text-top;">
			<td style="font-weight: normal; padding: 4px 5px 5px 5px; border-right: 1px solid #CCCCCC;">{NOMBRE}</td>
			<td style="font-weight: normal; padding: 4px 5px 5px 5px; border-right: 1px solid #CCCCCC;">{APELLIDO}</td>
			<td style="font-weight: normal; padding: 4px 5px 5px 5px; border-right: 1px solid #CCCCCC;">{NUMERO_SOCIO}</td>
			<td style="font-weight: normal; padding: 4px 5px 5px 5px; border-right: 1px solid #CCCCCC;">{CATEGORIA}<input type="hidden" id="tier_type_titular_{FOID}" name="tier_type_titular_{FOID}" value="{TIER_TYPE}"/></td>
			<td style="font-weight: normal; padding: 4px 5px 5px 5px; border-right: 1px solid #CCCCCC;">{CUPONES_SOCIO}</td>
			<td style="font-weight: normal; padding: 4px 5px 5px 5px; border-right: 1px solid #CCCCCC;">{CUPONES_AMBOS}</td>
			<td style="font-weight: normal; padding: 4px 5px 5px 5px; border-right: 1px solid #CCCCCC;">{CUPONES_ACOMPANANTES}</td>
			<td style="font-weight: normal; padding: 4px 5px 5px 5px; ">
				<label id="cupones_a_donar_titular_{FOID}" for="cupones_a_donar_titular_{FOID}">{CUPONES_A_DONAR}</label>
			</td>
		</tr>
	</table>
	</td>
  </tr>
 {/BLOQUE_INFO_PAX_TITULAR}



<br />

{*LINEA_ITINERARIO_CON_UPG}
  <tr style="background: #fff; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left; vertical-align: text-top;">
    <td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{FECHA}</td>
    <td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{HORA_SALIDA} {CIUDAD_SALIDA}</td>
    <td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{HORA_LLEGADA} {CIUDAD_LLEGADA}</td>
    <td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{VUELO}</td>
	<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{CABINA}</td>
	<td style="font-weight: normal; padding: 4px 5px 0 5px; color: #003e7e; text-align: left;">{CABINA_A_POSTULAR}</td>
	<!--<td>{PERMITE_UPG}</td> -->
  </tr>
{/LINEA_ITINERARIO_CON_UPG}


{*LINEA_ITINERARIO_SIN_UPG}
  <tr style="background: #fff; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left; vertical-align: text-top;">
    <td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{FECHA}</td>
    <td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{HORA_SALIDA} {CIUDAD_SALIDA}</td>
    <td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{HORA_LLEGADA} {CIUDAD_LLEGADA}</td>
    <td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{VUELO}</td>
	<td style="font-weight: normal; padding: 4px 5px 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{CABINA}</td>
	<td style="font-weight: normal; padding: 4px 5px 0 5px; color: #003e7e; text-align: left;">{CABINA_A_POSTULAR}</td>
  </tr>
{/LINEA_ITINERARIO_SIN_UPG}
