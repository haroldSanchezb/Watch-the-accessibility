<base href='http://www.lan.com/'>
<style type="text/css">
*
	{
	margin: 0;
	padding: 0;
	}
a
   {
	color: #cc0000;
	text-decoration: underline;
	cursor: pointer;
	}
h1
	{
	font-family:Arial, Helvetica, sans-serif;
	color:#033D7D;
	font-size: 18px;
	margin:30px 0 1px 8px;
	}
h4, .titulo
	{
	background-color: #DCE0EE;
	border: 0;
	color: #363636;
	font-size: 12px;
	font-weight: bold;
	height: 15px;
	margin: 0;
	padding: 6px 4px 6px 8px;
	text-align: left;
	}
h5, .sub-titulo
	{
	background-color: #F3F4F9;
	color:#5A5A5A;
	height: 15px;
	padding: 6px 4px 6px 8px;
	}
.table
    {
    border: 1px solid #DCE0EE;
    margin-bottom: 15px;
    }
.table strong
    {
    font-weight: bold;
	 font-size: 12px;
    color: black;/*#003E7E;*/
    }
.table th
    {
    background-color: #F3F4F9;
    border-bottom: 1px solid #DCE0EE;
    border-top: 1px solid #DCE0EE;
	 color: #003E7E;
    font-style: normal;
    font-weight: normal;
    font-size: .8em;
    height: 20px;
    padding: 0 8px 0 8px;
    text-align: left;
    vertical-align: middle;
    }
.table td
    {
    font-size: .8em;
    vertical-align: middle;
    color: #363636;
    padding: 8px 4px 4px 8px;
    }
.table input
	{
	vertical-align: bottom;
	}
.list
	{
	list-style: none;
	margin-bottom: 0 0 15px 0;
	border: 1px solid #DCE0EE;
	}
.list li
	{
   font-size: .8em;
   vertical-align: middle;
	color: #363636;
	padding: 8px 4px 4px 8px;
	}
{+TEMPLATE('compra/carta_confirmacion/estilos_email.tpl')}
</style>
<h1>{_LABEL_CODIGO_RESERVA}: <strong>{PNR}</strong></h1>
<p>{CAMBIO_ITINERARIO}
  {ITINERARIO}
  {APPLICATION_MESSAGES}
  {PASAJEROS}
  {INVITACION_CHECKIN}
  {TICKETS}
  {INFORMACION_TRAVEL_VOUCHER}<br>
  {TARIFA}<br>
  {INFORMACION_PAGO}
  {T_Y_C_PROMOCION_TMUNDO}
  {INFORMACION_ENTREGA}
  {REGULACIONES}
  {FACTURACION}
  {RECOMENDACIONES}
  {+TEMPLATE('parrafo_promocion/compra.tpl')}
  {CALLCENTERS}
  {MENSAJE_ADICIONAL}
  {LINK_ENCUESTA_VBS}
  {LINK_EZPLUS}
  {_IMG_PIXEL_MAIL_OPERACIONALES}</p>

