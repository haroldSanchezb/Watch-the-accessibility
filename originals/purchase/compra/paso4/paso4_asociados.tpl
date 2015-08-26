<script src="/js/prototype.js" type="text/javascript"></script>
<script type='text/javascript'>

var n_foid;

if ('{_ENCUESTA_ABANDONO}' == '1')
	{
	setTimeout("encender_flag_encuesta()", 30000);
	}

function check_foid_no_aplica(f, pax_type, num_pax)
	{
	if (document.getElementById('pax_' + pax_type + '_' + num_pax + '_foid_tipo').value == 'NA')
		{
		document.getElementById('pax_' + pax_type + '_' + num_pax + '_foid_numero').value = '';
		document.getElementById('pax_' + pax_type + '_' + num_pax + '_foid_numero').disabled = true;
		
		}
	else
		{
		document.getElementById('pax_' + pax_type + '_' + num_pax + '_foid_numero').disabled = false;
		}
	}

function precarga_datos()
	{
	var w;
	w = window.open('/cgi-bin/asociados/precarga_datos.cgi?nadults={NADULTS};nchildren={NCHILDREN};ninfants={NINFANTS}','precarga_datos','width=600,height=350,scrollbars=no,resizable=yes');
	w.focus();
	}

function check_codigo_recomendacion(f)
	{
	var elem, errores, patron1, patron2, res1, res2, codigo;
	errores = '';
	elem = eval("f.elements['codigo_recomendacion_2']");

	if(elem)
		{
		codigo  =  elem.value;
		patron1 = new RegExp("^[0-9]{4}[A-Z a-z]{2}$"); //4 numeros y 2 letras
		patron2 = new RegExp("^[0-9 A-Z a-z]{14}$");
		res1 = codigo.match(patron1);
		res2 = codigo.match(patron2);	
		}

	if (elem && !elem.disabled && (!res1 && !res2 || elem.value == ''))
		{
		errores += "{_ERROR_CODIGO_RECOMENDACION_JS}\n";
		change_bg_for_id('codigo_recomendacion_2', 'dato-erroneo');		
		}
	return (errores);
	}

function check_certificado_descuento(f)
	{
	var elem, errores;
	errores = '';
	elem = eval("f.elements['id_codigo_certificado']");
	
	if (elem && !elem.disabled && elem.value == '')
		{
		errores += "{_ERROR_CERTIFICADO_DESCUENTO_JS}\n";
		change_bg_for_id('id_codigo_certificado', 'dato-erroneo');		
		}
	return (errores);

	}

function set_phone_input_bg(name, status)
	{
	change_bg_for_id(name + "_l0", status);
	change_bg_for_id(name + "_l1", status);
	change_bg_for_id(name + "_l2", status);
	change_bg_for_id(name + "_l3", status);
	change_bg_for_id(name + "_l4", status);
	change_bg_for_id(name + "_l5", status);
	}

function check_algun_telefono(f)
	{
	var elem, i, errores;

	i = 0;
	errores = '';

	set_phone_input_bg("id_telefono_casa", 'ok');
	set_phone_input_bg("id_telefono_oficina", 'ok');
	set_phone_input_bg("id_telefono_celular", 'ok');
	elem = eval("f.elements['telefono_casa_numero']");
	if (elem && elem.value.length >= 1)
		{
		i = 1;
		}
	elem = eval("f.elements['telefono_celular_numero']");
	if (elem && elem.value.length >= 1)
		{
		i = 1;
		}
	elem = eval("f.elements['telefono_oficina_numero']");
	if (elem && elem.value.length >= 1)
		{
		i = 1;
		}
	if (i == 0)
		{
		set_phone_input_bg("id_telefono_casa", 'dato-erroneo');
		set_phone_input_bg("id_telefono_oficina", 'dato-erroneo');
		set_phone_input_bg("id_telefono_celular", 'dato-erroneo');
		errores += "{_ERROR_SIN_TELEFONO_DE_CONTACTO_JS}\n";
		}
	else
		{
		errores += check_telefono(f, 'casa');
		errores += check_telefono(f, 'celular');
		errores += check_telefono(f, 'oficina');
		}
	return(errores);
	}

function check_telefono(f, tipo)
	{
	var errores, elem;
	errores = '';

	set_phone_input_bg("id_telefono_" + tipo, 'ok');
	elem = eval("f.elements['telefono_" + tipo + "_numero']");
	if (elem && elem.value.length >= 1)
		{
		elem = eval("f.elements['telefono_" + tipo + "_codigo_ciudad']");
		if (elem && elem.value.length < 1)
			{
			errores += "{_ERROR_INDICAR_CODIGO_CIUDAD_JS}\n"
			change_bg_for_id("id_telefono_" + tipo + '_l3', 'dato-erroneo');
			}
		elem = eval("f.elements['telefono_" + tipo + "_codigo_pais']");
		if (elem && elem.value.length < 1)
			{
			errores += "{_ERROR_INDICAR_CODIGO_PAIS_JS}\n"
			change_bg_for_id("id_telefono_" + tipo + '_l1', 'dato-erroneo');
			}
		}
	return(errores);
	}

function check_paxs(f, tipo_pax, tipo_pax_txt, cantidad)
	{
	var errores, i, elem;
	errores = '';

	for (i = 1; i <= cantidad; i++)
		{
		change_bg_for_id("id_pax_" + tipo_pax + "_" + i + "_nombre", 'ok');
		change_bg_for_id("id_pax_" + tipo_pax + "_" + i + "_primer_apellido", 'ok');
		change_bg_for_id("id_pax_" + tipo_pax + "_" + i + "_foid_numero", 'ok');
		elem = eval("f.elements['pax_" + tipo_pax + "_" + i + "_nombre']");
		if (elem && elem.value.length < 1)
			{
			errores += "{_ERROR_PASAJERO_SIN_NOMBRE_JS} " + tipo_pax_txt + " " + i + "\n";
			change_bg_for_id("id_pax_" + tipo_pax + "_" + i + "_nombre", 'dato-erroneo');
			}
		elem = eval("f.elements['pax_" + tipo_pax + "_" + i + "_primer_apellido']");
		if (!elem || elem.value.length < 2)
			{
			errores += "{_ERROR_PASAJERO_SIN_APELLIDO_JS} " + tipo_pax_txt + " " + i + "\n";
			change_bg_for_id("id_pax_" + tipo_pax + "_" + i + "_primer_apellido", 'dato-erroneo');
			}
		elem = eval("f.elements['pax_" + tipo_pax + "_" + i + "_foid_numero']");
		if (f.elements['pax_' + tipo_pax + '_' + i + '_foid_tipo'].value == 'NA')
			{
			}
		else if (elem && elem.value.length < 1)
			{
			errores += "{_ERROR_PASAJERO_SIN_DOCUMENTO_ID_JS} " + tipo_pax_txt + " " + i + "\n";
			change_bg_for_id("id_pax_" + tipo_pax + "_" + i + "_foid_numero", 'dato-erroneo');
			}
		}

	return(errores);
	}

function check_foids(f, foid, nombre, apellido, pax_type, pax_pos, pax_type2, num)
	{
	var i, elem2;
	var errores = '';

	for (i = 1; i <= num; i++)
		{
		elem2 = f.elements['pax_' + pax_type2 + '_' + i + "_foid_numero"];
		if (elem2 && !(pax_pos == i && pax_type == pax_type2) && foid.length > 0 && foid == elem2.value)
			{
			if ((pax_type == 'ADT' && pax_type2 == 'INF') || (pax_type == 'INF' && pax_type2 == 'ADT'))
				{
				}
			else
				{
				errores += "{_ERROR_DOCUMENTOS_ID_IGUALES_JS}\n";
				change_bg_for_id("id_pax_" + pax_type + "_" + pax_pos + "_foid_numero", 'dato-erroneo');
				change_bg_for_id("id_pax_" + pax_type2 + "_" + i + "_foid_numero", 'dato-erroneo');
				}
			}
		elem2_name = f.elements['pax_' + pax_type2 + '_' + i + "_nombre"];
		elem2_apellido = f.elements['pax_' + pax_type2 + '_' + i + "_primer_apellido"];
		if (nombre && apellido && !(pax_pos == i && pax_type == pax_type2) && nombre.length > 0 && apellido.length > 0 && nombre.toUpperCase() == elem2_name.value.toUpperCase() && apellido.toUpperCase() == elem2_apellido.value.toUpperCase())
			{
			errores += "{_ERROR_NOMBRE_APELLIDO_IGUALES_JS}\n";
			change_bg_for_id("id_pax_" + pax_type + "_" + pax_pos + "_nombre", 'dato-erroneo');
			change_bg_for_id("id_pax_" + pax_type + "_" + pax_pos + "_primer_apellido", 'dato-erroneo');
			change_bg_for_id("id_pax_" + pax_type2 + "_" + i + "_nombre", 'dato-erroneo');
			change_bg_for_id("id_pax_" + pax_type2 + "_" + i + "_primer_apellido", 'dato-erroneo');
			}
		}
	return(errores);
	}

function check_foids_names_aux(f, pax_type, x, nadults, nchildren, ninfants)
	{
	var i, elem1;
	var elem1_name, elem1_apellido;
	var errores = '';

	elem1 = f.elements['pax_' + pax_type + "_" + x + "_foid_numero"];
	elem1_name = f.elements['pax_' + pax_type + "_" + x + "_nombre"];
	elem1_apellido = f.elements['pax_' + pax_type + "_" + x + "_primer_apellido"];
	if (!elem1_name || !elem1_apellido)
		{
		return('');
		}
	errores += check_foids(f, elem1.value, elem1_name.value, elem1_apellido.value, pax_type, x, 'ADT', nadults)
	if (errores.length)
		{
		return(errores);
		}
	errores += check_foids(f, elem1.value, elem1_name.value, elem1_apellido.value, pax_type, x, 'CHD', nchildren)
	if (errores.length)
		{
		return(errores);
		}
	errores += check_foids(f, elem1.value, elem1_name.value, elem1_apellido.value, pax_type, x, 'INF', ninfants)
	if (errores.length)
		{
		return(errores);
		}
	return(errores);
	}

function check_foids_names(f, nadults, nchildren, ninfants)
	{
	var x, i, elem1, elem2;
	var errores = '';

	// elem1 = f.elements['pax_' + pax_type + "_" + x + "_foid_numero"];

	for (x = 1; x <= nadults; x++)
		{
		errores += check_foids_names_aux(f, 'ADT', x, nadults, nchildren, ninfants);
		if (errores.length)
			{
			return(errores);
			}
		}
	for (x = 1; x <= nchildren; x++)
		{
		errores += check_foids_names_aux(f, 'CHD', x, nadults, nchildren, ninfants);
		if (errores.length)
			{
			return(errores);
			}
		}
	for (x = 1; x <= ninfants; x++)
		{
		errores += check_foids_names_aux(f, 'INF', x, nadults, nchildren, ninfants);
		if (errores.length)
			{
			return(errores);
			}
		}
	return(errores);
	}

// variables y funciones para foid no aplica

var foid_tipo = '';
var foid_numero = '';

function actualiza_foids(f, foid_por_defecto)
	{
	var tipo_pax = new Array();
	var n_pax = new Array();
	tipo_pax[0] = 'ADT';
	n_pax[0] = '{NADULTS}';
	tipo_pax[1] = 'CHD';
	n_pax[1] = '{NCHILDREN}';
	tipo_pax[2] = 'INF';
	n_pax[2] = '{NINFANTS}';
	for (i=0; i<tipo_pax.length; i++)
		{
		for (j=1; j<=n_pax[i]; j++)
			{
			elem_tipo = eval("f.elements['pax_" + tipo_pax[i] + "_" + j + "_foid_tipo']");
			elem_numero = eval("f.elements['pax_" + tipo_pax[i] + "_" + j + "_foid_numero']");
 			if (elem_tipo.value == f.foid_por_defecto_tipo.value && elem_numero.value == f.foid_por_defecto_numero.value && foid_por_defecto !=  (tipo_pax[i] + "_" + j))
				{
				elem_numero.value = '';
				elem_numero.disabled = true;
				pre_select_by_value(f, "pax_" + tipo_pax[i] + "_" + j + "_foid_tipo", 'NA');
				}
			}
		}	
	}

function get_unique_foid(f)
	{
	var tipo_pax = new Array();
	var n_pax = new Array();
	tipo_pax[0] = 'ADT';
	n_pax[0] = '{NADULTS}';
	tipo_pax[1] = 'CHD';
	n_pax[1] = '{NCHILDREN}';
	tipo_pax[2] = 'INF';
	n_pax[2] = '{NINFANTS}';
	for (i=0; i<tipo_pax.length; i++)
		{
		for (j=1; j<=n_pax[i]; j++)
			{
			elem_tipo = eval("f.elements['pax_" + tipo_pax[i] + "_" + j + "_foid_tipo']");
			elem_numero = eval("f.elements['pax_" + tipo_pax[i] + "_" + j + "_foid_numero']");
			if (elem_tipo.value != "NA" && elem_numero.value)
				{
				foid_tipo = elem_tipo.value;
				foid_numero = elem_numero.value;
				f.foid_por_defecto.value = tipo_pax[i] + "_" + j;
				f.foid_por_defecto_tipo.value = elem_tipo.value;
				f.foid_por_defecto_numero.value = elem_numero.value;
				return;
				}
			}
		}	
	}

function habilita_campos(f, tipo_pax, tipo_pax_txt, cantidad)
	{
	var errores, i, elem;
	errores = '';

	for (i = 1; i <= cantidad; i++)
		{
		elem = eval("f.elements['pax_" + tipo_pax + "_" + i + "_nombre']");
		if (elem && elem.disabled)
			{
			elem.disabled = 0;
			}
		elem = eval("f.elements['pax_" + tipo_pax + "_" + i + "_primer_apellido']");
		if (elem && elem.disabled)
			{
			elem.disabled = 0;
			}
		elem = eval("f.elements['pax_" + tipo_pax + "_" + i + "_foid_numero']");
		if (elem && elem.disabled)
			{
			elem.disabled = 0;
			}
		elem = eval("f.elements['pax_" + tipo_pax + "_" + i + "_titulo']");
		if (elem && elem.disabled)
			{
			elem.disabled = 0;
			}
		elem = eval("f.elements['pax_" + tipo_pax + "_" + i + "_foid_tipo']");
		if (elem && elem.disabled)
			{
			elem.disabled = 0;
			}
		if (elem && elem.value == 'NA' && foid_tipo && foid_numero != '')
			{
			pre_select_by_value(f, "pax_" + tipo_pax + "_" + i + "_foid_tipo", foid_tipo);
//			n_foid++;
//			f.elements["pax_" + tipo_pax + "_" + i + "_foid_numero"].value = foid_numero + n_foid;
			f.elements["pax_" + tipo_pax + "_" + i + "_foid_numero"].value = foid_numero;
			}
		elem = eval("f.elements['pax_" + tipo_pax + "_" + i + "_ff_airline']");
		if (elem && elem.disabled)
			{
			elem.disabled = 0;
			}
		elem = eval("f.elements['pax_" + tipo_pax + "_" + i + "_ff_number']");
		if (elem && elem.disabled)
			{
			elem.disabled = 0;
			}
		}
	return(errores);
	}
	
function check_and_submit(f)
	{
	var errores, i, elem, fecha_segmento_anterior, fecha_segmento_actual;

	errores = '';

	get_unique_foid(f);

	change_bg_for_id("id_email_l0", 'ok');
	change_bg_for_id("id_email_l1", 'ok');
	change_bg_for_id("id_desea_factura", 'ok');
	change_bg_for_id("codigo_recomendacion_2", 'ok');
	change_bg_for_id("id_codigo_certificado", 'ok');

	errores += check_codigo_recomendacion(f);
	errores += check_certificado_descuento(f);
	errores += check_paxs(f, 'ADT', '{_LABEL_PAX_TYPE_TXT_ADT_JS}', ({NADULTS} +0));
	errores += check_paxs(f, 'CHD', '{_LABEL_PAX_TYPE_TXT_CHD_JS}', ({NCHILDREN} +0));
	errores += check_paxs(f, 'INF', '{_LABEL_PAX_TYPE_TXT_INF_JS}', ({NINFANTS} +0));

	errores += check_foids_names(f, ({NADULTS} +0), ({NCHILDREN} +0), ({NINFANTS} +0));

	errores += check_algun_telefono(f, 'oficina');

	elem = eval("f.elements['email']");
	if (elem && elem.value.length < 1)
		{
		errores += "{_ERROR_SIN_MAIL_JS}\n";
		change_bg_for_id("id_email_l0", 'dato-erroneo');
		change_bg_for_id("id_email_l1", 'dato-erroneo');
		}

	elem = eval("f.elements['forma_pago']");
	if (elem && getRadioValue(elem) == null)
		{
		errores += "{_ERROR_SIN_FORMA_PAGO_JS}\n";
		}

	if (f.codigo_certificado)
		{
		if (f.codigo_certificado.value && elem && getRadioValue(elem) == 'RESERVA')
			{
			errores += "{_MSG_ERROR_SIN_CERTIFICADO_DESCUENTO_1_JS}\n{_MSG_ERROR_SIN_CERTIFICADO_DESCUENTO_2_JS}\n";
			}
		if (f.codigo_certificado.value && elem && f.chk_paquetes.value == 1)
			{
			errores += "{_MSG_ERROR_SIN_CERTIFICADO_DESCUENTO_3_JS}\n";
			}
		}

	if (f.desea_factura)
		{
		if (document.getElementById('id_desea_factura').checked && elem && getRadioValue(elem) == 'RESERVA')
			{
			errores += "{_MSG_ERROR_SIN_EMITIR_FACTURAS_JS}\n";
			change_bg_for_id("id_desea_factura", 'dato-erroneo');
			}
		if (document.getElementById('id_desea_factura').checked && elem && f.chk_paquetes.value == 1)
			{
			errores += "{_MSG_ERROR_SIN_EMITIR_FACTURAS_2_JS}\n";
			change_bg_for_id("id_desea_factura", 'dato-erroneo');
			}
		}

	elem = eval("f.elements['forma_entrega']");

	if (elem && getRadioValue(elem) == null)
		{
		errores += "{_ERROR_SIN_FORMA_ENTREGA_JS}\n";
		}
	if (errores.length > 0)
		{
		alert("{_ENCABEZADO_ERROR_JS}\n\n" + errores);
		return false;
		}
	n_foid = 0;
	errores += habilita_campos(f, 'ADT', '{_LABEL_PAX_TYPE_TXT_ADT_JS}', ({NADULTS} +0));
	errores += habilita_campos(f, 'CHD', '{_LABEL_PAX_TYPE_TXT_CHD_JS}', ({NCHILDREN} +0));
	errores += habilita_campos(f, 'INF', '{_LABEL_PAX_TYPE_TXT_INF_JS}', ({NINFANTS} +0));
	f.action='paso5.cgi?session_id={SESSION_ID}';
	apagar_flag_encuesta();
	if ($('codigo_recomendacion_2') && $('codigo_recomendacion'))
	{
		 $('codigo_recomendacion').value = $('codigo_recomendacion_2').value;
	}
	f.submit();
	}

function set_phone_ccode(f, name_prefix, sel)
	{
	var elem_pais   = eval("f.elements['"+ name_prefix +"_codigo_pais']");
	var elem_ciudad = eval("f.elements['"+ name_prefix +"_codigo_ciudad']");
	var elem_num    = eval("f.elements['"+ name_prefix +"_numero']");
	if (elem_ciudad.value.length == 0 && elem_num.value.length == 0)
		{
		elem_pais.value = sel.value;
		}
	}

function set_all_phones_country_codes(sel)
	{
	var f = sel.form;
	set_phone_ccode(f, 'telefono_casa', sel);
	set_phone_ccode(f, 'telefono_celular', sel);
	set_phone_ccode(f, 'telefono_oficina', sel);
	}

</script>

<form action='paso5.cgi?session_id={SESSION_ID}' method='POST' name='paso4'>
  <input type='hidden' name='rand_check' value='{RAND_CHECK}'>
  <input type='hidden' name='session_id' value='{SESSION_ID}'>
	<input type='hidden' name='chk_paquetes' value='{CHK_PAQUETES}'>
	<input type='hidden' name='foid_por_defecto' value=''>
	<input type='hidden' name='foid_por_defecto_tipo' value=''>
	<input type='hidden' name='foid_por_defecto_numero' value=''>
	
	<p>{_MSG_SOLO_PERSONAS_COMO_PAX}</p>
	<h4>{_TITULO_DATOS_PASAJEROS} {BOTON_PRECARGAR}</h4>
	<table class=table cellspacing="0" cellpadding="0" width="100%">
		{JS_DATOS_PAX}
		{LISTA_PAX}
	</table>
	  <p>{_MSG_MENORES_NO_ACOMP} </p>
    <p>
	  <script type='text/javascript'>
if (document.paso4.foid_por_defecto != '')
	{
	actualiza_foids(document.paso4, document.paso4.foid_por_defecto.value);
	}
      </script>
	
	{FLEX_FIELDS}
	<br>
	
	{INFORMACION_CONTACTO}
	{ACTUALIZAR_DATOS}
	{INSCRIPCION_LAN}	  
	{LISTA_FORMAS_PAGO}
	{CERTIFICADO_RECOMENDACION}
	{DOLARES_LAN}
	<h4>{_TITULO_FORMA_ENTREGA_TICKET}</h4>
	<ul class=list>
			{LISTA_FORMAS_ENTREGA}
	</ul>
	<br>
	{SOLICITUD_DE_FACTURA}
	{DATOS_EXTRA_EMPRESAS}
	{SCRIPT_SELECT_PAX}

	<table cellspacing="0" cellpadding="0" id=barra-continuar>
		<tr><!--
			<td class=first>{_PASO4_PASO_SIGUIENTE}</td>
			<td class=last>&nbsp;&nbsp;</td>-->
			<td><input type=button class=boton-destacado id='submitButton' value='{_LABEL_CONTINUAR}' onclick='check_and_submit(this.form)' name="continuar"></td>
		</tr>
	</table>
	
    <!-- -->
</form>

<script type='text/javascript'>

function advierte_errores_validacion_posteriores(f)
        {
	var errores;

	errores = '';

	{INSTRUCCIONES_ERROR}

	if (errores.length > 0)
		{
		alert("{_ENCABEZADO_ERROR_JS} \n\n" + errores);
		return false;
		}
        }

advierte_errores_validacion_posteriores(document.paso4);

{AVISOS_COMERCIALES}

</script>
