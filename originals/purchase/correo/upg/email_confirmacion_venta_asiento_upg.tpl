<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<title>LAN.com</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	</head>
	<body>
		<table width="100%"  border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td style="text-align:center;">
					<table width="600" border="0" cellspacing="0" cellpadding="0" style="border: 1px solid #CCC; margin:0 auto;">
			<tr>
				<td style="background:#415884; height:90px; text-align:left;">
					<a href="http://www.lan.com" target="_blank"><img src="http://www.lan.com/images/mail/operacional/bg_logo_com.gif" alt="LAN.com" width="260" height="82" border="0" style="margin: 8px 0 0 15px;"></a>
				</td>
			</tr>
			<tr>
				<td style="height:5px;"></td>
			</tr>
				{*BLOQUE_TITULO_TARJETA_EMBARQUE}
			<tr>
				<td style="height: 31px; background: #d0e5f6; text-align: left; font: bold 15px Arial, Helvetica, sans-serif; color: #415884; padding: 5px;">{_TITULO_MAIL_TARJ_EMBARQUE}</td>
			</tr>
				{/BLOQUE_TITULO_TARJETA_EMBARQUE}
			<tr>
				<td style="font: normal 12px Arial, Helvetica, sans-serif; color: #333; padding: 20px 8px 8px 8px; text-align:left;"><strong>{_ESTIMADO} {NOMBRE} {APELLIDO}</strong>
					{*FRASE_TARJETA_EMBARQUE}
						<br>
						<br />
						{_MSG_INI_MAIL_TARJ_EMBARQUE}
					{/FRASE_TARJETA_EMBARQUE}
					<br />
					<br />
					{_FRASE_DETALLE_VUELO}
				</td>
			</tr>
			<tr>
				<td>
					<table width="580" border="0" cellspacing="0" cellpadding="0" style="border: 1px solid #CCC; margin:0 auto 10px;">
						<tr style="height: 26px; background: #033D7D; font: 14px Arial, Helvetica, sans-serif; color: #fff; text-align: left;">
							<td colspan="5" style="width: 25%; font-weight: bold; padding: 0 0 0 10px; border-bottom: 1px solid #ccc;">{DETALLE_ASIENTO}</td>
						</tr>
						<tr>
							<td style="text-align: left; font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #333; padding: 20px 8px 8px 8px;">{_MSG_UPGRADE_SPLIT_PNR}</td>
						</tr>
						<tr>
							<td style="padding:0px; text-align:center; margin:0px auto;">
								<table border="0" cellpadding="0" cellspacing="0" style=" border: 1px solid #ccc; margin: 10px 10px;">
									<tr style="height: 26px; background: #DCE0EE; font: 12px Arial, Helvetica, sans-serif; color: #363636; text-align: left;">
										<td colspan="6" style="width: 25%; font-weight: bold; padding: 4px 0 0 5px; border-bottom: 1px solid #ccc;">09 de febrero 2011 Santiago de Chile - Puerto Montt LA 257</td>
									</tr>
									<tr>
										<td style=" background-color: #F3F4F9; font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif; font-weight:bold;">{_LABEL_PAX_NOMBRE} </td>
										<td style=" background-color: #F3F4F9; font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif; font-weight:bold;">{_LABEL_PAX_APELLIDO}</td>
										<td style=" background-color: #F3F4F9; font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif; font-weight:bold;">{_LABEL_ASIENTO}</td>
										<td style=" background-color: #F3F4F9; font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif; font-weight:bold;">{_LABEL_PRECIO}</td>
										<td style=" background-color: #F3F4F9; font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif; font-weight:bold;">{_LABEL_PNR}</td>
										<td style=" background-color: #F3F4F9; font-size: 12px; text-align: center; padding: 5px; font-family:Arial, Helvetica, sans-serif; font-weight:bold;">{_LABEL_ESTADO}</td>
									</tr>
									<tr>
										<td style="font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; border-top: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif;">{NOMBRE}</td>
										<td style="font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; border-top: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif;">{APELLIDO}</td>
										<td style="font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; border-top: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif;">4c</td>
										<td style="font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; border-top: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif;">30.000</td>
										<td style="font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; border-top: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif;">7ALG9S</td>
										<td style="font-size: 12px; text-align: center; padding: 5px; border-top: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif;">Pagada</td>
									</tr>
									<tr>
										<td style="font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; border-top: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif;">{NOMBRE}</td>
										<td style="font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; border-top: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif;">{APELLIDO}</td>
										<td style="font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; border-top: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif;">4c</td>
										<td style="font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; border-top: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif;">30.000</td>
										<td style="font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; border-top: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif;">699R7F</td>
										<td style="font-size: 12px; text-align: center; padding: 5px; border-top: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif;">Pagada</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td style="padding:0px; text-align:center; margin:0px auto;">
								<table border="0" cellpadding="0" cellspacing="0" style=" border: 1px solid #ccc; margin: 10px 10px;">
									<tr style="height: 26px; background: #DCE0EE; font: 12px Arial, Helvetica, sans-serif; color: #363636; text-align: left;">
										<td colspan="5" style="width: 25%; font-weight: bold; padding: 4px 0 0 5px; border-bottom: 1px solid #ccc;">{_LABEL_DETALLE_INFORMACION_PAGO}</td>
									</tr>
									<tr>
										<td style=" background-color: #F3F4F9; font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif; font-weight:bold;">{_LABEL_MONTO}</td>
										<td style=" background-color: #F3F4F9; font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif; font-weight:bold;">{_LABEL_MONEDA}</td>
									</tr>
									<tr>
										<td style="font-size: 12px; text-align: center; padding: 5px; border-right: 1px solid #ccc; border-top: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif;">60.000</td>
										<td style="font-size: 12px; text-align: center; padding: 5px; border-top: 1px solid #ccc; font-family:Arial, Helvetica, sans-serif;">CLP</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		{*BLOQUE_LABEL_PRESENTE}
			<tr>
				<td style="background:#e6f2fc; font: bold 11px Arial, Helvetica, sans-serif; color: #333; padding: 8px; text-align:left;">{_LABEL_TENGA_PRESENTE_QUE}</td>
			</tr>
			<tr>
				<td style="font: normal 11px Arial, Helvetica, sans-serif; color: #333; padding: 5px 8px 10px 8px; text-align:left;">
					<ul style="list-style-type:disc;">{_MSG_FIN_MAIL_TARJ_EMBARQUE}</ul>
				</td>
			</tr>
		{/BLOQUE_LABEL_PRESENTE}
		<tr>
			<td style="font: normal 12px Arial, Helvetica, sans-serif; color: #333; padding: 20px 8px 15px 8px; text-align:left;">{_MSG_PREFERENCIA}<br><strong>LAN.com</strong></td>
		</tr>
		<tr>
			<td style="background:#415884; height:27px; font: normal 11px Arial, Helvetica, sans-serif; color: #fff; padding:7px 0 0 15px; text-align:left;">{_COPYRIGHT_MAIL}</td>
		</tr>
		<tr>
			<td style="font: normal 11px Arial, Helvetica, sans-serif; color: #666; padding:5px 0 5px 15px; text-align:left;">{_TXT_RECEPCION_MAIL}<br>
				{_TXT_NO_RESPONDA}<br>
				{_TXT_DIRECCION_MERCADO}<br>{_MSG_ACENTOS_OMITIDOS}
			</td>
		</tr>
		</table>
	</body>
</html>