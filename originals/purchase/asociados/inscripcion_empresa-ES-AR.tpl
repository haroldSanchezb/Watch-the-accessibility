
{ERROR}

{*BUSCAR_EMPRESA}
<script type="text/javascript">
String.prototype.replaceAll=function(s1, s2) {return this.split(s1).join(s2)}

function ValidacionFomularioBusqueda()
	{
	if (!document.getElementsByName('empresa_iata')[0].checked && !document.getElementsByName('empresa_iata')[1].checked)
		{
		alert('Debe indicar si la Agencia es IATA');
		return false;
		}
	if (document.getElementsByName('empresa_iata')[0].checked )
		{
		if ( document.getElementById('codigo_iata').value=="" )
			{
			alert('Debe ingresar el codigo IATA de la Agencia');
			document.getElementById('codigo_iata').focus();
			return false;
			}
		if ( document.getElementById('codigo_iata').value.length!=8 )
			{
			alert('Codigo IATA invalido');
			document.getElementById('codigo_iata').focus();
			return false;
			}
		}
	if (document.getElementsByName('empresa_iata')[1].checked )
		{
		if ( document.getElementById('rut_empresa').value=="")
			{
			alert('Debe ingresar el {_LABEL_RUT_JS} de la Agencia');
			document.getElementById('rut_empresa').focus();
			return false;
			}
		//verifico que el rut sea alfanumerico, omitiendo los puntos y guiones
		var rut_limpio=document.getElementById('rut_empresa').value;
		rut_limpio=rut_limpio.replaceAll(".","");
		rut_limpio=rut_limpio.replaceAll("-","");
		if(!isAlphaDigit(rut_limpio))
			{
			alert('Debe ingresar el {_LABEL_RUT_JS} usando solo numeros y caracteres');
			document.getElementById('rut_empresa').focus();
			return false;
			}
		if(document.getElementsByName('country_iso')[0].value=='CL'&&!IsRut(rut_limpio))
			{
			alert('Debe ingresar un RUT valido (de Chile)');
			document.getElementById('rut_empresa').focus();
			return false;
			}
		}
	var dv = parseInt(document.getElementById('codigo_iata').value.charAt(7));		
	var cuerpo = parseInt(document.getElementById('codigo_iata').value.substring(0,7), 10);
	var dvcalc = cuerpo % 7;
	if(document.getElementsByName('empresa_iata')[0].checked &&  dv-dvcalc!=0)
		{
		alert('Codigo IATA invalido');
		document.getElementById('codigo_iata').focus();
		return false;	
		}
	return true;
	}
</script>
<br/>
<h2>Buscar Agencia </h2>
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
			<td class="sub-titulo">Indique si su Agencia es IATA</td>
			<td><input type="radio" name="empresa_iata" class="radio" value="si_iata" onClick="mostrar_identificador(this.value);"><span class="label_radio">SI&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<input type="radio" name="empresa_iata" class="radio" value="no_iata" onClick="mostrar_identificador(this.value);"><span class="label_radio">NO</span></td>
		</tr>
		<tr id="panel_si_iata" style="display: none;">
			<td class="sub-titulo">Ingrese c&oacute;digo IATA</td>
			<td><input name="iata" id="codigo_iata"  type="text" class="input" value=''></td>
		</tr>
		<tr id="panel_no_iata" style="display: none;">
			<td class="sub-titulo">Ingrese {_LABEL_RUT} de la Agencia</td>
			<td><input name="rut_empresa" id="rut_empresa" type="text" class="input" value=''></td>
		</tr>
	</table>
	<p id="busca_empresa" style="display: none;"><input name="Submit" type="submit" value="Buscar" ></p>
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
                alert('Debe ingresar el {_LABEL_RUT_JS} de la Agencia');
                document.getElementById('solo_rut_empresa').focus();
                return false;
                }
		//verifico que el rut sea alfanumerico, omitiendo los puntos y guiones
		var rut_limpio=document.getElementById('solo_rut_empresa').value;
		rut_limpio=rut_limpio.replaceAll(".","");
		rut_limpio=rut_limpio.replaceAll("-","");
		if(!isAlphaDigit(rut_limpio))
		        {
                	alert('Debe ingresar el {_LABEL_RUT_JS} usando solo numeros y caracteres');
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

<p>El c&oacute;digo IATA {CODIGO_IATA} no ha sido encontrado.</p>
<p>Puede buscar por el {_LABEL_RUT} de la Agencia o bien haga click <a href="/cgi-bin/asociados/inscripcion_empresa.cgi?accion=buscar">aqu&iacute;</a> para buscar un nuevo c&oacute;digo IATA</p>
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
			<td class="sub-titulo">Ingrese {_LABEL_RUT} de la Agencia</td>
			<td><input name="rut_empresa" id="solo_rut_empresa" type="text" class="input" value=''></td>
		</tr>
	</table>
	<p id="busca_empresa_rut" ><input name="Submit" type="submit" value="Continuar" ></p>
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
			if(!verificarLleno('lista_iata', 'Debe seleccionar el codigo IATA de la Agencia'))
				{
				return false;
				}
			}
		if(!verificarLleno('iata', 'Debe ingresar el codigo IATA de la Agencia')
		 ||!verificarLleno('rut_empresa', 'Debe ingresar el {_LABEL_RUT_JS} de la Agencia')
		 ||!verificarLleno('razon_social', 'Debe ingresar la razon social de la Agencia')
		 ||!verificarLleno('name_fantasia', 'Debe ingresar el nombre comercial de la Agencia')
		 ||!verificarLleno('direccion', 'Debe ingresar la direccion de la Agencia'){*VERIFICAR_CODIGO_POSTAL}
		 ||!verificarLleno('codigo_postal', 'Debe ingresar el codigo postal de la agencia'){/VERIFICAR_CODIGO_POSTAL}
		 ||!verificarLleno('comuna', 'Debe ingresar el municipio, distrito o comuna de la Agencia')
		 ||!verificarLleno('ciudad', 'Debe ingresar la ciudad de la Agencia')
		 ||!verificarLleno('sistema_distribucion', 'Debe ingresar el sistema de distribucion de la Agencia')
		 ||!verificarLleno('company_type', 'Debe ingresar el tipo de Agencia')
	 	 ||(document.getElementById('company_type').value == 'otro' && !verificarLleno('other_type', 'Debe ingresar el tipo de Agencia'))
		 ||!verificarLleno('nombre_agente', 'Debe ingresar el nombre del agente')
		 ||!verificarLleno('mail_agente', 'Debe ingresar el mail del agente')
		 ||!verificarLleno('login_inscripcion', 'Debe ingresar el nombre de usuario')
		 ||!verificarLleno('password_inscripcion', 'Debe ingresar la clave de acceso'))
                {
                return false;		  
		        }
		//validaciones de telefono
		 if (document.getElementsByName('empresa_existente')[0].value!="Y")
			{
			if (document.getElementsByName('fono_pais')[0].value=="")
					{
                        	        alert('Debe ingresar un codigo de pais');
                        	        document.getElementsByName('fono_pais')[0].focus();
                        	        return false;
					}
                	if (document.getElementsByName('fono_ciudad')[0].value=="")
                         	       {
                         	       alert('Debe ingresar un codigo de area');
                         	       document.getElementsByName('fono_ciudad')[0].focus();
                         	       return false;
                         	       }
			if (document.getElementsByName('fono_numero')[0].value=="")
					{
					alert('Debe ingresar un telefono');
					document.getElementsByName('fono_numero')[0].focus();
					return false;
					}
			}
		if (!document.getElementsByName('fono_pais')[0].value.match(/^[0-9]+$/) && document.getElementsByName('fono_pais')[0].value!="") 
				{
				alert('Codigo de pais invalido. Ingrese solo numeros');
				document.getElementsByName('fono_pais')[0].focus();
				return false;
				}	
		if (!document.getElementsByName('fono_ciudad')[0].value.match(/^[0-9]+$/) && document.getElementsByName('fono_ciudad')[0].value!="") 
				{
				alert('Codigo de area  invalido. Ingrese solo numeros');
				document.getElementsByName('fono_ciudad')[0].focus();
				return false;
				}	
		if (!document.getElementsByName('fono_numero')[0].value.match(/^[0-9]+$/) && document.getElementsByName('fono_numero')[0].value!="") 
				{
				alert('Telefono invalido. Ingrese solo numeros');
				document.getElementsByName('fono_numero')[0].focus();
				return false;
				}	
		if (document.getElementsByName('fono_numero')[0].value.length + document.getElementsByName('fono_ciudad')[0].value.length + document.getElementsByName('fono_pais')[0].value.length > 16  && document.getElementsByName('fono_numero')[0].value!="") 
				{
				alert('Fono muy largo');
				document.getElementsByName('fono_pais')[0].focus();
				return false;
				}	
		if (document.getElementsByName('fono_numero')[0].value.length < 4  && document.getElementsByName('fono_numero')[0].value!="") 
				{
				alert('Fono muy corto');
				document.getElementsByName('fono_numero')[0].focus();
				return false;
				}
		//verifico que el rut de la empresa sea alfanumerico, omitiendo los puntos y guiones
		var rut_limpio_empresa=document.getElementsByName('rut_empresa')[0].value;
		rut_limpio_empresa=rut_limpio_empresa.replaceAll(".","");
		rut_limpio_empresa=rut_limpio_empresa.replaceAll("-","");
		if(!isAlphaDigit(rut_limpio_empresa))
		        {
	                alert('Debe ingresar el {_LABEL_RUT_JS} de la empresa usando solo numeros y caracteres');
	                document.getElementsByName('rut_empresa')[0].focus();
			return false;
			}
{*VERIFICAR_RUT_AGENTE}
		if(!verificarLleno('rut_agente', 'Debe ingresar el {_LABEL_RUT_AGENTE_JS} del agente'))
			{
        		return false;		  
			}
		//verifico que el rut del agente sea alfanumerico, omitiendo los puntos y guiones
		var rut_limpio_agente=document.getElementsByName('rut_agente')[0].value;
		rut_limpio_agente=rut_limpio_agente.replaceAll(".","");
		rut_limpio_agente=rut_limpio_agente.replaceAll("-","");
		if(!isAlphaDigit(rut_limpio_agente))
		        {
	                alert('Debe ingresar el {_LABEL_RUT_AGENTE_JS} del agente usando solo numeros y caracteres');
	                document.getElementsByName('rut_agente')[0].focus();
			return false;
			}
{/VERIFICAR_RUT_AGENTE}
		if ( document.getElementsByName('password_inscripcion')[1].value=="")
	                {
	                alert('Debe ingresar la clave de acceso nuevamente');
	                document.getElementsByName('password_inscripcion')[1].focus();
	                return false;
	                } 		
	        if (document.getElementsByName('login_inscripcion')[0].value.match(/\s/g)) 
        	        {
        	        alert('El login ingresado no puede contener espacios.');
        	        document.getElementsByName('login_inscripcion')[0].focus();
        	        return false;
        	        }
		if ( document.getElementsByName('password_inscripcion')[0].value!=document.getElementsByName('password_inscripcion')[1].value)
        	        {
        	        alert('Las Claves de acceso ingresadas no son iguales. Por favor ingreselas nuevamente.');
			document.getElementsByName('password_inscripcion')[0].value="";
			document.getElementsByName('password_inscripcion')[1].value="";
               		document.getElementsByName('password_inscripcion')[0].focus();
                	return false;
                	}
        	if (document.getElementsByName('password_inscripcion')[0].value.match(/\s/g)) 
                	{
                	alert('Las Claves de acceso ingresadas no pueden contener espacios. Por favor ingreselas nuevamente.');
			document.getElementsByName('password_inscripcion')[0].value="";
			document.getElementsByName('password_inscripcion')[1].value="";
                	document.getElementsByName('password_inscripcion')[0].focus();
                	return false;
                	}
		if( !valida_email(document.getElementsByName('mail_agente')[0].value) )
                	{
                	alert('Debe ingresar un mail valido');
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
				alert('Codigo IATA invalido');
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
<p> Agencia encontrada. </p>
<p> A continuaci&oacute;n se puede agregar sus datos como agente.</p>
<p>(Para realizar una nueva b&uacute;squeda, haga click <a href="/cgi-bin/asociados/inscripcion_empresa.cgi?accion=buscar">aqu&iacute;</a>.)</p>
{/EMPRESA_ENCONTRADA}
{*SELECCIONAR_EMPRESA_ENCONTRADA}
<p> El {_LABEL_RUT} {RUT_EMPRESA} pertenece a una Agencia IATA.</p>
<p> Para ingresar sus datos como Agente, por favor seleccione el c&oacute;digo IATA de su Agencia.</p>
<p>(Para ingresar un nuevo c&oacute;digo IATA o realizar una nueva b&uacute;squeda, haga click <a href="/cgi-bin/asociados/inscripcion_empresa.cgi?accion=buscar">aqu&iacute;</a>.)</p>
{/SELECCIONAR_EMPRESA_ENCONTRADA}
{*EMPRESA_NO_ENCONTRADA}
<p> El {_LABEL_RUT} {RUT_EMPRESA} no existe en nuestros registros. </p>
<p> A continuaci&oacute;n se puede ingresar los datos de su agencia, y posteriormente puede agregar sus datos como agente.</p>
<p>(Para realizar una nueva b&uacute;squeda, haga click <a href="/cgi-bin/asociados/inscripcion_empresa.cgi?accion=buscar">aqu&iacute;</a>.)</p>
{/EMPRESA_NO_ENCONTRADA}
<p>&nbsp;</p>

<h2>Agregar nueva Agencia</h2>

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
			<td class="sub-titulo">C&oacute;digo IATA</td>
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
			<td class="sub-titulo">{_LABEL_RUT} de la Agencia</td>
			<td><input name="rut_empresa"  type="text" class="input" {DISABLED_RUT} value='{RUT_EMPRESA}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Raz&oacute;n Social de la Agencia</td>
			<td><input name="razon_social" type="text" class="input" {DISABLED_ELEMENT} value='{RAZON_SOCIAL}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Nombre Comercial</td>
			<td><input name="name_fantasia" type="text" class="input" {DISABLED_ELEMENT} value='{NAME_FANTASIA}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Direcci&oacute;n</td>
			<td><input name="direccion" type="text" class="input" {DISABLED_ELEMENT} value='{DIRECCION}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Tel&eacute;fono (Formato: "pa&iacute;s - &aacute;rea - n&uacute;mero")</td>
			<td>
				<input name="fono_pais" class="input_text" {DISABLED_ELEMENT} size="2" maxlength="10" value='{FONO_PAIS}' type="text">
				<input name="fono_ciudad" class="input_text" {DISABLED_ELEMENT} size="4" maxlength="10" value='{FONO_CIUDAD}' type="text">
				<input name="fono_numero" class="input_text" {DISABLED_ELEMENT} size="8" maxlength="10" value='{FONO_NUMERO}' type="text">
			</td>
		</tr>
		<tr>
			<td class="sub-titulo">C&oacute;digo Postal (Opcional)</td>
			<td><input name="codigo_postal" type="text" class="input" {DISABLED_ELEMENT} value='{CODIGO_POSTAL}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Municipio-Distrito-Comuna</td>
			<td><input name="comuna" type="text" class="input" {DISABLED_ELEMENT} value='{COMUNA}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Ciudad</td>
			<td><input name="ciudad" type="text" class="input" {DISABLED_ELEMENT} value='{CIUDAD}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Sistema de Distribuci&oacute;n</td>
			<td>
{*INGRESAR_SISTEMA_DISTR}
				<select name='sistema_distribucion' id='sistema_distribucion' onchange="mostrar_otro_distr(this.value);">
					<option value=''>seleccione</option>
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
                       <td class="sub-titulo">Tipo de Empresa</td>
                       <td>
                               <select name='company_type' id='company_type' onchange='show_other_type_field();'>
                                       <option value=''>seleccione</option>
                                       <option value='agencia'>Agencia</option>
                                       <option value='tour_operador'>Tour Operador</option>
                                       <option value='otro'>Otro:</option>
                               </select>
&nbsp;<span id="other_type" style="display: none;"><input name="other_type" type="text"/></span>

                       </td>
               </tr>

		<tr id="panel_otro_distr" style="display: none;">
			<td class="sub-titulo">Otro, Cual?</td>
			<td><input name="otro" type="text" class="input" {DISABLED_ELEMENT} value='{OTRO_GDS}'></td>
		</tr>
<script type="text/javascript">
        mostrar_otro_distr(document.getElementById('sistema_distribucion').value);
</script>
		<tr>
			<td colspan="2"><p>&nbsp;</p></td>
		</tr>
		<tr>
			<td colspan="2"><h2>Agregar nuevo Agente:</h2><td>
		</tr>
		<tr>
			<td class="sub-titulo">Nombre</td>
			<td><input name="nombre_agente" type="text" class="input" value=''></td>
		</tr>
{*INGRESAR_RUT_AGENTE}
		<tr>
			<td class="sub-titulo">{_LABEL_RUT_AGENTE}</td>
			<td><input name="rut_agente" type="text" class="input" value=''></td>
		</tr>
{/INGRESAR_RUT_AGENTE}
		<tr>
			<td class="sub-titulo">email</td>
			<td><input name="mail_agente" type="text" class="input" value=''></td>
		</tr>
		<tr>
			<td class="sub-titulo">Nombre de Usuario</td>
			<td><input name="login_inscripcion" type="text" class="input" value=''></td>
		</tr>
		<tr>
			<td class="sub-titulo">Clave</td>
			<td><input name="password_inscripcion" type="password" class="input" value=''></td>
		</tr>
		<tr>
			<td class="sub-titulo">Confirmar Clave</td>
			<td><input name="password_inscripcion" type="password" class="input" value=''></td>
		</tr>
	</table>
	<p><input name="Submit" type="submit" value="Agregar"></p>
</form>
{/AGREGAR_EMPRESA}
{*NO_INGRESAR_AGENTE}
<p>Agencia ya existe en el sistema.</p>
<p> Debe contactar al administrador de la Agencia para poder realizar su registro como Agente.</p>
<p><a href="/asociados/index.html">Volver</a> </p>
{/NO_INGRESAR_AGENTE}

{*INGRESO_EXITOSO}
<p>Los datos fueron ingresados correctamente.</p>
<p>Haga click <a href="/asociados/index.html">aqu&iacute;</a> para volver al sitio de MUNDOLAN, desde donde podr&aacute; ingresar con los datos de su nueva cuenta.</p>
{/INGRESO_EXITOSO}
<br/>
<br/>
<br/>
<br/>
