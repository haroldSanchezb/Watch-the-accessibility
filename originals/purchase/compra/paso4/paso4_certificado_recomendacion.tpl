<p id="mssg_cert_desc"></p>

<table id="qa_cert_descuento" width="100%">
	<col width="50%">
	<col width="5%">
	<col width="45%">
	<tr>
	<td>
		<h4>{_LABEL_CERTIFICADO_DESCUENTO}</h4>
		<table class=table width="100%">
			<tr>
				<td colspan=2 style="font-size:9pt;">{_FRASE_APLIQUE_CERTIFICADO_DESCUENTO}</td>
			</tr>
			<tr>
				<td style="font-size:9pt;" id="id_td_ingresa_certificado"><input id="id_ingresa_certificado" type="radio" name="ingresa_certificado" value='si' onclick="habilitar_certificado()" {EXIJE_CERTIFICADO}>&nbsp;
				{_TITULO_CODIGO_CERTIFICADO} <input id = "id_codigo_certificado" type=text class=input name='codigo_certificado' value='{VALUE_CERTIFICADO}' {DISABLED}>&nbsp;{SELECT_CERTIFICADOS}</td>
			</tr>
			<tr>
				<td style="font-size:9pt;"><input id="id_no_ingresa_certificado" type="radio" name="ingresa_certificado" value='no' onclick="deshabilitar_certificado()" {NO_EXIJE_CERTIFICADO} {DESHABILITA_NO_CERTIFICADO}>&nbsp;&nbsp;{_PALABRA_NO}</td>					
			</tr>
		</table>
	</td>
	<td></td>
	<td>
		{BLOQUE_CODIGO_RECOMENDACION}

		{*BLOQUE_FORMULARIO_CODIGO_RECOMENDACION}
		<!-- OD82_3 Se mantuvo el html y js que existian antes de la mejora para poder restablecer el despliegue anterior facilmente -->
			<h4 style="font-size:1.2em;">{_LABEL_CODIGO_RECOMENDACION}</h4>
			<table class=table width="100%">
				<tr>
					<td colspan=2 style="font-size:9pt;">{_FRASE_APLIQUE_CODIGO_RECOMENDACION}</td>
				</tr>
				<tr>
					<td style="font-size:9pt;"><input id="id_ingresa_codigo" type="radio" name="ingresa_codigo" value='' onclick="habilitar_codigo()" {CHECKED_RECOMENDACION}>&nbsp;
					{_TITULO_CODIGO_RECOMENDACION} <input type=text class=input id='codigo_recomendacion_2'  name='codigo_recomendacion_2' value='{CODIGO_RECOMENDACION}' {DISABLED_FIELD_RECOMENDACION}>&nbsp;</td>
				</tr>
				<tr>
					<td style="font-size:9pt;">
					<input id="id_no_ingresa_codigo" type="radio" name="ingresa_codigo" value='no' onclick="deshabilitar_codigo()" {CHECKED_NO_RECOMENDACION}>&nbsp;&nbsp;{_PALABRA_NO}
					</td>					
				</tr>					 
			</table>
	
			<input type='hidden' name='tipo_recomendacion' id='tipo_recomendacion' value='directa'>
			<input type='hidden' name='codigo_recomendacion' id='codigo_recomendacion' value=''>
		{/BLOQUE_FORMULARIO_CODIGO_RECOMENDACION}
	
	
	</td>
	</tr>
</table>


<script id="oficinas" type="text/javascript" src="/js/oficinas.js"></script>

<script type="text/javascript">
var ingresa_codigo_recomendacion = 1;
{*BLOQUE_JS_FORMULARIO_CODIGO_RECOMENDACION}
// OD82_3 Se mantuvo el html y js que existian antes de la mejora para poder restablecer el despliegue anterior facilmente

var codigo_recomendacion = '{+COOKIE(param=codigo_recomendacion)}';
if (codigo_recomendacion == '')
	{
	if (document.getElementById('codigo_recomendacion_2').value != '')
	{
	// Se retorno debido a que existe un codigo de recomendacion nuevo
	ingresa_codigo_recomendacion = 0;
	}
	}
if(codigo_recomendacion != '' && ingresa_codigo_recomendacion == 1)
	{
	document.getElementById('codigo_recomendacion_2').value = codigo_recomendacion;
	document.getElementById('codigo_recomendacion_2').disabled = true;
	document.getElementById('id_ingresa_codigo').checked = true;	
	document.getElementById('id_ingresa_codigo').disabled = false;
	document.getElementById('id_no_ingresa_codigo').disabled = true;
	}
else if (ingresa_codigo_recomendacion == 1)
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
if(document.getElementById('id_no_ingresa_certificado').checked)
	{
	document.getElementById("id_codigo_certificado").disabled = true;
	}
else
	{
	document.getElementById("id_codigo_certificado").disabled = false;
	}


function habilitar_certificado()
    {
    document.getElementById('id_codigo_certificado').disabled = false;
    }
function deshabilitar_certificado()
	{
	document.getElementById('id_codigo_certificado').value = "";	
	document.getElementById('id_codigo_certificado').disabled = true;		
	}

function mensaje_validacion(){
	var src = "{PORTAL_COUNTRY}";
	var portal = src.split("/");
	var empresa = "{PORTAL_EMPRESAS_PERSONAS}";
	var valor = "";
	if(portal[1] == 'cl' && empresa =="personas"){
		valor= "{_MSG_CERTIFICADO_DSCTO_JS}";
	}
	document.getElementById('mssg_cert_desc').innerHTML = valor;
	if ('{MSG_VALIDACION_CERTIFICADO}' != ''){	
		change_bg_for_id('id_td_ingresa_certificado','dato-erroneo');
		alert("{MSG_VALIDACION_CERTIFICADO}");
	}

}
window.onload=mensaje_validacion();

</script>
