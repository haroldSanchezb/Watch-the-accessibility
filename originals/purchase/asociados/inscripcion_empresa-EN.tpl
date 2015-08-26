
{ERROR}

{*BUSCAR_EMPRESA}
<script type="text/javascript">
String.prototype.replaceAll=function(s1, s2) {return this.split(s1).join(s2)}

function ValidacionFomularioBusqueda()
	{
	if (!document.getElementsByName('empresa_iata')[0].checked && !document.getElementsByName('empresa_iata')[1].checked)
		{
		alert('Indicate if your Travel Agency is member of IATA');
		return false;
		}
	if (document.getElementsByName('empresa_iata')[0].checked )
		{
		if ( document.getElementById('codigo_iata').value=="" )
			{
			alert('Enter IATA code');
			document.getElementById('codigo_iata').focus();
			return false;
			}
		if ( document.getElementById('codigo_iata').value.length!=8 )
			{
			alert('Invalid IATA code');
			document.getElementById('codigo_iata').focus();
			return false;
			}
		}
	if (document.getElementsByName('empresa_iata')[1].checked )
		{
		if ( document.getElementById('rut_empresa').value=="")
			{
			alert('Must enter Travel Agency TAX-ID');
			document.getElementById('rut_empresa').focus();
			return false;
			}
		//verifico que el rut sea alfanumerico, omitiendo los puntos y guiones
		var rut_limpio=document.getElementById('rut_empresa').value;
		rut_limpio=rut_limpio.replaceAll(".","");
		rut_limpio=rut_limpio.replaceAll("-","");
		if(!isAlphaDigit(rut_limpio))
			{
			alert('Must enter Travel Agency TAX-ID using only numbers and caracters');
			document.getElementById('rut_empresa').focus();
			return false;
			}
		if(document.getElementsByName('country_iso')[0].value=='CL'&&!IsRut(rut_limpio))
			{
			alert('Must enter a valid Travel Agency TAX-ID');
			document.getElementById('rut_empresa').focus();
			return false;
			}
		}
	var dv = parseInt(document.getElementById('codigo_iata').value.charAt(7));		
	var cuerpo = parseInt(document.getElementById('codigo_iata').value.substring(0,7), 10);
	var dvcalc = cuerpo % 7;
	if(document.getElementsByName('empresa_iata')[0].checked &&  dv-dvcalc!=0)
		{
		alert('Invalid IATA code');
		document.getElementById('codigo_iata').focus();
		return false;	
		}
	return true;
	}
</script>
<br/>
<h2>Search Agency </h2>
<br/>
<form name="formulario_busqueda" method="post" action="inscripcion_empresa.cgi" onsubmit="return ValidacionFomularioBusqueda();" >
	<div>
	<input type='hidden' name='accion' value='ask_datos'>
	<input type='hidden' name='country_iso' value='{COUNTRY_ASOCIADO}'>
	</div>
	<table class="table" width="100%" border="0" width="100%" cellpadding="0" cellspacing="0">
		<colgroup>
			<col width="30%">
			<col>
		</colgroup>
		<tr>
			<td class="sub-titulo">Indicate if your Travel Agency is member of IATA</td>
			<td><input type="radio" name="empresa_iata" class="radio" value="si_iata" onClick="mostrar_identificador(this.value);"><span class="label_radio">YES</span>
			<input type="radio" name="empresa_iata" class="radio" value="no_iata" onClick="mostrar_identificador(this.value);"><span class="label_radio">NO</span></td>
		</tr>
		<tr id="panel_si_iata" style="display: none;">
			<td class="sub-titulo">Enter IATA code E.g. 12345678<br />(8 digits)
		     
		  <td><input name="iata" id="codigo_iata"  type="text" class="input" value=''></td>
		</tr>
		<tr id="panel_no_iata" style="display: none;">
			<td class="sub-titulo">Enter Travel Agency TAX-ID</td>
			<td><input name="rut_empresa" id="rut_empresa" type="text" class="input" value=''></td>
		</tr>
	</table>
	<p id="busca_empresa" style="display: none;"><input name="Submit" type="submit" value="Search" ></p>
</form>
<script type='text/javascript'>
function mostrar_identificador(value)
	{
	var browser=navigator.appName;
	if (value == 'si_iata')
		{
		if (browser=="Microsoft Internet Explorer")
			{
			document.getElementById('panel_si_iata').style.display = 'inline';
			}
		else
			{
			document.getElementById('panel_si_iata').style.display = 'table-row';
			}
		document.getElementById('panel_no_iata').style.display = 'none';
		document.getElementById('busca_empresa').style.display = 'block';
		}
	else
		{
		if (browser=="Microsoft Internet Explorer")
			{
			document.getElementById('panel_no_iata').style.display = 'inline';
			}
		else
			{
			document.getElementById('panel_no_iata').style.display = 'table-row';
			}						
		document.getElementById('panel_si_iata').style.display = 'none';
		document.getElementById('busca_empresa').style.display = 'block';
		}
	}
</script>
{/BUSCAR_EMPRESA}

{*BUSCAR_RUT_EMPRESA}
<script type="text/javascript">
String.prototype.replaceAll=function(s1, s2) {return this.split(s1).join(s2)}

function ValidacionFomularioBusquedaRut()
        {
        if (document.getElementById('solo_rut_empresa').value=="")
                {
                alert('Must enter Travel Agency TAX-ID');
                document.getElementById('solo_rut_empresa').focus();
                return false;
                }
		//verifico que el rut sea alfanumerico, omitiendo los puntos y guiones
		var rut_limpio=document.getElementById('solo_rut_empresa').value;
		rut_limpio=rut_limpio.replaceAll(".","");
		rut_limpio=rut_limpio.replaceAll("-","");
		if(!isAlphaDigit(rut_limpio))
		        {
                	alert('Must enter the Travel Agency TAX-ID using only numbers and caracters');
                	document.getElementById('solo_rut_empresa').focus();
			return false;
			}
		if(document.getElementsByName('country_iso')[0].value=='CL'&&!IsRut(rut_limpio))
			{
			alert('Debe ingresar un RUT valido (de Chile)');
			document.getElementById('solo_rut_empresa').focus();
			return false;
			}
		return true;
        }
</script>

<p>The IATA Code {CODIGO_IATA} has not been registered.</p>
<p>You may continue with your registration  or click <a href="/cgi-bin/asociados/inscripcion_empresa.cgi?accion=buscar">here</a> for a new IATA code</p>

<br/>

<form name="formulario_busqueda_rut" method="post" action="inscripcion_empresa.cgi" onsubmit="return ValidacionFomularioBusquedaRut();" >
	<div>
		<input type='hidden' name='accion' value='ask_datos'>
		<input type='hidden' name='empresa_iata' value='si_iata'>
		<input type='hidden' name='iata_paso_anterior' value='{CODIGO_IATA}'>
		<input type='hidden' name='country_iso' value='{COUNTRY_ASOCIADO}'>
	</div>
	<table class="table" width="100%" border="0" width="100%" cellpadding="0" cellspacing="0">
		<colgroup>
			<col width="30%">
			<col>
		</colgroup>
		<tr id="panel_no_iata" >
			<td class="sub-titulo">Confirm IATA code  e.g. 12345678 <br />(8 digits)
</td>
			<td><input name="rut_empresa" id="solo_rut_empresa" type="text" class="input" value=''></td>
		</tr>
	</table>
	<p id="busca_empresa_rut" ><input name="Submit" type="submit" value="Continue" ></p>
</form>
{/BUSCAR_RUT_EMPRESA}

{*AGREGAR_EMPRESA}
<script type="text/javascript">
String.prototype.replaceAll=function(s1, s2) {return this.split(s1).join(s2)}

function verificarLleno(nameCampo, textoCampo)
        {
		//primero verifico que exista el campo. En caso que no exista omito la validacion
		if (document.getElementsByName(nameCampo).length!=0)
			{
			if ( document.getElementsByName(nameCampo)[0].value=="")
					{
					alert(textoCampo);
					document.getElementsByName(nameCampo)[0].focus();
					return false;
					}
			}
		return true;
        }
function ValidacionFormAgregarEmpresa()
        {
		//si existe la lista iata, entonces veo que seleccionen un elemento
		if (document.getElementsByName('lista_iata').length!=0)
			{
			if(!verificarLleno('lista_iata', 'Must select the Travel Agency IATA Code'))
				{
				return false;
				}
			}
		if(!verificarLleno('iata', 'Must enter the Travel Agency IATA Code')
		 ||!verificarLleno('rut_empresa', 'Must enter Travel Agency TAX-ID')
		 ||!verificarLleno('razon_social', 'Must enter Company name')
		 ||!verificarLleno('name_fantasia', 'Must enter el Travel Agency Commercial Name')
		 ||!verificarLleno('direccion', 'Must enter Travel Agency address'){*VERIFICAR_CODIGO_POSTAL}
		 ||!verificarLleno('codigo_postal', 'Must enter Travel Agency Zip Code'){/VERIFICAR_CODIGO_POSTAL}
		 ||!verificarLleno('comuna', 'Must enter Travel Agency County-District-State')
		 ||!verificarLleno('ciudad', 'Must enter Travel Agency city')
		 ||!verificarLleno('sistema_distribucion', 'Must enter Travel Agency distribution System or GDS')
		 ||!verificarLleno('company_type', 'Must enter Agency Type')
		 ||!verificarLleno('nombre_agente', 'Must enter Agent name')
		 ||!verificarLleno('mail_agente', 'Must enter agent email')
		 ||!verificarLleno('login', 'Must enter username')
		 ||(document.getElementById('company_type').value == 'otro' && !verificarLleno('other_type', 'Must enter an Agency Type'))
		 ||!verificarLleno('password', 'Must enter password'))
                {
                return false;		  
		        }
		//validaciones de telefono
                if (document.getElementsByName('fono_numero')[0].value!="" && document.getElementsByName('fono_pais')[0].value=="")
                                {
                                alert('Must enter Country Code');
                                document.getElementsByName('fono_pais')[0].focus();
                                return false;
                                }
                if (document.getElementsByName('fono_numero')[0].value!="" && document.getElementsByName('fono_ciudad')[0].value=="")
                                {
                                alert('Country Code State Code');
                                document.getElementsByName('fono_ciudad')[0].focus();
                                return false;
                                }

                if (!document.getElementsByName('fono_pais')[0].value.match(/^[0-9]+$/) && document.getElementsByName('fono_pais')[0].value!="")
                                {
                                alert('Invalid Country Code');
                                document.getElementsByName('fono_pais')[0].focus();
                                return false;
                                }
                if (!document.getElementsByName('fono_ciudad')[0].value.match(/^[0-9]+$/) && document.getElementsByName('fono_ciudad')[0].value!="")
                                {
                                alert('Invalid State Code');
                                document.getElementsByName('fono_ciudad')[0].focus();
                                return false;
                                }
                if (!document.getElementsByName('fono_numero')[0].value.match(/^[0-9]+$/) && document.getElementsByName('fono_numero')[0].value!="")
                                {
                                alert('Invalid Phone Number');
                                document.getElementsByName('fono_numero')[0].focus();
                                return false;
                                }
                if (document.getElementsByName('fono_numero')[0].value.length + document.getElementsByName('fono_ciudad')[0].value.length + document.getElementsByName('fono_pais')[0].value.length > 16  && document.getElementsByName('fono_numero')[0].value!="")
                                {
                                alert('Phone Number too long');
                                document.getElementsByName('fono_pais')[0].focus();
                                return false;
                                }
                if (document.getElementsByName('fono_numero')[0].value.length < 6  && document.getElementsByName('fono_numero')[0].value!="")
                                {
                                alert('Phone Number too short');
                                document.getElementsByName('fono_numero')[0].focus();
                                return false;
                                }
		//verifico que el rut de la empresa sea alfanumerico, omitiendo los puntos y guiones
		var rut_limpio_empresa=document.getElementsByName('rut_empresa')[0].value;
		rut_limpio_empresa=rut_limpio_empresa.replaceAll(".","");
		rut_limpio_empresa=rut_limpio_empresa.replaceAll("-","");
		if(!isAlphaDigit(rut_limpio_empresa))
		        {
       		        alert('Must enter the Travel Agency TAX-ID using only numbers and caracters');
       		        document.getElementsByName('rut_empresa')[0].focus();
			return false;
			}
{*VERIFICAR_RUT_AGENTE}
		if(!verificarLleno('rut_agente', 'Must enter Agent {_LABEL_RUT_AGENTE_JS}'))
			{
	                return false;		  
			}
		//verifico que el rut del agente sea alfanumerico, omitiendo los puntos y guiones
		var rut_limpio_agente=document.getElementsByName('rut_agente')[0].value;
		rut_limpio_agente=rut_limpio_agente.replaceAll(".","");
		rut_limpio_agente=rut_limpio_agente.replaceAll("-","");
		if(!isAlphaDigit(rut_limpio_agente))
		        {
               		alert('Must enter the Travel Agency TAX-ID using only numbers and caracters');
               	 	document.getElementsByName('rut_agente')[0].focus();
			return false;
			}
{/VERIFICAR_RUT_AGENTE}
		if ( document.getElementsByName('password')[1].value=="")
                	{
                	alert('You must enter the password again');
                	document.getElementsByName('password')[1].focus();
                	return false;
                	} 		
        	if (document.getElementsByName('login')[0].value.match(/\s/g)) 
                	{
                	alert('The login cannot contain spaces');
                	document.getElementsByName('login')[0].focus();
                	return false;
                	}
		if ( document.getElementsByName('password')[0].value!=document.getElementsByName('password')[1].value)
                	{
                	alert('The passwords are not the same. Please enter them again.');
			document.getElementsByName('password')[0].value="";
			document.getElementsByName('password')[1].value="";
                	document.getElementsByName('password')[0].focus();
                	return false;
                	}
        	if (document.getElementsByName('password')[0].value.match(/\s/g)) 
                	{
                	alert('The password cannot contain spaces. Please enter again');
			document.getElementsByName('password')[0].value="";
			document.getElementsByName('password')[1].value="";
        	        document.getElementsByName('password')[0].focus();
                	return false;
                	}
		if( !valida_email(document.getElementsByName('mail_agente')[0].value) )
                	{
                	alert('Must enter a valid email');
                	document.getElementsByName('mail_agente')[0].focus();
                	return false;
                	}
		//si existe el campo iata, entonces veo si es valido
		if (document.getElementsByName('iata').length!=0)
			{
			var dv = parseInt(document.getElementsByName('iata')[0].value.charAt(7));		
			var cuerpo = parseInt(document.getElementsByName('iata')[0].value.substring(0,7), 10);
			var dvcalc = cuerpo % 7;
			if( dv-dvcalc!=0)
				{
				alert('Invalid IATA code');
				document.getElementsByName('iata')[0].focus();
				return false;	
				}
			}
		return true;
        }
function selectByVal(idSelect,val)
	{
	sel=document.getElementById(idSelect);
	if(!sel)
		{
		return false;
		}
	for(x=0;x<sel.length;x++)
		{
		if(sel[x].value==val)
			{
			sel[x].selected=true;
			return true;
			}
		}
	}
function mostrar_otro_distr(value)
        {
        var browser=navigator.appName;
        if (value == 'otro')
                {
                if (browser=="Microsoft Internet Explorer")
                        {
                        document.getElementById('panel_otro_distr').style.display = 'inline';
                        }
                else
                        {
                        document.getElementById('panel_otro_distr').style.display = 'table-row';
                        }
                }
        else
                {
                document.getElementById('panel_otro_distr').style.display = 'none';
                }
        }

function show_other_type_field() {

	company_type = document.getElementById("company_type").value;
	if (company_type == 'otro') {
		document.getElementById('other_type').style.display='inline';
	} else {
		document.getElementById('other_type').style.display='none';
	}
}
</script>
<p>&nbsp;</p>
{*EMPRESA_ENCONTRADA}
<p> Travel Agency found </p>
<p> To continue, you may add your travel agent information.</p>
<p>(To start new search click <a href="/cgi-bin/asociados/inscripcion_empresa.cgi?accion=buscar">here</a>.)</p>
{/EMPRESA_ENCONTRADA}
{*SELECCIONAR_EMPRESA_ENCONTRADA}
<p> TAX-ID {RUT_EMPRESA} belongs to an IATA Agency.</p>
<p> To continue, please select the IATA code of your Agency.</p>
<p>(To start a new search click <a href="/cgi-bin/asociados/inscripcion_empresa.cgi?accion=buscar">here</a>.)</p>
{/SELECCIONAR_EMPRESA_ENCONTRADA}
{*EMPRESA_NO_ENCONTRADA}
<p> TAX-ID {RUT_EMPRESA} has not been registered. </p>
<p>You  may continue with your registration or click <a href="/cgi-bin/asociados/inscripcion_empresa.cgi?accion=buscar">here</a> for a new IATA code.</p>

{/EMPRESA_NO_ENCONTRADA}
<p>&nbsp;</p>


<h2>Add new Travel Agency</h2>

<form name="formulario_empresa" method="post" action="inscripcion_empresa.cgi" onsubmit="return ValidacionFormAgregarEmpresa();">
	<div>
		<input type='hidden' name='accion' value='agregar_empresa'>
		<input type='hidden' name='empresa_existente' value='{EMPRESA_EXISTENTE}'>
		<input type='hidden' name='id_empresa' value='{ID_EMPRESA}'>
		<input type='hidden' name='id_sucursal' value='{ID_SUCURSAL}'>
		<input type='hidden' name='country_iso' value='{COUNTRY_ASOCIADO}'>
		<input type='hidden' name='nueva_sucursal' value='{NUEVA_SUCURSAL}'>
	</div>
	<table class="table" width="100%" border="0" width="100%" cellpadding="0" cellspacing="0">
		<colgroup>
			<col width="30%">
			<col>
		</colgroup>
{*INGRESAR_IATA}
		<tr>
			<td class="sub-titulo">IATA Code</td>
			<td><input name="iata" type="text" class="input" {DISABLED_IATA} value='{CODIGO_IATA}'></td>
		</tr>
{/INGRESAR_IATA}
{*SELECCIONAR_IATA}
                <tr>
                        <td class="sub-titulo">C&oacute;digo IATA</td>
                        <td>
                                <select name='lista_iata' class="input">
                                        <option value=''>Seleccione</option>
                                        {LISTA_IATA}
                                </select>
                        </td>
                </tr>
{/SELECCIONAR_IATA}

		<tr>
			<td class="sub-titulo">IATA Code confirmation
</td>
			<td><input name="rut_empresa"  type="text" class="input" {DISABLED_RUT} value='{RUT_EMPRESA}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Company Name </td>
			<td><input name="razon_social" type="text" class="input" {DISABLED_ELEMENT} value='{RAZON_SOCIAL}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Trade Name</td>
			<td><input name="name_fantasia" type="text" class="input" {DISABLED_ELEMENT} value='{NAME_FANTASIA}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Address</td>
			<td><input name="direccion" type="text" class="input" {DISABLED_ELEMENT} value='{DIRECCION}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">City</td>
			<td><input name="ciudad" type="text" class="input" {DISABLED_ELEMENT} value='{CIUDAD}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">State</td>
			<td><input name="comuna" type="text" class="input" {DISABLED_ELEMENT} value='{COMUNA}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Zip Code</td>
			<td><input name="codigo_postal" type="text" class="input" {DISABLED_ELEMENT} value='{CODIGO_POSTAL}'></td>
		</tr>
		
		<tr>
			<td class="sub-titulo">Phone Number (Optional. Format: "country - state - phone number")</td>
			<td>
				<input name="fono_pais" class="input_text" {DISABLED_ELEMENT} size="2" maxlength="10" value='{FONO_PAIS}' type="text">
				<input name="fono_ciudad" class="input_text" {DISABLED_ELEMENT} size="4" maxlength="10" value='{FONO_CIUDAD}' type="text">
				<input name="fono_numero" class="input_text" {DISABLED_ELEMENT} size="8" maxlength="10" value='{FONO_NUMERO}' type="text">
			</td>
		</tr>
		<tr>
			<td class="sub-titulo">Distribution System or GDS</td>
			<td>
{*INGRESAR_SISTEMA_DISTR}
				<select name='sistema_distribucion' id='sistema_distribucion' onchange="mostrar_otro_distr(this.value);">
					<option value=''>select</option>
					<option value='amadeus'>Amadeus</option> 
					<option value='galileo'>Galileo</option>
					<option value='sabre'>Sabre</option>
					<option value='worldspan'>Worldspan</option>
					<option value='otro'>Otro</option>
				</select>
				<script type="text/javascript">
					selectByVal('sistema_distribucion','{SISTEMA_DISTRIBUCION}');
				</script>
{/INGRESAR_SISTEMA_DISTR}
			</td>
		</tr>
               <tr>
                       <td class="sub-titulo">Type of Company</td>
                       <td>
                               <select name='company_type' id='company_type' onchange="show_other_type_field();">
                                       <option value=''>select</option>
                                       <option value='agencia'>Agency</option>
                                       <option value='tour_operador'>Tour Operator</option>
                                       <option value='otro'>Other:</option>
                               </select>
				&nbsp;<span id="other_type" style="display: none;"><input name="other_type" type="text"/></span>
                       </td>
               </tr>

		<tr id="panel_otro_distr" style="display: none;">
			<td class="sub-titulo">Other, Which one?</td>
			<td><input name="otro" type="text" class="input" {DISABLED_ELEMENT} value='{OTRO_GDS}'></td>
		</tr>
<script type="text/javascript">
        mostrar_otro_distr(document.getElementById('sistema_distribucion').value);
</script>
		<tr>
			<td colspan="2"><p>&nbsp;</p></td>
		</tr>
		<tr>
			<td colspan="2"><h2>Add new Travel Agent</h2><td>
		</tr>
		<tr>
			<td class="sub-titulo">Name</td>
			<td><input name="nombre_agente" type="text" class="input" value=''></td>
		</tr>
{*INGRESAR_RUT_AGENTE}
		<tr>
			<td class="sub-titulo">IATA Code information</td>
			<td><input name="rut_agente" type="text" class="input" value=''></td>
		</tr>
{/INGRESAR_RUT_AGENTE}
		<tr>
			<td class="sub-titulo">Email</td>
			<td><input name="mail_agente" type="text" class="input" value=''></td>
		</tr>
		<tr>
			<td class="sub-titulo">Username</td>
			<td><input name="login_inscripcion" type="text" class="input" value=''></td>
		</tr>
		<tr>
			<td class="sub-titulo">Password</td>
			<td><input name="password_inscripcion" type="password" class="input" value=''></td>
		</tr>
		<tr>
			<td class="sub-titulo">Confirm Password</td>
			<td><input name="password_inscripcion" type="password" class="input" value=''></td>
		</tr>
	</table>
	<p><input name="Submit" type="submit" value="Add"></p>
</form>
{/AGREGAR_EMPRESA}

{*INGRESO_EXITOSO}
<p>Your information has been successfully saved</p>
<p>Click <a href="/asociados/index.html">here</a> to go to MUNDOLAN home.</p>
{/INGRESO_EXITOSO}
<br/>
<br/>
<br/>
<br/>
