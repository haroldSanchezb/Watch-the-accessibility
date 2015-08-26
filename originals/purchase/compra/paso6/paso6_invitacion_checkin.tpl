{*CON_CHECKIN}
<h4 style="font-size:11pt;">{_PALABRA_CHECKIN}</h4>
<table id="qa_tabla_invitacion_checkin" class=table cellspacing='0' cellpadding='0' width="100%" height="120px" >  
  <tr> 
    <td style="font-size:9pt; vertical-align:top"> <p>{_INVITACION_CHECKIN}</p> 
      <!--<p style="text-align: center;"><strong><a href="https://ssl.lan.com/cgi-bin/checkin/paso2.cgi?pnr={PNR};apellido={APELLIDO};referer=COMPRA_NORMAL">{_LABEL_HAGA_CHECKIN}</a></strong></p>--> 
      <!--<p>{_LINK_INFO_CHECKIN}</p>--> 
      <p style="text-align: center;"><a style="text-decoration: none; color: #fff; padding: 6px 35px 10px 10px;" class="button-process" href="{URL_CHECKIN}?pnr={PNR};apellido={APELLIDO};referer=COMPRA_NORMAL" target="_blank">{_FRASE_CONTINUAR_AL_CHECK_IN}</a></p></td> 
  </tr> 
 
</table>
{/CON_CHECKIN} {*VUELOS_NO_ABIERTOS}
<h4 style="font-size:11pt;">{_PALABRA_CHECKIN}</h4>
<table id="qa_tabla_invitacion_checkin" class=table cellspacing='0' cellpadding='0' width="100%" height="120px" >  
  <tr> 
    <td style="font-size:9pt; vertical-align:top"> <p>{_INVITACION_CHECKIN_NO_ABIERTO}</p>
	 <!--<p style="text-align: center;"><a href="https://ssl.lan.com/cgi-bin/checkin/paso2.cgi?pnr={PNR};apellido={APELLIDO};referer=COMPRA_NORMAL"><img src="/images/procesos/checkin/bot01_ciw.gif" alt="Continuar al Check-in" width="162" height="32"></a></p></td>--> 
     <p>{_LINK_INFO_CHECKIN}</p></td>
  </tr> 
</table>
{/VUELOS_NO_ABIERTOS} {*RESERVA}
<h4 style="font-size:11pt;">{_PALABRA_CHECKIN}</h4>
<table id="qa_tabla_invitacion_checkin" class=table cellspacing='0' cellpadding='0' width="100%" height="120px" >  
  <tr> 
    <td style="font-size:9pt; vertical-align:top"> <p>{_INVITACION_CHECKIN_RESERVA}</p> 
       
      <!--<p>{_LINK_INFO_CHECKIN}</p>--> </td> 
  </tr> 
</table>
{/RESERVA} {*SIN_E_TICKET}
<h4 style="font-size:11pt;">{_PALABRA_CHECKIN}</h4>
<table id="qa_tabla_invitacion_checkin" class=table cellspacing='0' cellpadding='0' width="100%" height="120px" >  
  <tr> 
    <td style="font-size:9pt;  vertical-align:top"> <p>{_INVITACION_CHECKIN_SIN_E_TICKET}</p> 
      <p>{_LINK_INFO_CHECKIN}</p></td> 
  </tr> 
</table>
{/SIN_E_TICKET} 
<br>