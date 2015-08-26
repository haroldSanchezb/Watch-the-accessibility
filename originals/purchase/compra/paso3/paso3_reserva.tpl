<script type='text/javascript'>
	function ir_a_paso1(f)
		{
		f.action = 'paso1r.cgi';
		f.submit();
		}

	function MM_openBrWindow(theURL, winName, features)
		{
		features = "menubar=no,resizable=yes,status=no,titlebar=no" + features;
		window.open(theURL,winName,features);
		}

	function reload_con_otra_moneda(f, radio)
		{
		var moneda;

		for(var i=0;i<radio.length;i++)
			{
			if (radio[i].checked)
				{
				moneda = radio[i].value;
				}
			}
		if (moneda != 'CLP' && moneda != 'USD' && moneda != 'EUR' && moneda != 'PEN' && moneda != 'ARS' && moneda != 'BRL')
			{
			alert('{_ERROR_SIN_TIPO_MONEDA}');
			return false;
			}
		document.location = '/cgi-bin/compra/paso2r.cgi?just_refresh=1&session_id={SESSION_ID}&currency_cotizacion=' + moneda;
		}



	function reload_con_otra_tarifa(f, new_fare_id)
		{
		var reg, new_location;

		if (parseInt(new_fare_id, 10) <= 0)
			{
			alert('{_ERROR_SIN_TARIFA}');
			return false;
			}
		document.location = 'paso2r.cgi?just_refresh=1&session_id={SESSION_ID}&new_fare_id=' + new_fare_id;
		}

function actualizar_moneda(monto_moneda)
	{
	if (monto_moneda == '')
		{
		new Effect.BlindUp('tabla_cambio_moneda');
		}
	else
		{
		var monto = monto_moneda.split(',')[0];
		var moneda = monto_moneda.split(',')[1];
		var simbolo = monto_moneda.split(',')[2];
		if (document.getElementById('tabla_cambio_moneda').style.display == 'none')
			{
			new Effect.BlindDown('tabla_cambio_moneda');
			}
		else
			{
			new Effect.Highlight('fila_valor_referencial');
			}
		document.getElementById('span_moneda').innerHTML = moneda;
		document.getElementById('span_total').innerHTML = simbolo + ' ' + monto;
		}
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


	function check_and_submit_login(f)
		{
		/*
		if (f.elements['login'].value == '')
			{
			alert('{_ERROR_SIN_LOGIN}');
			return false;
			}
		f.elements['noauth'].value = '0';
		*/
		return(check_and_submit(f));
		}

	function check_and_submit_anonymous(f)
		{
		f.elements['noauth'].value = '1';
		return(check_and_submit(f));
		}

	function check_and_submit(f)
		{
		var errores, elem;
		errores = '';
		
		change_bg_for_id("codigo_recomendacion_2", 'ok');
		change_bg_for_id("id_codigo_certificado", 'ok');
		
		errores += check_codigo_recomendacion(f);
		errores += check_certificado_descuento(f); 
		 
		elem = eval("f.elements['forma_pago']");
		if (elem && getRadioValue(elem) == null)
			{
			errores += "{ERROR_SIN_FORMA_PAGO}\n";
			}

		elem = eval("f.elements['mbr_nbr']");
		if (elem)
			{
			if (elem.value.length == 0)
				{
				errores += "{ERROR_SIN_MBR_NBR}\n";
				}
			else
				{
				elem = eval("f.elements['mbr_password']");
				if (elem && (elem.value.length == 0))
					{
					errores += "{ERROR_SIN_MBR_PASSWORD}\n";
					}
				}
			}

		elem = eval("f.elements['email']");
			if (elem)
				{
				var email = elem.value;
				email = email.replace(/(\s|\&nbsp;)/g,""); //hago trim
				
				if (email.length < 1)
					{
					errores += "{_ERROR_SIN_MAIL_JS}\n";	
					}
				}


		if (errores.length > 0)
			{
			alert("{_ENCABEZADO_ERROR_JS}\n\n" + errores);
			return false;
			}


		if ($('codigo_recomendacion_2') && $('codigo_recomendacion'))
			{
			$('codigo_recomendacion').value = $('codigo_recomendacion_2').value;
			}

		f.submit();
		}

	function submitenter(myfield,e)
		{
		var keycode;
		if (window.event)
			{
			keycode = window.event.keyCode;
			}
		else if (e)
			{
			keycode = e.which;
			}
		else
			{
			return true;
			}

		if (keycode == 13)
			{
			check_and_submit_login(myfield.form);
			return false;
			}
		else
			{
			return true;
			}
		}
</script>

<script src="/js/prototype.js" type="text/javascript"></script>

<form action='{SSL_URL}paso3r.cgi' method='POST' name='paso3'>
	<input type='hidden' name='rand_check' value='{RAND_CHECK}'>
	<input type='hidden' name='session_id' value='{SESSION_ID}'>
	<input type='hidden' name='noauth' value='0'>

	{ITINERARIO}
	<br>
	{PASAJEROS}
	<br>


	{DATOS_COMPRADOR}


	<table width="100%">
		<col width="65%">
		<col width="5%">
		<col width="30%">
		<tr>
			<td>
				{TARIFA}
			</td>
			<td>
				&nbsp;
			</td>
			<td>
				{CAMBIO_MONEDA}
			</td>
		</tr>
		<tr>
			<td>{DESPLIEGUE_CAMBIO_MONEDA}</td>
		</tr>
	</table>

	<br>
	{MENSAJES_TARIFA}

	{LISTA_FORMAS_PAGO}

{*RUC_PAGADOR}
  <h4>{_TITULO_RUC_PAGADOR}</h4>
  <table class='table' width="100%">
    <tr>
      <td colspan=2>{_FRASE_INGRESE_RUC}</td>
    </tr>
    <tr>
      <td>{_LABEL_RUC_CLIENTE}</td>
      <td>
        <input type='hidden' name='id_fiscal_comprador_tipo' value='RUC_PE'>
        <input type='text' class='input' name='id_fiscal_comprador_numero'>
      </td>
    </tr>
  </table>
{/RUC_PAGADOR}


<table width="100%">
  <col width="50%">
  <col width="5%">
  <col width="45%">
	<tr>
		<td>

<!--
<h4>{_LABEL_CERTIFICADO_DESCUENTO}</h4>
<table class=table width="100%">
	<tr><td colspan=2>{_FRASE_APLIQUE_CERTIFICADO_DESCUENTO}</td></tr>
	<tr>
		<td>{_TITULO_CODIGO_CERTIFICADO}</td>
		<td><input type=text class=input name='codigo_certificado'></td>
	</tr>
</table>

		</td>
	<td></td>
		<td>

<h4>{_LABEL_CODIGO_RECOMENDACION}</h4>
<table class=table width="100%">
	<tr><td colspan=2>{_FRASE_APLIQUE_CODIGO_RECOMENDACION}</td></tr>
	<tr>
		<td>{_TITULO_CODIGO_RECOMENDACION}</td>
		<td><input type=text class=input id='codigo_recomendacion_2' name='codigo_recomendacion_2' value='{+COOKIE(param=codigo_recomendacion)}'>&nbsp;</td>
	</tr>
</table>
<input type='hidden' name='tipo_recomendacion' id='tipo_recomendacion' value='directa'>
<input type='hidden' name='codigo_recomendacion' id='codigo_recomendacion' value=''>
		</td>
	</tr>
-->	

		<h4>{_LABEL_CERTIFICADO_DESCUENTO}</h4>
		<table class=table width="100%">
			<tr>
				<td colspan=2>{_FRASE_APLIQUE_CERTIFICADO_DESCUENTO}</td>
			</tr>
			<tr>
				<td><input id="id_ingresa_certificado" type="radio" name="ingresa_certificado" value='si' onclick="habilitar_certificado()">&nbsp;
				{_TITULO_CODIGO_CERTIFICADO} <input id = "id_codigo_certificado" type=text class=input name='codigo_certificado' disabled="true">&nbsp;{SELECT_CERTIFICADOS}</td>
			</tr>
			<tr>
				<td><input id="id_no_ingresa_certificado" type="radio" name="ingresa_certificado" value='no' onclick="deshabilitar_certificado()" checked>&nbsp;&nbsp;{_PALABRA_NO}</td>					
			</tr>
		</table>
	</td>
	<td></td>
	<td>
	{BLOQUE_CODIGO_RECOMENDACION}

	{*BLOQUE_FORMULARIO_CODIGO_RECOMENDACION}
		<!-- OD82_3 Se mantuvo el html y js que existian antes de la mejora para poder restablecer el despliegue anterior facilmente -->

		<h4>{_LABEL_CODIGO_RECOMENDACION}</h4>
			<table class=table width="100%">
				<tr>
					<td colspan=2>{_FRASE_APLIQUE_CODIGO_RECOMENDACION}</td>
				</tr>
				<tr>
					<td><input id="id_ingresa_codigo" type="radio" name="ingresa_codigo" value='si' onclick="habilitar_codigo()">&nbsp;
					{_TITULO_CODIGO_RECOMENDACION} <input type=text class=input id='codigo_recomendacion_2'  name='codigo_recomendacion_2' value='{+COOKIE(param=codigo_recomendacion)}'>&nbsp;</td>
				</tr>
				<tr>
					<td>
					<input id="id_no_ingresa_codigo" type="radio" name="ingresa_codigo" value='no' onclick="deshabilitar_codigo()" checked>&nbsp;&nbsp;{_PALABRA_NO}
					</td>					
				</tr>					 
		</table>

		<input type='hidden' name='tipo_recomendacion' id='tipo_recomendacion' value='directa'>
		<input type='hidden' name='codigo_recomendacion' id='codigo_recomendacion' value=''>
		</td>
		</tr>
		{/BLOQUE_FORMULARIO_CODIGO_RECOMENDACION}
</table>

	{DATOS_EXTRA_EMPRESAS}

	<h4>{_TITULO_FORMA_ENTREGA_TICKET}</h4>
	<ul class=list>
		{LISTA_FORMAS_ENTREGA}
	</ul>

	{SOLICITUD_DE_FACTURA}
	{AUTENTIF}
</form>

<script type="text/javascript" src="/js/oficinas.js"></script>
<script type="text/javascript">
{*BLOQUE_JS_FORMULARIO_CODIGO_RECOMENDACION}
var codigo_recomendacion = '{+COOKIE(param=codigo_recomendacion)}';

if(codigo_recomendacion != '')
	{
	document.getElementById('codigo_recomendacion_2').disabled = true;
	document.getElementById('id_ingresa_codigo').checked = true;	
	document.getElementById('id_ingresa_codigo').disabled = false;
	document.getElementById('id_no_ingresa_codigo').disabled = true;
	}
else
	{
	document.getElementById('id_no_ingresa_codigo').disabled = false;	
	if(document.getElementById('codigo_recomendacion_2').value != '')
		{
		document.getElementById('id_ingresa_codigo').checked = true;
		}

	if(document.getElementById('id_no_ingresa_codigo').checked)
		{
		document.getElementById('codigo_recomendacion_2').disabled = true;
		}
	else
		{
		document.getElementById('codigo_recomendacion_2').disabled = false;
		}
	}

function habilitar_codigo()
    {
    document.getElementById('codigo_recomendacion_2').disabled = false;
    }
function deshabilitar_codigo()
	{
	document.getElementById('codigo_recomendacion_2').value = "";	
	document.getElementById('codigo_recomendacion_2').disabled = true;		
	}
if(document.getElementById('id_no_ingresa_certificado').checked)
	{
	document.getElementById("id_codigo_certificado").disabled = true;
	}
else
	{
	document.getElementById("id_codigo_certificado").disabled = false;
	}

//Bloqueo de Codigo de Recomendacion para Codigos de Oficinas.
	//By Jose Miguel Castro.
	var codigos;
	var arregloCodigos;
	var codigo_recomendacion = '{+COOKIE(param=codigo_recomendacion)}';
	$H(oficinas).each(function(ofi) {
      codigos = new String(ofi);
      arregloCodigos = codigos.split(",");
      arregloCodigos.each(function(cod)
        {
          if(cod == codigo_recomendacion)
          {
            $('codigo_recomendacion_2').disabled = 'true';
          }
        }
      )
    });

{/BLOQUE_JS_FORMULARIO_CODIGO_RECOMENDACION}
function habilitar_certificado()
    {
    document.getElementById('id_codigo_certificado').disabled = false;
    }
function deshabilitar_certificado()
	{
	document.getElementById('id_codigo_certificado').value = "";	
	document.getElementById('id_codigo_certificado').disabled = true;		
	}

	hide_layer('espera');

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

	advierte_errores_validacion_posteriores(document.paso3);
</script>
<!-- vim:ts=2:sw=2:ai
-->
