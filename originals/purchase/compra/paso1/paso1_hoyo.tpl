<script type='text/javascript'>
function check_and_submit(f)
{
var errores, elem, nadults, nchildren, ninfants;
errores = '';
elem = f.elements['nadults'];
nadults = 0;
if (elem)
{
nadults = parseInt(elem.options[elem.selectedIndex].value, 10);
}
elem = f.elements['nchildren'];
nchildren = 0;
if (elem)
{
nchildren = parseInt(elem.options[elem.selectedIndex].value, 10);
}
elem = f.elements['ninfants'];
ninfants = 0;
if (elem)
{
ninfants = parseInt(elem.options[elem.selectedIndex].value, 10);
}
if (nadults < ninfants)
{
errores += '{_ERROR_MAS_INFANTES_QUE_ADULTOS_JS}' + "\n";
}
if (nadults + ninfants + nchildren > 9)
{
errores += '{_ERROR_DEMASIADOS_PASAJEROS_JS}' + "\n";
}
if (!getRadioValue(f.elements['codigo_promo']))
{
errores += '{_ERROR_SELECCIONE_PROMOCION_JS}' + "\n";
}
if (errores.length > 0)
{
if (typeof ClickTaleRegisterFormSubmit == 'function') {
ClickTaleRegisterFormSubmit(f); 
ClickTaleTag("form_submit_fail");
}
alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
return false;
}
if (typeof ClickTaleRegisterFormSubmit == 'function') {
ClickTaleRegisterFormSubmit(f); 
ClickTaleTag("form_submit_success");
}
f.submit();
}
</script>
<a name="top"></a>
<a name="distress"></a>
<div class="encabezado_promocion"> 
  <p><img src="/images/promociones/data/todo_el_mundo/mejor_tarifa555.gif" width="555" height="150" alt="LAN.com"></p>
</div>
<div class="bajada_promocion"> 
  <p> Aproveche y descubra nuestras mejores ofertas. LAN.com le da las mejores 
    tarifas.</p>
  <p><br>
  </p>
</div>
<h6>Compre su pasaje aqu&iacute; </h6>
<p>{OFERTAS_ESPECIALES} </p>
<p>&nbsp;</p>
<div class="terminos_condiciones">
  <h1>T&eacute;rminos y condiciones</h1>

  
      <b>Remate fin de a&ntilde;o </b>  </li>
  </ul>
  <ul>
  <li> Tarifas sujetas a cambios sin previo aviso. </li>
  <li> Tarifa aplica s&oacute;lo para venta internet. </li>
  <li> Estad&iacute;a m&iacute;nima: 5 d&iacute;as </li>
  <li>Estad&iacute;a m&aacute;xima de acuerdo a la disponibilidad de los vuelos.</li>
  <li> Tarifas v&aacute;lidas exclusivamente en vuelos disponibles en calendario de compra.</li>
  <li> Devoluciones: no permitidas. </li>
  <li> Cambios: no permitidos. </li>
  <li> Paradas: no permitidas. </li>
  <li> Impuestos: Incluidos s&oacute;lo origen Per&uacute;. </li>
  <li> IVA: Se incluye IGV s&oacute;lo origen Per&uacute;. </li>
  <li> Tarifa ni&ntilde;os (2 a 12 a&ntilde;os): 100% de tarifa adulto. </li>
  <li> Tarifa infante (0 a 1 a&ntilde;o): 100% de tarifa adulto. </li>
  <li>Kil&oacute;metros LANPASS: s&iacute;. </li>
  <li>Bono compra Internet: no.</li>
  <li>Oferta no disponible en conjunto con otro descuento, cup&oacute;n u oferta de LAN u otra l&iacute;nea a&eacute;rea.</li>
  <li>Los pasajes adquiridos a esta tarifa deben ser volados en el orden del itinerario seleccionado.</li>
  <li>Los tramos de ida y regreso deben ser volados. No se permite el uso parcial de los boletos. </li>
  <li>En caso de que no se utilice un cup&oacute;n de vuelo, la continuaci&oacute;n de su itinerario se cancelar&aacute; en forma autom&aacute;tica. </li>
  </ul>
</div>
