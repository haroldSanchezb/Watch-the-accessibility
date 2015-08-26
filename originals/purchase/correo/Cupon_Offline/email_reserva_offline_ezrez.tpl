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
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td style="text-align:center;"><table width="600" border="0" cellspacing="0" cellpadding="0" style="border: 1px solid #CCC; margin:0 auto;">
  <tr>
    <td style="background:#415884; height:90px; text-align:left;"><a href="http://www.lan.com" target="_blank"><img src="http://{HOST}.lan.com/images/mail/operacional/bg_logo_com.gif" alt="LAN.com" width="260" height="82" border="0" style="margin: 8px 0 0 15px;"></a></td>
  </tr>
  <tr>
    <td style="height:5px;"></td>
  </tr>
  <tr>
    <td style="height: 31px; background: #d0e5f6; text-align: left; font: bold 15px Arial, Helvetica, sans-serif; color: #415884; padding: 5px;">{_MSG_RESERVA_OFFLINE_EXITO}</td>
  </tr>
  <tr>
    <td style="font: normal 12px Arial, Helvetica, sans-serif; color: #333; padding: 20px 8px 15px 8px; text-align:left;"><p><strong>{_ESTIMADO} {NOMBRE_LEAD_PASSENGER}</strong>&#44;<br>
            <br>
            {_MSG_RESERVA_OFFLINE}
         </p></td>
  </tr>
  <tr>
    <td style="font: bold 18px Arial, Helvetica, sans-serif; color: #033D7D; padding: 0 8px 10px 10px; text-align:left;">{*BLOQUE_CODIGO_RESERVA_AEREA}{_LABEL_CODIGO_RESERVA_VUELO}:{PNR}<br>{/BLOQUE_CODIGO_RESERVA_AEREA}
{_LABEL_CODIGO_RESERVA_TERRESTRE}:{BOOKING_ID}</td>
   </tr> 
  {*BLOQUE_DATOS_RESERVA_AEREA} 
  <tr>
    <td style="padding: 0px 0 10px 0;">{ITINERARIO_AEREO}</td>
  </tr> 
  {/BLOQUE_DATOS_RESERVA_AEREA} 
   <tr>
    <td style="padding: 0px 0 10px 0;">{ITINERARIO}</td>
  </tr>
  
{INFORMACION_PAGO}

 <tr>
    <td style="font: normal 12px Arial, Helvetica, sans-serif; color: #333; padding: 10px 8px 15px 8px; text-align:left;">{_MSG_SALUDA_CORDIALMENTE}<br>
          <strong>LAN.com</strong></td>
  </tr>
  <tr>
    <td style="background:#415884; height:27px; font: normal 11px Arial, Helvetica, sans-serif; color: #fff; padding:7px 0 0 15px; text-align:left;">{_COPYRIGHT_MAIL}</td>
  </tr>
  <tr>
    <td style="font: normal 11px Arial, Helvetica, sans-serif; color: #666; padding:5px 0 5px 15px; text-align:left;">*{_TXT_RECEPCION_MAIL}<br>
            *{_TXT_NO_RESPONDA}<br>
            *{_TXT_DIRECCION_MERCADO}</td>
  </tr>
</table>
</td>
  </tr>
</table>

</body>
</html>
