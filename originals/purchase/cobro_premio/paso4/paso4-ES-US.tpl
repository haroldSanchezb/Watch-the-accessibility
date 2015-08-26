{HELP_TSA}
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
	var elem, errores, patron1, patron2, patron3, res1, res2, res3, codigo;
	errores = '';
	elem = eval("f.elements['codigo_recomendacion_2']");

	if(elem)
		{
		codigo  =  elem.value;
		patron1 = new RegExp("^[0-9]{4}[A-Z a-z]{2}$"); //4 numeros y 2 letras
		patron2 = new RegExp("^[0-9 A-Z a-z]{14}$");
		patron3 = new RegExp("^LP[A-Z]+MOD[0]{1,2}1$");
		res1 = codigo.match(patron1);
		res2 = codigo.match(patron2);	
		res3 = codigo.match(patron3);
		}

	if (elem && !elem.disabled && (!res1 && !res2 && !res3|| elem.value == ''))
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
			errores += "{_ERROR_INDICAR_CODIGO_CIUDAD_JS}\n";
			change_bg_for_id("id_telefono_" + tipo + '_l3', 'dato-erroneo');
			}
		elem = eval("f.elements['telefono_" + tipo + "_codigo_pais']");
		if (elem && elem.value.length < 1)
			{
			errores += "{_ERROR_INDICAR_CODIGO_PAIS_JS}\n";
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
		
		elem = eval("f.elements['pax_" + tipo_pax + "_" + i + "_tsa_fecha_nacimiento_dia']");
		if (elem && elem.value=='')
			{
			errores += "{_ERROR_FECHA_NACIMIENTO_DIA_FALTANTE_JS} " + tipo_pax_txt + " " + i + "\n";
			change_bg_for_id("id_pax_" + tipo_pax + "_" + i + "_tsa_fecha_nacimiento_dia", 'dato-erroneo');
			}

		elem = eval("f.elements['pax_" + tipo_pax + "_" + i + "_tsa_fecha_nacimiento_mesano']");
		if (elem && elem.value=='')
			{
			errores += "{_ERROR_FECHA_NACIMIENTO_MESANYO_FALTANTE_JS} " + tipo_pax_txt + " " + i + "\n";
			change_bg_for_id("id_pax_" + tipo_pax + "_" + i + "_tsa_fecha_nacimiento_mesano", 'dato-erroneo');
			}

		elem = eval("f.elements['pax_" + tipo_pax + "_" + i + "_tsa_genero']");
		if (elem && elem.value=='')
			{
			errores += "{_ERROR_GENERO_JS} " + tipo_pax_txt + " " + i + "\n";
			change_bg_for_id("id_pax_" + tipo_pax + "_" + i + "_tsa_genero", 'dato-erroneo');
			}
		elem = eval("f.elements['pax_" + tipo_pax + "_" + i + "_tsa_numero_desagravio']");
		var patron = new RegExp("^[0-9]+$");
		if (elem && elem.value!='' && !elem.value.match(patron))
			{
			errores += "{_ERROR_NUMERO_DESAGRAVIO_FORMATO_INCORRECTO_JS} " + tipo_pax_txt + " " + i + "\n";
			change_bg_for_id("id_pax_" + tipo_pax + "_" + i + "_tsa_numero_desagravio", 'dato-erroneo');
			}

		}

	return(errores);
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

	errores += check_algun_telefono(f, 'oficina');
	
	removeCharactersInPhones(f);	
	
	elem = eval("f.elements['email']");
	if (elem)
		{
		var email = elem.value;
		email = email.replace(/(\s|\&nbsp;)/g,""); //hago trim
		
		if (email.length < 1)
			{
			//#OD26_66 Mejora campo mail en doble pantalla, no considera un error que no venga el mail para el caso de reservas hechas por oficinas de emision
			if (f.elements['mail_oficina_emision'].value == '' || !document.getElementById('id_RESERVA').checked)
				{
				//si no es una oficina de emision o no era el proceso de reserva, entonces es un error que no tenga mail
				errores += "{_ERROR_SIN_MAIL_JS}\n";
				change_bg_for_id("id_email_l0", 'dato-erroneo');
				change_bg_for_id("id_email_l1", 'dato-erroneo');		
				}
			}
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
	f.action='paso5.cgi?session_id={SESSION_ID}{IS_RESERVA}';
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

function cargar_pax_notificables(f, indice)
	{
	var selected_index = f.self_notify_paxs.selectedIndex;
	var campo_aux = "pax_ADT_" + indice + "_nombre";
	var obj_nombre = eval("f.elements[campo_aux]");
	campo_aux = "pax_ADT_" + indice + "_primer_apellido";
	var obj_apellido= eval("f.elements[campo_aux]");
	//campo_aux = "pax_ADT_" + indice + "_foid_numero";
	//var obj_foid = eval("f.elements[campo_aux]");
	nuevo = false;

	if (obj_nombre.value && obj_apellido.value) // && obj_foid.value)
		{
		var existe = false;
		for (var i = f.self_notify_paxs.options.length - 1; i>=0; i--)
			{
			if (f.self_notify_paxs.options[i].value == indice)
				{
				f.self_notify_paxs.options[i].text = obj_nombre.value + ' ' + obj_apellido.value;
				existe = true;
				break;
				}
			}
			
		if (!existe)	
			{
			f.self_notify_paxs.options[f.self_notify_paxs.length] = new Option(obj_nombre.value + ' ' + obj_apellido.value, indice);
			nuevo = true;
			}
		}
	else
		{
		for (var i = f.self_notify_paxs.options.length - 1; i>=0; i--)
			{
			if (f.self_notify_paxs.options[i].value == indice)
				{
				f.self_notify_paxs.options[i] = null;
				break;
				}
			}

		for (var i = f.self_notify_paxs.options.length - 1; i>=0; i--)
			{
			if (f.self_notify_paxs.options[i].value)
				{
				setSelectValue(f.self_notify_paxs, f.self_notify_paxs.options[i].value);
				var select_adt = eval("f.elements['pax_ADT_"+f.self_notify_paxs.options[i].value+"']");
				if (select_adt && select_adt.selectedIndex > 0)
					{
					//completa(f, f.self_notify_paxs.options[i].value, 'ADT');
					}
				break;
				}
			}
			
		return;
		}

	// Solo si es el primero lo marco en pax self_notify
	if (indice == 1)
		{
		for (var i = f.self_notify_paxs.options.length - 1; i>=0; i--)
			{
			if (f.self_notify_paxs.options[i].value == indice)
				{
				setSelectValue(f.self_notify_paxs, indice);
				return;
				}
			}
		}
	}

function limpiar_foid(f, tipo_pax, numero_pax)
	{
	var id_aux = "pax_" + tipo_pax + "_" + numero_pax + "_foid_numero";
	f.elements[id_aux].value = (f.elements[id_aux].value).replace(/\W|_/g,'');
	}

</script>

<form action='paso5.cgi?session_id={SESSION_ID}{IS_RESERVA}' method='POST' name='paso4'>
  <input type='hidden' name='rand_check' value='{RAND_CHECK}'>
  <input type='hidden' name='session_id' value='{SESSION_ID}'>
	<input type='hidden' name='chk_paquetes' value='{CHK_PAQUETES}'>
	<input type='hidden' name='foid_por_defecto' value=''>
	<input type='hidden' name='foid_por_defecto_tipo' value=''>
	<input type='hidden' name='foid_por_defecto_numero' value=''>

	{ITINERARIO}
	
	{RESUMEN_TARIFA}
	{COMPRA_KMS}
	{TOTAL_TARIFA}
	
	<p>{_MSG_SOLO_PERSONAS_COMO_PAX}</p>
	<h4>{_TITULO_DATOS_PASAJEROS} {BOTON_PRECARGAR}</h4>

	{JS_DATOS_PAX}

	{LISTA_PAX}

	{*MSG_MENORES}
		<p>{_MSG_MENORES_NO_ACOMP} </p>
	{/MSG_MENORES}
    <p>
	  <script type='text/javascript'>
if (document.paso4.foid_por_defecto != '')
	{
	//actualiza_foids(document.paso4, document.paso4.foid_por_defecto.value);
	}
      </script>
	
	{FLEX_FIELDS}
	<br />
	{_MSG_RESERVA_PAX_CREADA_CPLP}
	<br />
	{INFORMACION_CONTACTO}
	{ACTUALIZAR_DATOS}
	{RESERVA}
	<br>
	{SCRIPT_SELECT_PAX}

	<input type="hidden" id="mail_oficina_emision" name="mail_oficina_emision" value='{EMAIL_OFICINA}'>

	<table cellspacing="0" cellpadding="0" id=barra-continuar>
		<tr>
			
			<td><input type='button' class="button-process" id='submitButton' value='{_LABEL_CONTINUAR}' onclick='check_and_submit(this.form)' name="continuar"></td>
		</tr>
	</table>
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

function cargar_all_paxs_notificables()
	{
	var indice = 1;
	var campo_aux = "pax_ADT_" + indice + "_nombre";
	var obj = eval("document.paso4.elements[campo_aux]");

	while (obj)
		{
		cargar_pax_notificables(document.paso4, indice);
		indice++;
		campo_aux = "pax_ADT_" + indice + "_nombre";
		obj = eval("document.paso4.elements[campo_aux]");
		}
	}

window.onLoad = cargar_all_paxs_notificables();


</script>
