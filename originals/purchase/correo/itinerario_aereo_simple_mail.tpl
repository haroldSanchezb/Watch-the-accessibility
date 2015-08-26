
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
	<div id="contenedor_servicio_ezrez">
	<table border="0" cellpadding="0" cellspacing="0" style="width: 96%;">
		<tr>
			<td style="padding: 10px 0 10px 0; text-align:center;">
				<table cellspacing="0" cellpadding="0" style="width: 96%; border: 1px solid #CCCCCC; margin:0 auto;">
					<tr style="height: 22px; background: #f3f4f9; font: 11px Arial, Helvetica, sans-serif; ">
						<td colspan="4" style="font-weight: bold; padding: 5px 0 0 5px; border-bottom: 1px solid #CCCCCC; background:#DCDFEE; color: #363636; text-align: left;">{_LABEL_VUELO}</td>
					</tr>
					<tr style="height: 22px; background: #F3F4F9; font: 11px Arial, Helvetica, sans-serif;">
					 	{*BLOQUE_HEADER_TRAMO}
							<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left; ">
							{HEADER_TRAMO}
							</td>
						{/BLOQUE_HEADER_TRAMO}
							<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">
								{_LABEL_CABINA}
							</td>
					 	{*BLOQUE_HEADER_MONTO}
							<td style="font-weight: normal; padding: 4px 0 0 5px; border-right: 1px solid #CCCCCC; color: #003e7e; text-align: left;">
							{_LABEL_TOTAL}
							</td>
						{/BLOQUE_HEADER_MONTO}
					</tr>

					<tr style="height: 22px; background: #fff; font: 11px Arial, Helvetica, sans-serif; color: #333; text-align: left; vertical-align: text-top;">
						{*BLOQUE_TRAMO}
							<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">
							{ORIGEN} - {DESTINO} {FECHA}
							</td>
						{/BLOQUE_TRAMO}
							<td style="font-weight: normal; padding: 4px 0 5px 5px; border-right: 1px solid #CCCCCC;">
								{CABINA}
							</td>
						{*BLOQUE_MONTO}
							<td style="font-weight: normal; padding: 4px 0 5px 5px;">
								{SIMBOLO_MONEDA}{MONTO}
							</td>
						{/BLOQUE_MONTO}
					</tr>
				</table>	
			</td>	
		</tr>
	</table>
	</div>
	
	</td>
  </tr>
  
</table>




