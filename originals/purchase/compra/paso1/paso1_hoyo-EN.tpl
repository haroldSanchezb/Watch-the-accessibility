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
<table width="100%">
	<tr><td>End of year sale</td></tr>
	<tr><td><img src="/images/promociones/data/todo_el_mundo/mejor_tarifa555.gif" width="555" height="150" alt="LAN.com"></td>
	</tr>
	<tr><td>&nbsp;</td></tr>
	<tr> 
		<td>Enjoy our exclusive <b>end 
        of year sale</b> at LAN.com and fly with <b>excellent 
        discounts on your tickets</b>. This offer is for exclusive flights 
        and available schedules. Enjoy your vacations with LAN.com.</td>
	</tr>
	<tr><td>&nbsp;</td></tr>
	<tr><td>Buy your ticket here</td></tr>
	<tr><td>{OFERTAS_ESPECIALES}</td></tr>
</table>

<table width="100%" cellspacing="1" cellpadding="0">
	<tr><td>&nbsp;</td></tr>
	<tr><td>Terms and Conditions</td></tr>
	<tr>
		<td>
			&#8226; Limited spaces.<br>
   		&#8226; Fares may change with no previous communication.<br>
			&#8226; Returns and changes are not allowed.<br>
			&#8226; This fares are exclusively for dates, schedules and flights available in the calendar.<br>
			&#8226; Child: 100% adult fare.<br>
			&#8226; Infant: 100% adult fare.<br>
			&#8226; This offer is not available in combination with other discounts, coupons or LAN or other airline&acute;s offers.<br>
			&#8226; Tickets must be flown in strict itinerary order.<br>
			&#8226; Roundtrip segments must be flown. Partial use of tickets is not permitted.<br>
			&#8226; Fares accumulate LANPASS kilometers according to the flown segments.<br>
			&#8226; Internet first purchase bonus: No<br>
			&#8226; Stops are not permitted.<br>
		</td>
	</tr>
</table>
