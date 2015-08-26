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

  <b>Isla de Pascua</b>
  <ul>
  <li>Tarifa v&aacute;lida exclusivamente para vuelos que aparecen en el calendario. </li>
  <li> Promoci&oacute;n v&aacute;lida para volar entre el 1 de enero y el 22 de marzo de 2006. </li>
  <li>Tarifa entre el 1 de enero y 22 de febrero de 2006: $ 299.000. </li>
  <li>Tarifa entre el 23 de febrero y 22 de marzo de 2006: $ 249.000. </li>
  <li>Tarifas sujetas a cambios sin previo aviso. </li>
  <li>Estad&iacute;a m&aacute;xima: 2 meses. </li>
  <li>Devoluciones: no permitidas. </li>
  <li>Cambios: no permitidos. </li>
  <li>Paradas: no permitidas. </li>
  <li>Tarifa no acumula kil&oacute;metros LANPASS. </li>
  <li>Tarifa v&aacute;lida exclusivamente para venta en Chile. </li>
  <li>Oferta no disponible en conjunto con otro descuento, cup&oacute;n u oferta de LAN u otra l&iacute;nea a&eacute;rea. </li>
  <li>Los pasajes adquiridos a esta tarifa DEBEN ser volados en el orden del itinerario seleccionado. </li>
  <li>Los tramos de ida y regreso DEBEN ser volados. No se permite el uso parcial de los boletos. En caso de que no se utilice un cup&oacute;n de vuelo, la continuaci&oacute;n de su itinerario se cancelar&aacute; en forma autom&aacute;tica. </li>
  </ul>
</div>
