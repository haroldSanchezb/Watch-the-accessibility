
<table width="600" border="0" cellspacing="0" cellpadding="0" style="border:1px solid #CCC;">
  <tr>
    <td style="padding:5px 15px; border-bottom:1px solid #CCC; height:20px; background-color:#DCDFEE;"><font color="#000" size="2" face="Arial" ><b>{_CUPON_DE_PAGO} {NOMBRE_COMERCIO}</b></font></td>

    <td colspan="2" style="padding:5px 15px; border-bottom:1px solid #CCC; height:20px; background-color:#DCDFEE; text-align:right; padding-right:15px;"><font color="#000" size="2" face="Arial" ><b>{_LABEL_CODIGO_PAGO}: {ID_PAGO}</b></font></td>
  
  </tr>
  <tr>
    <td style="width:130px; padding:3px 0 3px 10px;">{LOGO_COMERCIO}</td>
    <td>&nbsp;</td>
    <td style="text-align:right; padding:3px 15px 3px 0;"><img src="http://www.lan.com/images/cajero/logo_lan.gif" width="148" height="45" alt=""/></td>
  </tr>
  <tr>
    <td style="padding:5px; text-align:left;"><font color="#000" size="2" face="Arial" >{_LABEL_MONTO}:</font></td>
    <td style="padding:5px; text-align:left;"><font color="#000" size="2" face="Arial" >{MONTO_A_PAGAR}</font></td>
	{*CODIGO_DE_BARRA}<td rowspan="3" style="padding-right:5px;"><img src="{CODIGO_BARRA}" alt="{ID_PAGO}"></td>{/CODIGO_DE_BARRA}
  </tr>
  <tr>
    <td style="padding:5px; text-align:left;"><font color="#000" size="2" face="Arial" >{_LABEL_FECHA_LIMITE_PAGO}:</font></td>
    <td style="padding:5px; text-align:left; font-weight:bold;"><font color="#000" size="2" face="Arial" ><b>{FECHA_LIMITE}</b></font></td>
  </tr>
  <tr>
    <td colspan="3" style="padding:10px; text-align: justify; border-top: 1px dashed #CCC;"><font color="#999" size="1" face="Arial" >{MSG_COMPROBANTE}</font></td>
  </tr>
</table>


