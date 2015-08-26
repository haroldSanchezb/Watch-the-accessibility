<!-- estilos en linea para carga de tabla en correos electronicos + templates asociados -->

<h4 style="background-color: #033D7D; border: 0 none; color: #FFFFFF; font-size: 1.2em; font-weight: bold; margin: 0px; padding: 6px 4px 6px 8px; display: {VISIBILIDAD};">{_LABEL_TARIFA_EN} {NOMBRE_MONEDA}</h4>
{*REGULACIONES}
<div class="link_titulo" style="display: {VISIBILIDAD};">
    <a title="{_TITLE_LINK_CONDICIONES_TARIFAS}" href="javascript:MM_openBrWindow('{LINK}','nombre','width=600,height=520,scrollbars=yes');">{_LABEL_CONDICIONES_TARIFA}</a>
</div>
{/REGULACIONES}
<table id={ID_TABLA_TARIFA} cellpadding='0' cellspacing='0' style="border: 1px solid #CCC; margin: 0 auto; margin-top: 0px; margin-bottom: 15px; width:100%;display: {VISIBILIDAD};">
    <tr style="height: 23px; background: #f3f4f9; font: bold 12px Arial, Helvetica, sans-serif; color: #003e7e; text-align: right; border-bottom: 1px solid #DCE0EE; border-top: 1px solid #DCE0EE;"> 
        <th>&nbsp;</th>
        <th style="padding: 0 8px 0 8px;">{LABEL_KMS}&nbsp;</th>
        <th style="padding: 0 8px 0 8px;">{_LABEL_TARIFA}</th>
        <th style="padding: 0 8px 0 8px;">{_LABEL_TAX}</th>
        {ENCABEZADO_TUUA}
        {ENCABEZADO_SOBRECARGO}
        {ENCABEZADO_IMPUESTO_ZK}
        <th style="width: 20%; padding: 0 8px 0 8px;">{_LABEL_TOTAL} ({CURRENCY}{EXTRA_KMS})</th>
    </tr>
    {LINEAS_TARIFA}
    {LINEAS_DESCUENTO}
    <tr style="height: 27px; background: #F3F4F9; font: normal 12px Arial, Helvetica, sans-serif; color: #5A5A5A; text-align: right; border-bottom: 1px solid #DCE0EE;"> 
        <td style="padding: 0 8px 0 8px; text-align: left;">Total</td>
        <td style="padding: 0 8px 0 8px;">{TOTAL_KMS}</td>
        <td style="padding: 0 8px 0 8px;">{TOTAL_TARIFA}</td>
        <td style="padding: 0 8px 0 8px;">{TOTAL_IMPUESTOS}</td>
        {CAMPO_TOTAL_TUUA}
        {CAMPO_TOTAL_SOBRECARGO}
        {CAMPO_TOTAL_IMPUESTO_ZK}
        <td id="id_monto_total_cotizacion" style="padding: 0 8px 0 8px; font-weight: bold;">{SIMBOLO_MONEDA} {TOTAL}</td>
    </tr>
</table>
<input type='hidden' name='moneda' value='{CURRENCY_COTIZACION}'>
<input type='hidden' id='monto_total_sin_moneda' name='monto' value='{TOTAL_COTIZACION}'>
{EXTRA_LABEL}

