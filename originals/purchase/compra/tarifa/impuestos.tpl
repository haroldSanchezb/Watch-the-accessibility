


<html>
	<head>
		<title>
			{_LABEL_DETALLE_IMPUESTO}
		</title>
		<link href="/css/legacy_base.css" rel="stylesheet" type="text/css">
		<script src="/js/prototype.js" type="text/javascript"></script>
	</head>
	<body onLoad="window.resizeTo(350, $('barra-continuar').clientHeight + $('barra-continuar').offsetTop + 100); $('barra-continuar').style.paddingRight = 310 - $('main_table').clientWidth;">
		

        
        <div id=contenido-proceso style="padding: 0 10px 10px 10px;">
        <h1 style="text-align:left; margin-bottom:20px;">{_LABEL_DETALLE_TARIFA}</h1>
		<table border="0" cellpadding="2" cellspacing="0" class="table" id="main_table" style="width:100%">
			<tr>
				<th scope="row" style="font-weight:bold; text-align:left">{_LABEL_DETALLE_TARIFA}  {PAX_TYPE_TXT}</th>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
			</tr>

			{*DETALLE_TARIFA}
			<tr>
				<td scope="row"><div class="left">{_LABEL_TARIFA}</div></td>
				<td>&nbsp;</td>
				<td><div class="right">{TARIFA_BASE}</div></td>
			</tr>
			<tr>
				<td scope="row"><div class="left">{_LABEL_SOBRECARGOS} <span onMouseOut="if (typeof(desactiva_ttip) != 'undefined') desactiva_ttip();" onMouseOver="if (typeof(activa_ttip) != 'undefined') activa_ttip('contenido_sobrecargo', 'tooltip_flight_info');" style="font-weight:bold;text-decoration:underline;color:#0267C3">(Q)</span></div></td>

				<td>&nbsp;</td>
				<td><div class="right">{SOBRECARGOS}</div></td>
			</tr>
			{/DETALLE_TARIFA}
			<div id="following_tooltip" style="visibility: hidden;"></div>
			<tr class="par">
				<td scope="row" style="text-align:left"><strong>{_LABEL_TARIFA} ({_LABEL_TOTAL}) </strong></td>
				<td style="text-align:right"><strong>{CURRENCY}</strong></td>
				<td><div class="right"><strong>{TARIFA}</strong></div></td>
			</tr>
			<tr><td colspan="3" style="height:3px"></td></tr>
			<tr>
				<th style="font-weight:bold; text-align:left">{_LABEL_DETALLE_IMPUESTO}</th>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
			</tr>
			{*IMPUESTO}
			<tr>
				<td scope="row"><div class="left">{NOMBRE} ({TAX_CODE})</div></td>
				<td>&nbsp;</td>
				<td><div class="right">{TAX_AMOUNT}</div></td>
			</tr>
			{/IMPUESTO}
			<tr class="par">
				<td scope="row" style="text-align:left"><strong> {_LABEL_IMPUESTO} </strong></td>
				<td style="text-align:right"><strong>{CURRENCY}</strong></td>
				<td><div class="right"><strong>{TAX_AMOUNT}</strong></div></td>
			</tr>
			{*BLOQUE_IGV}
			<tr>
				<td scope="row"><div class="left">{_LABEL_TAX_IGV_IQT} ({TAX_CODE})</div></td>
				<td>&nbsp;</td>
				<td><div class="right">{TAX_AMOUNT}</div></td>
			</tr>
			{/BLOQUE_IGV}
			<tr><td colspan="3" style="height:3px"></td></tr>
			{*BLOQUE_FEE_HEADER}
			<tr>
				<th scope="row" style="font-weight:bold; text-align:left">{_LABEL_DETALLE_FEE}</th>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
			</tr>
			{/BLOQUE_FEE_HEADER}
			{*FEES}
			<tr>
				<td scope="row"><div class="left">{DETALLE_FEE_LABEL}</div></td>
				<td>&nbsp;</td>
				<td><div class="right">{DETALLE_FEE_MONTO}</div></td>
			</tr>
			{*BLOQUE_FEE_IMPUESTO}
			<tr>
				<td scope="row"><div class="left">{DETALLE_FEE_IMPUESTO_LABEL}({DETALLE_FEE_IMPUESTO_PORCENTAJE}%)</div></td>
				<td>&nbsp;</td>
				<td><div class="right">{DETALLE_FEE_IMPUESTO_MONTO}</div></td>
			</tr>
			{/BLOQUE_FEE_IMPUESTO}
			{/FEES}
			{*BLOQUE_FEE_TOTAL}
			<tr class="par">
				<td scope="row" style="text-align:left"><strong>{_LABEL_FEES}</strong></td>
				<td style="text-align:right"><strong>{CURRENCY}</strong></td>
				<td><div class="right"><strong>{FEE_AMOUNT}</strong></div></td>
			</tr>
			{/BLOQUE_FEE_TOTAL}
			<tr><td colspan="3" style="height:3px"></td></tr>
			<tr class="titulo">
				<td scope="row" style="color:white; text-align:left">{_LABEL_TOTAL} </td>
				<td style="color:white; text-align:right">{CURRENCY}</td>
				<td style="color:white;"><div class="right">{TOTAL}</div></td>
			</tr>
		</table>
        
		<div id='contenido_sobrecargo' style="display:none;">
        <div class="top"></div>
        	<div class="middle" style="text-align:left">
            	{_FRASE_SOBRECARGO_QUE_ES}
            </div>
        <div class="bottom"></div>
		</div>
        
		<div id='contenido_zk' style="display:none;">
        <div class="top"></div>
        	<div class="middle" style="text-align:left">
            	{_MSG_LIGHTBOX_ZK}
            </div>
        <div class="bottom"></div>
		</div>
		</div>
	</body>
</html>

<style type="text/css">


.tooltip_flight_info {
	position: absolute; 
	width: 293px; 
	margin-top: -10px; 
	margin-left: -20px;
	z-index: 5;
	/*border: solid 1px #cccccc;*/
}
.tooltip_flight_info .top {
	background: url(/images/compra/top_flight_info.png) center bottom no-repeat;
	width: 293px;
	height: 12px;
	z-index: 5;
}
* html .tooltip_flight_info .top {
	background: url(/images/compra/top_flight_info.gif) center bottom no-repeat;
	z-index: 5;
}

.tooltip_flight_info .middle {
	background: url(/images/compra/bg_flight_info.png) center repeat-y;
	width: 258px;
	padding: 0 21px 0 14px;
	text-align: center;
	font-size: 0.9em;
	z-index: 5;
}
* html .tooltip_flight_info .middle {
	background: url(/images/compra/bg_flight_info.gif) center top repeat-y;
	z-index: 5;
}

.tooltip_flight_info .bottom {
	background: url(/images/compra/bottom_flight_info.png) center top no-repeat;
	width: 293px;
	height: 16px;
	z-index: 5;
}
* html .tooltip_flight_info .bottom {
	background: url(/images/compra/bottom_flight_info.gif) center top no-repeat;
	z-index: 5;
}
.tooltip_flight_info p {
	margin:0;
	font-size: 1.1em;
	line-height: 1.3em;
	z-index: 5;
}
</style>
