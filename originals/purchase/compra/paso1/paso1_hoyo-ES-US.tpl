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
	<tr><td>Liquidaci&oacute;n de fin de a&ntilde;o</td></tr>
	<tr><td><img src="/images/promociones/data/todo_el_mundo/mejor_tarifa555.gif" width="555" height="150" alt="LAN.com"></td>
	</tr>
	<tr>
		<td>Aproveche esta <b>s&uacute;per 
        liquidaci&oacute;n de fin de a&ntilde;o</b> en LAN.com y viaje 
        <b>con excelentes descuentos.</b> Para vuelos 
        exclusivos en las fechas y horarios disponibles, y disfrute de unas vacaciones 
        regaladas.</td>
	</tr>
	<tr><td>&nbsp;</td></tr>
	<tr><td>Compre su pasaje aqu&iacute; </td></tr>
	<tr><td>{OFERTAS_ESPECIALES}</td></tr>
</table>

<table width="100%" cellspacing="1" cellpadding="0">
	<tr> 
		<td colspan="2">&nbsp;</td>
	</tr>
	<tr><td>T&eacute;rminos y Condiciones:</td></tr>
	<tr>
		<td>
			&#8226; Cupos limitados.<br>
			&#8226; Tarifas sujetas a cambio sin previo aviso.<br>
			&#8226; Tarifas no permiten ni cambios ni devoluciones.<br>
			&#8226; Para comprar exclusivamente en las fechas, horarios y vuelos disponibles en el calendario.<br>
			&#8226; Ni&ntilde;os pagan 100% de la tarifa de adulto.<br>
			&#8226; Infantes pagan 100% de la tarifa de adulto. <br>
			&#8226; Para compras realizadas en LAN.com no aplica derecho a retracto.<br>
			&#8226; Oferta no disponible en conjunto con otro descuento, cup&oacute;n u oferta de LAN u otra l&iacute;nea a&eacute;rea.<br>
			&#8226; Los pasajes adquiridos a esta tarifa DEBEN ser volados en el orden del itinerario seleccionado.<br>
			&#8226; Los tramos de ida y regreso DEBEN ser volados. No se permite el uso parcial de los boletos.<br>
			&#8226; Tarifas acumulan Kil&oacute;metros LANPASS seg&uacute;n kilometraje volado.<br>
			&#8226; Bono compra Internet: no<br>
			&#8226; Paradas: no permitidas. <br>
		</td>
	</tr>
</table>

</div>
