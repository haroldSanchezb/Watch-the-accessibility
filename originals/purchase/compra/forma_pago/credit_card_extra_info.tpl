<script src="/js/ajax_base.js" type="text/javascript"></script>
<script type="text/javascript" src="/js/prototype.js"></script>
<script type="text/javascript" src="/js/scriptaculous/scriptaculous.js"></script>

<script type="text/javascript">

var form_forma_pago;
var info_hash = new Array();

function get_paises_segun_tipo_tarjeta (f, tipo_tarjeta)
	{
	f.tarjeta_pais.options.length = 0;
	f.tarjeta_pais.options[0] = new Option("{_LABEL_SELECCIONE}","");
	document.getElementById('pais_wait').style.visibility = 'visible';
	form_forma_pago = f;
	var url = '/cgi-bin/credit_card/get_info_credit_card.cgi?method=get_paises_segun_tipo_tarjeta&session_id={SESSION_ID}&tipo_tarjeta=' + tipo_tarjeta;
	loadXMLDoc (url);
	}

function get_paises_segun_tipo_tarjeta_ok (response, error_code)
	{
	if (error_code != '0')
		{
		alert (response);
		}
	else
		{
		form_forma_pago.tarjeta_pais.options.length = 1;
		var selectedindex = 0;
		if (form_forma_pago.tipo_tarjeta.selectedIndex == 0)
			{
			document.getElementById('pais_wait').style.visibility = 'hidden';
			return;
			}
		var listado_paises = response.split ('|');
		for (i = 0; i < (listado_paises.length-1); i++)
			{
			var datos_pais = listado_paises[i].split('~');
			form_forma_pago.tarjeta_pais.options[i+1] = new Option(datos_pais[1],datos_pais[0]);
			if (datos_pais[0] == '{PAIS}') selectedindex = i + 1;
			}
		if (i == 1) selectedindex = 1;
		form_forma_pago.tarjeta_pais.selectedIndex = selectedindex;
		if (form_forma_pago.tarjeta_pais.selectedIndex != 0)
			{
			get_monedas_segun_tipo_tarjeta_y_pais (form_forma_pago, form_forma_pago.tipo_tarjeta.value, form_forma_pago.tarjeta_pais.value);
			}
		}
	document.getElementById('pais_wait').style.visibility = 'hidden';
	}

function get_monedas_segun_tipo_tarjeta_y_pais (f, tipo_tarjeta, pais_tarjeta)
	{
	f.tarjeta_moneda.options.length = 0;
	f.tarjeta_moneda.options[0] = new Option("{_LABEL_SELECCIONE}","");
	document.getElementById('moneda_wait').style.visibility = 'visible';
	form_forma_pago = f;
	var url = '/cgi-bin/credit_card/get_info_credit_card.cgi?method=get_monedas_segun_tipo_tarjeta_y_pais&session_id={SESSION_ID}&tipo_tarjeta=' + tipo_tarjeta + '&pais_tarjeta=' + pais_tarjeta;
	loadXMLDoc (url);
	}

function get_monedas_segun_tipo_tarjeta_y_pais_ok (response, error_code)
	{
	if (error_code != '0')
		{
		alert (response);
		}
	else
		{
		form_forma_pago.tarjeta_moneda.options.length = 1;
		var selectedindex = 0;
		if (form_forma_pago.tarjeta_pais.selectedIndex == 0)
			{
			document.getElementById('moneda_wait').style.visibility = 'hidden';
			return;
			}
		var listado_monedas = response.split ('|');
		info_hash = new Array();
		for (i = 0; i < (listado_monedas.length-1); i++)
			{
			var datos_moneda = listado_monedas[i].split('~');
			form_forma_pago.tarjeta_moneda.options[i+1] = new Option(datos_moneda[1],datos_moneda[0]);
			if (datos_moneda[0] == '{CURRENCY}') selectedindex = i + 1;
			info_hash[datos_moneda[0]] = datos_moneda[2];
			}
		if (i == 1) selectedindex = 1;
		form_forma_pago.tarjeta_moneda.selectedIndex = selectedindex;
		if (form_forma_pago.tarjeta_moneda.selectedIndex != 0)
			{
			select_moneda (form_forma_pago, form_forma_pago.tarjeta_moneda.value);
			}
		document.getElementById('moneda_wait').style.visibility = 'hidden';
		}
	}

function select_moneda (f, moneda)
	{
	f.autorizador.value = info_hash[moneda];
	}

function select_cc (f)
	{
	for (i = 0; i < f.forma_pago.length; i++)
		{
		if (f.forma_pago[i].value == 'CREDIT_CARD')
			{
			f.forma_pago[i].checked = true;
			}
		}
	}

</script>


<!-- modificado por jcaracci, para que muestre las opciones extra solo cuando se selecciona esa forma de pago-->
<div id="extra_datos_CREDIT_CARD" style="position:relative; display:none; background-color:#fff; border:0px;">
<br><hr><br>
<!-- fin de la modificacion -->

<!--<strong>Ingrese la informaci&oacute;n de la tarjeta:</strong>
<BR>
<BR>
-->

<table>
  <tr>
	<td>
	</td>
    <td>
      {_LABEL_MARCA_CC}
    </td>
    <td>
      <select id="tipo_tarjeta" name="tipo_tarjeta" onChange="get_paises_segun_tipo_tarjeta (this.form, this.value)" onClick="select_cc(this.form);">
			<option value=""> {_LABEL_SELECCIONE_JS} </option>
			{*BLOQUE_TIPO_TARJETA}
			<option value="{CODIGO_TARJETA}"> {NOMBRE_TARJETA} </option>
			{/BLOQUE_TIPO_TARJETA}
      </select>
    </td>
  </tr>
  <tr>
    <td>
    </td>
    <td>
      {_PAGO_SELECCIONE_PAIS}
    </td>
    <td>
      <table cellpadding="0" cellspacing="0">
			<tr>
			<td style="vertical-align: middle">
			<select id="tarjeta_pais" name="tarjeta_pais" onChange="get_monedas_segun_tipo_tarjeta_y_pais(this.form, document.getElementById('tipo_tarjeta').value, this.value)">
			<option value=''>{_LABEL_SELECCIONE}</option>
      </select>
			</td>
			<td style="vertical-align: middle">
			<div style="visibility: hidden" id="pais_wait">&nbsp;&nbsp; {_LABEL_LOADING}<div>
			</td>
			</tr>
			</table>
    </td>
  </tr>
  <tr>
    <td>
    </td>
    <td>
      {_PAGO_SELECCIONE_MONEDA}&nbsp;
    </td>
    <td>
      <table cellpadding="0" cellspacing="0">
			<tr>
			<td style="vertical-align: middle">
      <select id="tarjeta_moneda" name="tarjeta_moneda" onChange="select_moneda(this.form, this.value)">
			<option value=''>{_LABEL_SELECCIONE}</option>
      </select>
			</td>
			<td style="vertical-align: middle">
			<div style="visibility: hidden" id="moneda_wait">&nbsp;&nbsp; {_LABEL_LOADING}<div>
			</td>
			</tr>
			</table>
    </td>
  </tr>
</table>
<hr>
</div>

<input type="hidden" name="autorizador" id="autorizador">
<script type="text/javascript">
get_paises_segun_tipo_tarjeta (document.getElementById('tipo_tarjeta').form, document.getElementById('tipo_tarjeta').value);
</script>
