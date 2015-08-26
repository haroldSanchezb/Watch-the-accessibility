{*CONTENIDO_CUPON}
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="width: 100%; border: 1px solid #CCCCCC; margin:0 auto;">
  	<tr>
    	<td style="background-color:#DCDFEE; color:#333333; font: 11px Arial, Helvetica, sans-serif; font-weight:bold; padding: 5px 0 5px 5px; text-align:left; border-bottom:1px solid #cccccc">{_CUPON_DE_PAGO} {NOMBRE_COMERCIO}</td>
  	</tr>
  	<tr>
    	<td style="text-align:center">
		<table width="96%" border="0" cellspacing="0" cellpadding="0" style="width:96%; padding:0px 0px 10px 0px;">
      	<tr>
        	<td style="padding:10px 0px 10px 0px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td style="text-align:left;">{LOGO_COMERCIO}</td>
				<td style="text-align:right;"><img src="http://www.lan.com/images/cajero/logo_lan.gif" width="148" height="45" alt="LAN.com"/></td>
			  </tr>
			</table>
			</td>
      	</tr>
      	<tr>
        	<td style="padding:0px 0px 8px 0px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
  			<tr>
    			<td style="font: 12px Arial, Helvetica, sans-serif; text-align:left; width:40%;">{_LABEL_MONTO}:</td>
    			<td style="font: 12px Arial, Helvetica, sans-serif; text-align:left; font-weight:bold; width:60%;">{MONTO_A_PAGAR}</td>
  			</tr>
			</table>
			</td>
      	</tr>
	  	<tr>
        	<td style="padding:0px 0px 8px 0px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
  			<tr>
				<td style="font: 12px Arial, Helvetica, sans-serif; text-align:left; width:40%;">{_LABEL_FECHA_LIMITE_PAGO}:</td>
				<td style="font: 12px Arial, Helvetica, sans-serif; text-align:left; font-weight:bold; width:60%;">{FECHA_LIMITE}</td>
  			</tr>
			</table>
			</td>
      	</tr>
	  	<tr>
			<td style="padding:0px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
  			<tr>
				<td style="font: 12px Arial, Helvetica, sans-serif; text-align:left; width:40%;">{_LABEL_CODIGO_PAGO}:</td>
				{*CODIGO_ID_PAGO}
				<td style="font: 12px Arial, Helvetica, sans-serif; text-align:left; font-weight:bold; width:60%;">{ID_PAGO}</td>
				{/CODIGO_ID_PAGO}
    		</tr>
			</table>

			</td>
      	</tr>
		<tr>
			
			<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
			  {*CODIGO_DE_BARRA}
                <td style="width:38%;"></td>
                <td style="width:62%; text-align:left;"><img src="{CODIGO_BARRA}" alt="{ID_PAGO}" ></td>
				{/CODIGO_DE_BARRA}
              </tr>
            </table>
		    </td>
			
		</tr>
    </table>
	</td>
  </tr>
</table>
{/CONTENIDO_CUPON}


