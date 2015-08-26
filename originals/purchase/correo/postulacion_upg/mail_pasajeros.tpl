<html>
<head>
<title>LAN.com</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="http://{HOST}.lan.com/css/base_2k8.css" type="text/css" title="LAN.com">
<link rel="stylesheet" href="http://{HOST}.lan.com/css/base_2k8_es.css" type="text/css" title="LAN.com">
<link rel="stylesheet" href="http://{HOST}.lan.com/css/legacy_base.css" type="text/css" title="LAN.com">
<link rel="stylesheet" href="http://{HOST}.lan.com/css/cajero.css" type="text/css" title="LAN.com">


</head>
<body style="background:#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td style="text-align:center;"><table width="600" border="0" cellspacing="0" cellpadding="0" style="border: 1px solid #CCC; margin:0 auto;">
        <tr>
          <td style="background:#415884; height:90px; text-align:left;"><a href="http://www.lan.com" target="_blank"><img src="http://www.lan.com/images/mail/operacional/bg_logo_lanpass.gif" alt="LAN.com" width="260" height="82" border="0" style="margin: 8px 0 0 15px;"></a></td>
        </tr>
        <tr>
          <td style="height:5px;"></td>
        </tr>
        <tr>
          <td style="height: 31px; background: #d0e5f6; text-align: left; font: bold 15px Arial, Helvetica, sans-serif; color: #415884; padding: 5px 5px 5px 10px;">{_TITULO_UPG_MAIL1_POSTULACION}</td>
        </tr>
        <tr>
          <td style="font: normal 12px Arial, Helvetica, sans-serif; color: #333; padding: 20px 8px 15px 10px; text-align:left;"><p><strong>{_ESTIMADO} {NOMBRE_PASSENGER}</strong>&#44;<br>
          </p> </td>
        </tr>
		<tr>
          <td style="font: normal 12px Arial, Helvetica, sans-serif; color: #333; padding: 5px 8px 10px 10px; text-align:left;">{_MSG_UPG_MAIL1_POSTULACION}</td>
        </tr>
        <tr>       
		<td style="padding: 0px 10px 10px 10px;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" style="border-top: 1px solid #CCCCCC; border-collapse: collapse;">
        <tr>
        <th colspan="6" style="background: #DCDFEE; text-align: left; font-weight: bold; font-size: 11px; font-family: Arial, Helvetica, sans-serif; color: #333; padding: 4px 2px 2px 5px; border-left: 1px solid #CCCCCC; border-right: 1px solid #CCCCCC;">{_LABEL_UPG_POSTULACION_PASAJERO}</th>
        </tr>	
		<tr>
			<td>
			<lan:widget class="Widgets::Upg::Postulacion_Pasajero">
				<lan:value>{SESSION_ID}</lan:value>
				<lan:value>{CONTEXT_ID}</lan:value>
				<lan:value>{FOID}</lan:value>
			</lan:widget>
			</td>
		</tr>
		</table><br/>

		<table width="100%" border="0" cellspacing="0" cellpadding="0" style="border-top: 1px solid #CCCCCC; border-collapse: collapse;">
 		<tr>
		<th colspan="5" style="background: #DCDFEE; text-align: left; font-weight: bold; font-size: 11px; font-family: Arial, Helvetica, sans-serif; color: #333; padding: 4px 2px 2px 5px; border-left: 1px solid #CCCCCC; border-right: 1px solid #CCCCCC;">{_LABEL_UPG_RESUMEN_CUPONES} </th>
        </tr>
		<tr>
			<td>
			<lan:widget class="Widgets::Upg::Resumen">
				<lan:value>{SESSION_ID}</lan:value>
				<lan:value>{CONTEXT_ID}</lan:value>
				<lan:value>{FOID}</lan:value>
			</lan:widget>
			</td>
		</tr>
		</table>
		</td>
      	</tr> 
        <tr>
          <td style="font: normal 12px Arial, Helvetica, sans-serif; color: #333; padding: 10px 8px 15px 10px; text-align:left;">{_MSG_PREFERENCIA}<br>
          <strong>{_LABEL_LANPASS}</strong></td>
        </tr>
        <tr>
          <td style="background:#415884; height:27px; font: normal 11px Arial, Helvetica, sans-serif; color: #fff; padding:7px 0 0 15px; text-align:left;">{_COPYRIGHT_MAIL}</td>
        </tr>
        <tr>
          <td style="font: normal 11px Arial, Helvetica, sans-serif; color: #666; padding:5px 0 5px 15px; text-align:left;">*{_TXT_RECEPCION_MAIL}<br>
            *{_TXT_NO_RESPONDA}<br>
            *{_TXT_DIRECCION_MERCADO}</td>
        </tr>
      </table></td>
  </tr>
</table>
<img src="http://www.lan.com/cgi-bin/log/go.cgi?tap_id=100971" alt="" width="1" height="1">
</body>
</html>


