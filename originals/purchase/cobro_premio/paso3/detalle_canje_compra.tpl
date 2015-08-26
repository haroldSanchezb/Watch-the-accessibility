<!--
TITLE: Detalle de canje y compra de kms.
TIPO_PAGINA: POPUP
AUTH: NONE
KEYWORDS:
-->
<html>
<head>
<title>
{_DETALLE_CANJE_COMPRA_KMS}
</title>
<link href="/css/base.css" rel="stylesheet" type="text/css">
<script src="/js/prototype.js" type="text/javascript"></script>

<script type="text/javascript">
Event.observe(window, 'load', function() {
  window.resizeTo(400,  $('barra-continuar').clientHeight + $('barra-continuar').offsetTop + 400); 
  $('barra-continuar').style.paddingRight = 310;
});

</script>
</head>
<body>
<!--<body onLoad="window.resizeTo(400,  $('barra-continuar').clientHeight + $('barra-continuar').offsetTop + 200); $('barra-continuar').style.paddingRight = 410;">-->
<div id="barra-continuar" style="margin-top: 0px; position:absolute;">
{*CONTENIDO}
<h1>{_FRASE_DETALLE_CANJE_COMPRA}</h1>
<table width="300" border="0" cellspacing="0" cellpadding="0" class="table" id="main_table">
<tr>
<th colspan="2" class="celda_pop"><b>{_FRASE_RESUMEN_KMS}</b></th>
</tr>
<tr>
<td class="celda_pop">{_FRASE_KMS_CANJE}</td>
<td class="celda_pop"><b>{MONTO_KMS}</b></td>
</tr>
{*RESUMEN_CANJE_Q}
<tr>
<td class="celda_pop">{_FRASE_KMS_Q}</td>
<td class="celda_pop"><b>{MONTO_KMS_Q}</b></td>
</tr>
{/RESUMEN_CANJE_Q}
</table>
<table width="300" border="0" cellspacing="0" cellpadding="0" id="main_table">
<tr>
<td class="celda_pop_total"><b>{_LABEL_TOTAL}</b></td>
<td class="celda_pop_total_der"><b>{TOTAL_KMS}</b></td>
</tr>
</table>
<br />
<table width="300" border="0" cellspacing="0" cellpadding="0" class="table" id="main_table">
<tr>
<th colspan="2" class="celda_pop"><b>{_FRASE_RESUMEN_PAGO}</b></th>
</tr>
{*RESUMEN_PAGO_KMS}
<tr>
<td class="celda_pop">{_FRASE_COMPRA_KMS_CANJE}</td>
<td class="celda_pop"><b>{CURRENCY_SYMBOL} {MONTO_KMS}</b></td>
</tr>
{/RESUMEN_PAGO_KMS}
{*RESUMEN_PAGO_Q}
<tr>
<td class="celda_pop">{_FRASE_COMPRA_KMS_Q}</td>
<td class="celda_pop"><b>{CURRENCY_SYMBOL} {MONTO_Q}</b></td>
</tr>
{/RESUMEN_PAGO_Q}
<tr>
<td class="celda_pop">{_LABEL_IMPUESTO}</td>
<td class="celda_pop"><b>{CURRENCY_SYMBOL} {IMPUESTOS}</b></td>
</tr>
</table>
<table width="300" border="0" cellspacing="0" cellpadding="0" id="main_table">
                <tr>
                  <td class="celda_pop_total"><b>{_LABEL_TOTAL}</b></td>
                  <td class="celda_pop_total_der"><b>{CURRENCY_SYMBOL} {TOTAL}</b></td>
                </tr>
                <tr>
                <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td colspan="2" style="text-align:right;"><input name="Submit" type="submit" class="button-page" onClick="javascript:window.close();" value="{_LABEL_CERRAR_VENTANA}"></td>
                  </tr>
                  </table>     
</tr>
</table>
<br />
<br />



</div>

</div>
{/CONTENIDO}
{*ERROR}
{/ERROR}
</body>
</html>
