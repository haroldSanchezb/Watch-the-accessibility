<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
	{*BLOQUE_HOTELES}
	<br>
	
	<table border="0" cellpadding="0" cellspacing="0" style="width: 96%;">
		<tr>
			<td style="padding: 10px 0 10px 0; text-align:center;">
				<table cellspacing="0" cellpadding="0" style="width: 96%; border: 1px solid #CCCCCC; margin:0 auto;">
					<tr style="height: 22px; background: #f3f4f9; font: 11px Arial, Helvetica, sans-serif; ">
						<td colspan="8" style="width: 25%; font-weight: bold; padding: 5px 0 0 5px; border-bottom: 1px solid #CCCCCC; background:#DCDFEE; color: #363636; text-align: left;">{_LABEL_HOTELES}</td>
					</tr>
					<tr style="height: 22px; background: #F3F4F9; font: 11px Arial, Helvetica, sans-serif;">
					 	<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left; width:15%; ">{_LABEL_HOTEL}</td>
					 	<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left; width:12%;">{_LABEL_NUM_HABITACIONES}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left; width:12%;">{_LABEL_LLEGADA}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left; width:12%;">{_LABEL_SALIDA}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left; width:10%;">{_LABEL_NOCHES}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left; width:12%;">{_LABEL_TIPO_ROOM}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left; width:12%;">{_LABEL_NUM_HUESPEDES}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; color: #003e7e; text-align: left; width:15%;">{_LABEL_TOTAL}</td>			
					</tr>

					{*HOTELES}
					<tr style="height: 22px; background: #fff; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left; vertical-align: text-top;">
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{NOMBRE_HOTEL}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{NUM_ROOM}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{CHECKIN}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{CHECKOUT}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{DIAS}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{TIPO_ROOM}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{NUM_PAX}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px;">{MONEDA_SYMBOL}{PRECIO}</td>
					</tr>
					{/HOTELES}
				</table>	
			</td>	
		</tr>
	</table>
	
{/BLOQUE_HOTELES}
	
	{*BLOQUE_HOTELES_SIN_MONTOS}
	<br>
	
	<table border="0" cellpadding="0" cellspacing="0" style="width: 96%;">
		<tr>
			<td style="padding: 10px 0 10px 0; text-align:center;">
				<table cellspacing="0" cellpadding="0" style="width: 96%; border: 1px solid #CCCCCC; margin:0 auto;">
					<tr style="height: 22px; background: #f3f4f9; font: 11px Arial, Helvetica, sans-serif; ">
						<td colspan="8" style="width: 25%; font-weight: bold; padding: 5px 0 0 5px; border-bottom: 1px solid #CCCCCC; background:#DCDFEE; color: #363636; text-align: left; ">{_LABEL_HOTELES}</td>
					</tr>
					<tr style="height: 22px; background: #F3F4F9; font: 11px Arial, Helvetica, sans-serif;">
					 	<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left; width:15%; ">{_LABEL_HOTEL}</td>
					 	<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left; width:12%;">{_LABEL_NUM_HABITACIONES}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left; width:12%;">{_LABEL_LLEGADA}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left; width:12%;">{_LABEL_SALIDA}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left; width:10%;">{_LABEL_NOCHES}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left; width:12%;">{_LABEL_TIPO_ROOM}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; color: #003e7e; text-align: left; width:12%;">{_LABEL_NUM_HUESPEDES}</td>
					</tr>

					{*HOTELES_SIN_MONTOS}
					<tr style="height: 22px; background: #fff; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left; vertical-align: text-top;">
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{NOMBRE_HOTEL}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{NUM_ROOM}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{CHECKIN}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{CHECKOUT}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{DIAS}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{TIPO_ROOM}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{NUM_PAX}</td>
					</tr>
					{/HOTELES_SIN_MONTOS}
				</table>	
			</td>	
		</tr>
	</table>
	</div>
{/BLOQUE_HOTELES_SIN_MONTOS}

{*BLOQUE_AUTOS}
	<br>
	

	<table cellspacing="0" cellpadding="0" border="0" style="width: 96%;">
		<tr>
			<td style="padding: 10px 0 10px 0; text-align:center;">
				<table cellspacing="0" cellpadding="0" style="width: 96%; border: 1px solid #CCCCCC; margin:0 auto;">
					<tr style="height: 22px; background: #f3f4f9; font: 11px Arial, Helvetica, sans-serif;">
						<td colspan="7" style="width: 25%; font-weight: bold; padding: 5px 0 0 5px; border-bottom: 1px solid #CCCCCC; background:#DCDFEE; color: #363636; text-align: left;">{_LABEL_AUTOS}</td>
					</tr>
					<tr style="height: 22px; background: #F3F4F9; font: 11px Arial, Helvetica, sans-serif;">
					 	<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_AUTO}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_DIAS}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_PICKUP_DATE}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_PICKUP_PLACE}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_DEVOLUCION}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_PICKUP_PLACE}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; color: #003e7e; text-align: left;">{_LABEL_TOTAL}</td>			
					</tr>
						
					{*AUTOS}
					<tr style="height: 22px; background: #fff; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left; vertical-align: text-top;">
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{TIPO_AUTO}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{DIAS}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{PICKUP_FECHA}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{PICKUP_LUGAR}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{DROPOFF_FECHA}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{DROPOFF_LUGAR}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px;">{MONEDA_SYMBOL}{PRECIO}</td>
					</tr>
					{/AUTOS}
				</table>
			</td>
		</tr>
	</table>
	</div>
{/BLOQUE_AUTOS}

{*BLOQUE_AUTOS_SIN_MONTOS}
	<br>
	

	<table cellspacing="0" cellpadding="0" border="0" style="width: 96%;">
		<tr>
			<td style="padding: 10px 0 10px 0; text-align:center;">
				<table cellspacing="0" cellpadding="0" style="width: 96%; border: 1px solid #CCCCCC; margin:0 auto;">
					<tr style="height: 22px; background: #f3f4f9; font: 11px Arial, Helvetica, sans-serif;">
						<td colspan="7" style="width: 25%; font-weight: bold; padding: 5px 0 0 5px; border-bottom: 1px solid #D0D3E2; background:#DCDFEE; color: #363636; text-align: left;">{_LABEL_AUTOS}</td>
					</tr>
					<tr style="height: 22px; background: #F3F4F9; font: 11px Arial, Helvetica, sans-serif;">
					 	<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_AUTO}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_DIAS}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_PICKUP_DATE}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_PICKUP_PLACE}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_DEVOLUCION}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; color: #003e7e; text-align: left;">{_LABEL_PICKUP_PLACE}</td>
					</tr>
						
					{*AUTOS_SIN_MONTOS}
					<tr style="height: 22px; background: #fff; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left; vertical-align: text-top;">
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{TIPO_AUTO}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{DIAS}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{PICKUP_FECHA}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{PICKUP_LUGAR}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{DROPOFF_FECHA}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{DROPOFF_LUGAR}</td>
					</tr>
					{/AUTOS_SIN_MONTOS}
				</table>
			</td>
		</tr>
	</table>
	
{/BLOQUE_AUTOS_SIN_MONTOS}

{*BLOQUE_ACTIVIDADES}
	<br>
	

	<table cellspacing="0" cellpadding="0" border="0" style="width: 96%;">
		<tr>
			<td style="padding: 10px 0 10px 0; text-align:center;">
				<table cellspacing="0" cellpadding="0" style="width: 96%; border: 1px solid #CCCCCC; margin:0 auto;">
					<tr style="height: 22px; background: #f3f4f9; font: 11px Arial, Helvetica, sans-serif;">
						<td colspan="5" style="width: 25%; font-weight: bold; padding: 5px 0 0 5px; border-bottom: 1px solid #D0D3E2; background:#DCDFEE; color: #363636; text-align: left;">{_LABEL_ACTIVIDADES}</td>
					</tr>
					<tr style="height: 22px; background: #F3F4F9; font: 11px Arial, Helvetica, sans-serif;">
					 	<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_ACTIVIDAD}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_PROVEEDOR}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_NUM_PARTICIPANTES}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_FECHA_ACTIVIDAD}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; color: #003e7e; text-align: left;">{_LABEL_TOTAL}</td>
					</tr>
						
					{*ACTIVIDADES}
					<tr style="height: 22px; background: #fff; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left; vertical-align: text-top;">
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{NOMBRE}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{EMPRESA}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{NUM_PARTICIPANTES}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{FECHA_ACTIVIDAD}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; ">{MONEDA_SYMBOL}{PRECIO}</td>
					</tr>
					{/ACTIVIDADES}
				</table>
			</td>
		</tr>
	</table>
	
	
{/BLOQUE_ACTIVIDADES}

{*BLOQUE_ACTIVIDADES_SIN_MONTOS}
	<br>
	
	<table cellspacing="0" cellpadding="0" border="0" style="width: 96%;">
		<tr>
			<td style="padding: 10px 0 10px 0; text-align:center;">
				<table cellspacing="0" cellpadding="0" style="width: 96%; border: 1px solid #CCCCCC; margin:0 auto;">
					<tr style="height: 22px; background: #f3f4f9; font: 11px Arial, Helvetica, sans-serif;">
						<td colspan="5" style="width: 25%; font-weight: bold; padding: 5px 0 0 5px; border-bottom: 1px solid #D0D3E2; background:#DCDFEE; color: #363636; text-align: left;">{_LABEL_ACTIVIDADES}</td>
					</tr>
					<tr style="height: 22px; background: #F3F4F9; font: 11px Arial, Helvetica, sans-serif;">
					 	<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_ACTIVIDAD}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_PROVEEDOR}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_NUM_PARTICIPANTES}</td>
						<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">{_LABEL_FECHA_ACTIVIDAD}</td>
					</tr>
						
					{*ACTIVIDADES_SIN_MONTOS}
					<tr style="height: 22px; background: #fff; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left; vertical-align: text-top;">
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{NOMBRE}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{EMPRESA}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{NUM_PARTICIPANTES}</td>
						<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">{FECHA_ACTIVIDAD}</td>
					</tr>
					{/ACTIVIDADES_SIN_MONTOS}
				</table>
			</td>
		</tr>
	</table>
	
	
{/BLOQUE_ACTIVIDADES_SIN_MONTOS}
<!--
<br>
<div> SEGUROS </div>
<table width="100%">
{*SEGUROS}
	<tr>
		<td>{EMPRESA}</td>
		<td>${PRECIO}</td>			 
	</tr>
{/SEGUROS}
</table>
-->
{*BLOQUE_TOTAL_ITINERARIO}
<table cellspacing="0" cellpadding="0" border="0" style="width: 96%;">
		<tr>
			<td style="padding: 10px 0 10px 0; text-align:center;">
	<table border="0" cellspacing="0" cellpadding="0" style="width: 96%; margin:0 auto; height:25px;">
		<tr style="background: #F3F4F9; font: 11px Arial, Helvetica, sans-serif;">	
			<td style="font-weight: bold; padding: 5px 10px 5px 5px; color: #000000; text-align: left; border-left: 1px solid #CCCCCC; border-top: 1px solid #CCCCCC; border-bottom: 1px solid #CCCCCC;">{_LABEL_TOTAL}</td>
			<td style="font-weight: bold; padding: 5px 10px 5px 5px; text-align:right; color: #000000; border-right: 1px solid #CCCCCC; border-top: 1px solid #CCCCCC; border-bottom: 1px solid #CCCCCC;">{MONEDA_SYMBOL}{TOTAL}</td>
		</tr>
	</table>
</td>
  </tr>
</table>

{/BLOQUE_TOTAL_ITINERARIO}
</td>
  </tr>
</table>


					

