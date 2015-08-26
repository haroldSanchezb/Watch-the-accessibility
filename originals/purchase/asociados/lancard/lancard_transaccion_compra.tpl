<script type="text/javascript" src="/js/inc.card.js"></script>
<script type="text/javascript">
function isCardOrRut (Num)
	{
	if (Num.length < 16)
    {
		return isRut(Num);
	  }
  else
    {
	  return isCard(Num);
    }
  }

//Funcion que valida si es un numero Lancard.
function DigitCard(sCard)
  {
	var iCurrentPos, iCardLength, iSum = 0, i;
	iCardLength = sCard.length;
	for(iCurrentPos = iCardLength - 1, i=0; iCurrentPos>=0; i++, iCurrentPos--)
    {
		if (i % 2)
      {	 		 
			iSum += parseInt(sCard.charAt(iCurrentPos));
		  }
    else
      {
      iSum += parseInt(parseInt(sCard.charAt(iCurrentPos)) * 2 / 10) + (parseInt(sCard.charAt(iCurrentPos)) * 2 % 10);				 			 
		  }
    }
  return ((10 - iSum % 10) % 10);		 
  }

//Funcion que valida si es un numero Lancard.
function isCard(sCard)
  {
	return sCard.charAt(sCard.length-1)==DigitCard(sCard.substr(0, sCard.length-1)); 
  }

//Funcion ue valida si el parametro es un rut valido.
function isRut(theRut)
  {
	rut = theRut;
	var tmpstr = "";
	largo = rut.length;
	for ( i=0; i < largo; i++)
    {
		if ( rut.charAt(i) != ' ' && rut.charAt(i) != '.' && rut.charAt(i) != '-' )
      {
			tmpstr = tmpstr + rut.charAt(i);
      }
    }
	rut = tmpstr;
	largo = rut.length;
	if (largo < 2)
	  {
		return false;
	  }

	for (i=0; i < largo ; i++ )
	  { 
		if ( rut.charAt(i) !="0" && rut.charAt(i) != "1" && rut.charAt(i) !="2" && rut.charAt(i) != "3" && rut.charAt(i) != "4" && rut.charAt(i) !="5" && rut.charAt(i) != "6" && rut.charAt(i) != "7" && rut.charAt(i) !="8" && rut.charAt(i) != "9" && rut.charAt(i) !="k" && rut.charAt(i) != "K" )
		  {
			return false;
		  }
	  }

	var dtexto = "";
	cnt = 0;
	for ( i=largo-1, j=largo-1+3; i>=0; i--, j-- )
	  {
		if ( cnt == 3 )
		  {
			dtexto = rut.charAt(i) + dtexto;
			dtexto = '.' + dtexto;
			cnt = 1;
		  }
		else
		  { 
			dtexto = rut.charAt(i) + dtexto;
			if( cnt == 0 )
        {
				dtexto = '-' + dtexto;
        }
			cnt++;
		  }
	  }
	return checkDV(rut);
  }

//Funcion ue valida si el digito verificador es valido.
function checkDV(crut)
  {
	largo = crut.length;
	if (largo > 2)
    {
		rut = crut.substring(0, largo - 1);
    }
	else
    {
		rut = crut.charAt(0);
    }
	dv = crut.charAt(largo-1);
	if ( rut == null || dv == null )
    {
		return 0;
    }
	var dvr = '0';
	suma = 0;
	mul  = 2;
	for (i = rut.length - 1 ; i >= 0; i--)
	  {
		suma += rut.charAt(i) * mul;
		if (mul == 7)
      {
			mul = 2;
      }
		else    
      {
			mul++;
      }
	  }
	res = suma % 11;
	if (res == 1)
    {
		dvr = 'k';
    }
	else if (res == 0)
    {
		dvr = '0';
    }
	else
	  {
		dvi = 11-res;
		dvr = dvi + "";
	  }
	if (dvr != dv.toLowerCase())
    {
		return false;
    }
	return true;
  }

function validar_tarjeta(obj)
	{
	if (isCardOrRut (obj.value))
		{
		return true;
		}
	else
		{
		alert('Numero de tarjeta LanCard invalido');
		obj.value = "";
		return false;
		}
	}

function validar_rut_portador(obj)
	{
	if (isCardOrRut (obj.value))
		{
		return true;
		}
	else
		{
		alert('Numero de RUT del portador invalido');
		obj.value = "";
		return false;
		}
	}

function validar_rut_empresa(obj)
	{
	if (isCardOrRut (obj.value))
		{
		return true;
		}
	else
		{
		alert('Numero de RUT de Empresa invalido');
		obj.value = "";
		return false;
		}
	}

function cambia_producto(f)
	{
	var x = new Array(7);
	x[0] = "";
	x[1] = "SCL-MIA-SCL";
	x[2] = "SCL-MIA";
	x[3] = "MADRID Y ALREDEDORES";
	x[4] = "SCL";
	x[5] = "112233";
	x[6] = "223344";

	theForm.ruta.value = x[f.selectedIndex];
	return true;
	}

function check_gracia(eForm)
  {
  if (eForm.tipo_compra.value == 3)
    {
    eForm.gracia.disabled = 0;
    }
  else
    {
    eForm.gracia.disabled = 1;
    }
  }

function check_and_submit(eForm)
  {
  var errmsg = '';
  if (!eForm.producto.value)
    {
    errmsg += '- Debe indicar un producto o servicio.\n';
    }
  if (!eForm.ruta.value)
    {
    errmsg += '- Debe ingresar identificador o ruta.\n';
    }
  if (!eForm.pax.value)
    {
    errmsg += '- Debe ingresar el nombre del pasajero.\n';
    }
  if (!errmsg)
    {
    eForm.submit();
    }
  else
    {
    alert(errmsg);
    }
  }

</script>

<h1></h1>


<p>{ERROR}</p>

<form action="#" name=theForm method=POST>
	<div>
		<input type="hidden" name="accion" value="pre_compra">
	</div>
	
	<table class="table" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td class="sub-titulo">N Tarjeta</td>
			<td>
				<input type="text" class="input" name="numero_tarjeta" value="{NUMERO_TARJETA}" onBlur="validar_tarjeta(this)">
			</td>
		</tr>
		<tr>
			<td class="sub-titulo">RUT Portador</td>
			<td>
				<input type="text" class="input" name="rut_portador" value="{RUT_PORTADOR}" onBlur="validar_rut_portador(this)">
			</td>
		</tr>
		<tr>
			<td class="sub-titulo">RUT Empresa</td>
			<td>
				<input type="text" class="input" name="rut_empresa" value="{RUT_EMPRESA}" onBlur="validar_rut_empresa(this)">
			</td>
		</tr>
		<tr>
			<td class="sub-titulo">Tipo de Compra</td>
			<td>
				<select name="tipo_compra" class="input" onChange="javascript:check_gracia(this.form);">
					{TIPO_COMPRA}
				</select>
			</td>
		</tr>
		<tr>
			<td class="sub-titulo">Monto</td>
			<td>
				<input type="text" class="input" name="monto" value="{MONTO}">
			</td>
		</tr>
		<tr>
			<td class="sub-titulo">N&uacute;mero de Cuotas</td>
			<td>
				<input type="text" class="input" name="cuotas" value="{CUOTAS}">
			</td>
		</tr>
		<tr>
			<td class="sub-titulo">Meses de gracia</td>
			<td>
				<select name="gracia" class="input" disabled>
					{GRACIA}
				</select>
			</td>
		</tr>
		<!-- tr>
			<td class="sub-titulo">Pago en efectivo</td>
			<td>
				<input type="text" class="input" name="pago" value="{PAGO}">
			</td>
		</tr -->
		<tr>
			<td class="sub-titulo">Producto o servicio*</td>
			<td>
				<select name="producto" class="input" onChange="cambia_producto(this)">
					<option value="">Seleccione...</option>
					{PRODUCTOS}
				</select>
			</td>
		</tr>
		<tr>
			<td class="sub-titulo">Identificador o Ruta*</td>
			<td>
				<input type="text" class="input" name="ruta" value="{RUTA}">
			</td>
		</tr>
		<tr>
			<td class="sub-titulo">Nombre Pasajero*</td>
			<td>
				<input type="text" class="input" name="pax" value="{PAX}">
			</td>
		</tr>
	</table>

	<p>* Campos obligatorios.</p>

	<p>
		<input type="button" class="input-button" value="Enviar" onClick="javascript:check_and_submit(this.form);" name="Submit">
		<input type="reset" class="input-button" value="Borrar" name="borrar">
	</p>

</form>
