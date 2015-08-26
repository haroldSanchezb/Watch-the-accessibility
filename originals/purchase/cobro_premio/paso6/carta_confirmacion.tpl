<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>LAN.com</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="http://{HOST}.lan.com/css/base_2k8.css" type="text/css" title="LAN.com">
<link rel="stylesheet" href="http://{HOST}.lan.com/css/base_2k8_es.css" type="text/css" title="LAN.com">
<link rel="stylesheet" href="http://{HOST}.lan.com/css/legacy_base.css" type="text/css" title="LAN.com">
<link rel="stylesheet" href="http://{HOST}.lan.com/css/cajero.css" type="text/css" title="LAN.com">

<style type="text/css">
<!--

#cuerpo_cupon{
	width: 590px;
	margin: 10px auto 0 auto;
	color: #FFFFFF;
	padding: 0 0 10px 0;	
}

#bloque_cupon{
	width: 588px;
	border: 1px solid #DBE2EC;
	float: left;
}

.titulo_cupon{
	width: 568px;
	height: 23px;
	background-color: #DCDFEE;
	color: #000000;
	font-weight: bold;
	padding: 7px 0 0 20px;	
	font-size: 1.3em;
}

.bloque_medios_pago{
	float: left;
	width: 550px;
	margin: 10px 0 0 0;
	padding: 0 19px 20px 19px;
}

.imagen_medios_pago{
	float: left;
	width: 154px;
	margin: 0 0 0 0;	
}

.texto_medios_pago{
	float: left;
	width: 396px;
	font-family: Arial, Helvetica, sans-serif;
	color: #000000;
	padding: 0 0 0 0;
	font-size: 1.0em;	
}

.bloque_datos{
	float: left;
	width: 550px;
	margin: 10px 0 10px 0;
	padding: 0 19px 0 19px;
}

.fila_datos{
	float: left;
	width: 550px;
	font-family: Arial, Helvetica, sans-serif;
	color: #333333;
	font-size: 1.0em;
}

.informacion_datos{
	float: left;
	width: 154px;
	padding: 0 0 8px 0;
}

.resultado_datos{
	float: left;
	width: 396px;
	font-weight: bold;
	padding: 0 0 8px 0;	
}

.resultado_codigo{
	float: left;
	width: 396px;
	font-weight: bold;
	padding: 0 0 8px 0;	
}

.img_codigo_barras{
	float: left;
}

.bloque_terminos{
	float: left;
	width: 550px;
	margin: 10px 0 0 0;
	padding: 0 19px 0 19px;	
}

.linea_terminos{
	border-top-width: 1px;
	border-top-style: solid;
	border-top-color: #CCCCCC;
}

.texto_terminos{
	font-family: Arial, Helvetica, sans-serif;
	font-size: 1.0em;
	color: #666666;
	margin: 0 0 0 0;
	padding: 8px 0 10px 0;
}

.imagen_linea_punteada{
	float: left;
	width: 588px;	
}

#cuerpo_cupon_imprimir{
	width: 588px;
	height: 40px;
	background-color: #F3F4F9;
	border: 1px solid #DBE2EC;
	margin: 5px 0 20px 0;	
	font-family: Arial, Helvetica, sans-serif;
	font-size: 1.0em;
	color: #FFFFFF;
	float: left;
}

.boton_cupon_imprimir{
	background-color: #013E7F;
	float: right;
	height: 15px;
	width: 85px;
	font-weight: bold;
	margin: 12px 19px 0 0;	
	text-align: center;
	background-image: url(/images/boton_imprimir.gif);
}

.imagen_simple_medios{
	float: left;
	width: 154px;
	margin: 0 0 0 0;
	padding: 0 0 8px 0;		
}

.texto_simple_medios{
	float: left;
	width: 396px;
	font-family: Arial, Helvetica, sans-serif;
	color: #000000;
	padding: 0 0 8px 0;
	font-size: 1.0em;	
}

.bloque_simple_terminos{
	float: left;
	width: 550px;
	margin: 0 0 0 0;
	padding: 0 19px 0 19px;
}

-->
</style>

</head>

<body style="background:#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" style="border: 1px solid #CCC; margin:0 auto;">
  <tr>
    <td style="background:#415884; height:90px; text-align:left;"><a href="http://www.lan.com/lanpass" target="_blank"><img src="http://www.lan.com/images/mail/operacional/bg_logo_lanpass.gif" alt="LANPASS" width="260" height="82" border="0" style="margin: 8px 0 0 15px;"></a></td>
  </tr>
  <tr>
    <td style="height:5px;"></td>
  </tr>
  <tr>
    <td style="height: 31px; background: #d0e5f6; text-align: left; font: bold 15px Arial, Helvetica, sans-serif; color: #415884; padding: 5px;">{MSG_CPLP_EXITOSO}</td>
  </tr>
  <tr>
    <td style="font: normal 12px Arial, Helvetica, sans-serif; color: #333; padding: 20px 8px 15px 8px; text-align:left;"><p><strong>{_ESTIMADO} {NOMBRE}</strong>&#44;<br>
            <br>
            {MSG_CPLP_VARIABLE}
         </p> </td>
  </tr>
  <tr >
  <td style="font: bold 18px Arial, Helvetica, sans-serif; color: #033D7D; padding: 0 8px 10px 10px; text-align:left;">{_LABEL_CODIGO_RESERVA}: {PNR}</td>
  </tr>
  <tr>
  	<td style="padding: 0px 0 10px 0;">
  		{ITINERARIO}
		{APPLICATION_MESSAGES}
		<br />     
		{PASAJEROS}
		{TICKETS}
		<br />
		{TARIFA}
        <br />
		<br />
		<h4 style="background-color: #033d7d; font: 14px Arial, Helvetica, sans-serif; color: #fff; text-align: left; font-weight: bold; padding: 6px 4px 6px 8px; margin:0px; border:none; ">{_LABEL_INFORMACION_PAGO}</h4>
		<table cellspacing="0" cellpadding="0" style="width: 100%; border: 1px solid #CCC; margin:0 auto; font-family:Arial; font-size:10pt;">
		{INFORMACION_PAGO}
		</table>
		<br />
		{REGULACIONES}
		<br />
  	    <br />
        	<!--<h4 style="background-color: #033d7d; font: 14px Arial, Helvetica, sans-serif; color: #fff; text-align: left; font-weight: bold; padding: 6px 4px 6px 8px; margin:0px; border:none; ">{_PALABRA_SELECCION_ASIENTO_MAIL}</h4>
		<table cellspacing="0" cellpadding="0" style="width: 100%; border: 1px solid #CCC; margin:0 auto; font-family:Arial; font-size:10pt;">
          {INFORMACION_PAGO}
        </table>
        <br />
<p> {_FRASE_INVITACION_ASIENTO}</p>
			  <p style="text-align: center;"><strong><a href="https://ssl.lan.com/cgi-bin/seleccion_asiento/paso2.cgi?pnr={PNR};apellido={APELLIDO}">{_LABEL_HAGA_SELECCION_ASIENTO}</a></strong></p>--> 
			
			
<div style="width:100%;">
<div style="margin:0 auto; width: 200px; text-align: center;">

<p><a title="{_LABEL_RESERVE_SU_ASIENTO}" class="button-page" href="http://www.lan.com/cgi-bin/reserva_asiento/reserva_asiento.cgi" target="_blank">{_LABEL_RESERVE_SU_ASIENTO}</a></p>
</div>
</div> </td>
  </tr>
 <tr>
 <td style="font: normal 12px Arial, Helvetica, sans-serif; color: #333; padding: 10px 8px 15px 8px; text-align:left;">{_MSG_SALUDA_CORDIALMENTE}<br>
          <strong>LANPASS </strong></td>
 </tr>
 
 <tr>
 <td style="background:#415884; height:27px; font: normal 11px Arial, Helvetica, sans-serif; color: #fff; padding:7px 0 0 15px; text-align:left;">{_COPYRIGHT_MAIL}</td>
 </tr>
 <tr>
 <td style="font: normal 11px Arial, Helvetica, sans-serif; color: #666; padding:5px 0 5px 15px; text-align:left;">*{_TXT_RECEPCION_MAIL}<br>
            *{_TXT_NO_RESPONDA}<br>
            *{_TXT_DIRECCION_MERCADO}
 </td>
 </tr>
</table>
</td>
</tr>
</table>
{_IMG_PIXEL_MAIL_OPERACIONALES}
</body>
</html>
