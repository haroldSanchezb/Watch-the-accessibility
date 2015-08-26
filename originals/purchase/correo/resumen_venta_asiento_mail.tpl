<div id="contenedor_pago_reserva">
	{*BLOQUE_PALABRA_RESUMEN}
		<h2>{_LABEL_RESUMEN_COMPRA}</h2>
	{/BLOQUE_PALABRA_RESUMEN}
	<div id="box-content">
		<div id="box-int-border">
			<table width="580" border="0" cellspacing="0" cellpadding="0" style="border: 1px solid #CCC; margin:0 auto 10px; padding: 0 0 10px 0;">
					<tr style="height: 26px; background: #033D7D; font: 14px Arial, Helvetica, sans-serif; color: #fff; text-align: left;">
						<td colspan="9" style="width: 25%; font-weight: bold; padding: 5px 10px; border-bottom: 1px solid #ccc; margin: 0;">
							{LABEL_DETALLE}
						</td>
					</tr>
				{*BLOQUE_MSG_UPG_SPLIT_PNR}
					<tr>
						<td style="text-align: left; font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #333; padding: 20px 8px 8px 8px;">{_MSG_UPGRADE_SPLIT_PNR}</td>
					</tr>
				{/BLOQUE_MSG_UPG_SPLIT_PNR}
					<tr>
						<td>
							{*BLOQUE_SEGMENTO}
                            <br />
							<table width="100%" border="0" cellpadding="0" cellspacing="0" style=" border: 1px solid #ccc; margin: 10px 0; text-align:center;">
									<tr style="height: 26px; background: #DCE0EE; font: 12px Arial, Helvetica, sans-serif; color: #363636; text-align: left;">
										<td colspan="9" style="background-color:#dde0ef; font-family:Arial, Helvetica, sans-serif; font-size:13px; color:333; padding:3px 0 3px 20px; border-bottom:#CCC 1px solid; border-top:none; text-align:left;">
											{FECHA_SEGMENTO} <strong>{ORIGEN_SEGMENTO} - {DESTINO_SEGMENTO}</strong> {VUELO_SEGMENTO}
										</td>
									</tr>
									<tr>
										<td style="background-color:#f3f4f9; font-family:Arial, Helvetica, sans-serif; padding: 5px 0; font-size:12px; color:#033d7d; text-align: center; border-bottom: none; border-right: 1px solid #ccc;">{_LABEL_NOMBRE}</td>
										<td style="background-color:#f3f4f9; font-family:Arial, Helvetica, sans-serif; padding: 5px 0; font-size:12px; color:#033d7d; text-align: center; border-bottom: none; border-right: 1px solid #ccc;">{_LABEL_APELLIDO}</td>
										<td style="background-color:#f3f4f9; font-family:Arial, Helvetica, sans-serif; padding: 5px 0; font-size:12px; color:#033d7d; text-align: center; border-bottom: none; border-right: 1px solid #ccc;">{_LABEL_ASIENTO}</td>
										{*BLOQUE_PNR_LABEL}
											<td style="background-color:#f3f4f9; font-family:Arial, Helvetica, sans-serif; padding: 5px 0; font-size:12px; text-align: center; color:#033d7d; border-bottom: none; border-right: 1px solid #ccc;">{LABEL_PNR}</td>
										{/BLOQUE_PNR_LABEL}

										{*BLOQUE_ESTADO_LABEL}
											<td style="background-color:#f3f4f9; font-family:Arial, Helvetica, sans-serif; padding: 5px 0; font-size:12px; text-align: center; color:#033d7d;">{LABEL_ESTADO}</td>
										{/BLOQUE_ESTADO_LABEL}
										{*BLOQUE_LABEL_IMPUESTO}
											<td style="background-color:#f3f4f9; font-family:Arial, Helvetica, sans-serif; padding: 5px 0; font-size:12px; color:#033d7d; text-align: center; border-bottom: none; border-left: 1px solid #ccc;">{_LABEL_TARIFA_NETA}</td>
											<td style="background-color:#f3f4f9; font-family:Arial, Helvetica, sans-serif; padding: 5px 0; font-size:12px; color:#033d7d; text-align: center; border-bottom: none; border-left: 1px solid #ccc;">{_LABEL_IMPUESTO_VENTA}</td>
										{/BLOQUE_LABEL_IMPUESTO}
										<td style="background-color:#f3f4f9; font-family:Arial, Helvetica, sans-serif; padding: 5px 0; font-size:12px; color:#033d7d; text-align: center; border-bottom: none; border-left: 1px solid #ccc; border-right: 0px solid #ccc;">{_LABEL_PRECIO}</td>

									</tr>
									{*BLOQUE_PASAJERO}
										<tr>
											<td style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333; padding: 5px 0; text-align: center; border-bottom: none; border-right: 1px solid #ccc; border-top: 1px solid #ccc;">{NOMBRE}</td>
											<td style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333; padding: 5px 0; text-align: center; border: 1px solid #ccc;  border-bottom: none; border-left: none;">{APELLIDO}</td>
											<td style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333; padding: 5px 0; text-align: center; border: 1px solid #ccc;  border-bottom: none; border-left: none;">{ASIENTO} {ASIENTO_EN_SALIDA}</td>
											{*BLOQUE_PNR}
											<td style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333; padding: 5px 0; border-bottom:#CCC 1px solid; text-align: center; border: 1px solid #ccc; border-bottom: none; border-left: none;">{PNR}</td>
											{/BLOQUE_PNR}

											{*BLOQUE_ESTADO}
												<td style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333; padding: 5px 0; border-bottom:#CCC 1px solid; text-align: center; border: 1px solid #ccc; border-bottom: none; border-left: none; border-right: 1px solid #ccc;">{ESTADO}</td>
											{/BLOQUE_ESTADO}
											{*BLOQUE_INFO_IMPUESTO}
											<td style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333; padding: 5px 0; border-bottom:#CCC 1px solid; text-align: center; border: 1px solid #ccc; border-bottom: none; border-left: none; border-right: 1px solid #ccc;">
											{CURRENCY_SYMBOL} {MONTO_NETO}
											</td>
											<td style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333; padding: 5px 0; border-bottom:#CCC 1px solid; text-align: center; border: 1px solid #ccc; border-bottom: none; border-left: none; border-right: 1px solid #ccc;">
											{CURRENCY_SYMBOL} {MONTO_IMPUESTO}
											</td>
											{/BLOQUE_INFO_IMPUESTO}
											<td style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333; padding: 5px 0; border-bottom:#CCC 1px solid; text-align: center; border: 1px solid #ccc; border-bottom: none; border-left: none; border-right: none;">{SIMBOLO_PRECIO} {PRECIO}</td>
										</tr>
									{/BLOQUE_PASAJERO}
							</table>
<br />
							{*INFO_AEROLINEAS}
							<table width="100%" border="0" cellpadding="0" cellspacing="0" style=" border: 1px solid #ccc; margin: 10px 0; text-align:center">
							<tr>
								<td style="background-color:#f3f4f9; font-family:Arial, Helvetica, sans-serif; padding: 5px 0; font-size:12px; color:#033d7d; text-align: center; border-bottom: 1px solid #ccc; border-right: 1px solid #ccc;" width="50%">{_LABEL_AEROLINEA_OPERADORA}</td>
								<td style="background-color:#f3f4f9; font-family:Arial, Helvetica, sans-serif; padding: 5px 0; font-size:12px; color:#033d7d; text-align: center; border-bottom: none; border-right: 0px solid #ccc;" width="50%">{_LABEL_AEROLINEA_COMERCIALIZADORA}</td>
							</tr>
							<tr>
								<td style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333; padding: 5px 0; text-align: center; border-bottom: none; border-right: 1px solid #ccc;">{AEROLINEA_OPERA}</td>
								<td style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333; padding: 5px 0; text-align: center; border: 1px solid #ccc; border-bottom: none; border-left: none; border-right: 0px solid #ccc;">{AEROLINEA_MARKETEA}</td>
							</tr>
							</table>
							{/INFO_AEROLINEAS}

							{/BLOQUE_SEGMENTO}
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
			</table>

		</div>
	</div>
</div>
