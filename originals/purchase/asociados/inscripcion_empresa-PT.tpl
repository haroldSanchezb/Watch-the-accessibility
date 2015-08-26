
{ERROR}

{*BUSCAR_EMPRESA}
<script type="text/javascript">
String.prototype.replaceAll=function(s1, s2) {return this.split(s1).join(s2)}

function ValidacionFomularioBusqueda()
	{
	if (!document.getElementsByName('empresa_iata')[0].checked && !document.getElementsByName('empresa_iata')[1].checked)
		{
		alert('Por gentileza informar se a agencia \xe9 IATA ');
		return false;
		}
	if (document.getElementsByName('empresa_iata')[0].checked )
		{
		if ( document.getElementById('codigo_iata').value=="" )
			{
			alert('Por gentileza  inserir o codigo iata da agencia');
			document.getElementById('codigo_iata').focus();
			return false;
			}
		if ( document.getElementById('codigo_iata').value.length!=8 )
			{
			alert('codigo iata incorreto');
			document.getElementById('codigo_iata').focus();
			return false;
			}
		}
	if (document.getElementsByName('empresa_iata')[1].checked )
		{
		if ( document.getElementById('rut_empresa').value=="")
			{
			alert('Por gentileza inserir o {_LABEL_RUT_JS} da agencia');
			document.getElementById('rut_empresa').focus();
			return false;
			}
		//verifico que el rut sea alfanumerico, omitiendo los puntos y guiones
		var rut_limpio=document.getElementById('rut_empresa').value;
		rut_limpio=rut_limpio.replaceAll(".","");
		rut_limpio=rut_limpio.replaceAll("-","");
		if(!isAlphaDigit(rut_limpio))
			{
			alert('Por gentileza inserir o  {_LABEL_RUT_JS} utilizando somente numeros');
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
		alert('codigo iata incorreto');
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
			<td class="sub-titulo">Indique se sua Ag&ecirc;ncia &eacute; IATA</td>
			<td><input type="radio" name="empresa_iata" class="radio" value="si_iata" onClick="mostrar_identificador(this.value);"><span class="label_radio">SIM&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<input type="radio" name="empresa_iata" class="radio" value="no_iata" onClick="mostrar_identificador(this.value);"><span class="label_radio">N&Atilde;O</span></td>
		</tr>
		<tr id="panel_si_iata" style="display: none;">
			<td class="sub-titulo">Informe o c&oacute;digo IATA</td>
			<td><input name="iata" id="codigo_iata"  type="text" class="input" value=''></td>
		</tr>
		<tr id="panel_no_iata" style="display: none;">
			<td class="sub-titulo">Ingrese o {_LABEL_RUT} da Ag&ecirc;ncia</td>
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
                alert('Por gentileza inserir o {_LABEL_RUT_JS} da agencia');
                document.getElementById('solo_rut_empresa').focus();
                return false;
                }
		//verifico que el rut sea alfanumerico, omitiendo los puntos y guiones
		var rut_limpio=document.getElementById('solo_rut_empresa').value;
		rut_limpio=rut_limpio.replaceAll(".","");
		rut_limpio=rut_limpio.replaceAll("-","");
		if(!isAlphaDigit(rut_limpio))
		        {
                	alert('Por gentileza inserir o {_LABEL_RUT_JS} utilizando somente numeros');
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

<p>O c&oacute;digo IATA {CODIGO_IATA} n&atilde;o foi encontrado.</p>
<p>Procure atrav&eacute;s do  {_LABEL_RUT} da Ag&ecirc;ncia ou clique  <a href="/cgi-bin/asociados/inscripcion_empresa.cgi?accion=buscar">aqui</a> para procurar um novo c&oacute;digo IATA</p>
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
                        if(!verificarLleno('lista_iata', 'Por gentileza inserir o codigo iata da agencia'))
                                {
                                return false;
                                }
                        }
		if(!verificarLleno('iata', 'Por gentileza inserir o codigo iata da agencia')
		 ||!verificarLleno('rut_empresa', 'Por gentileza inserir o CNPJ da Empresa ')
		 ||!verificarLleno('razon_social', 'Por gentileza inserir a raz\xe3o social da agencia')
		 ||!verificarLleno('name_fantasia', 'Por gentileza inserir o nome fantasia da agencia')
		 ||!verificarLleno('direccion', 'Por gentileza inserir o endere\xe7o da agencia'){*VERIFICAR_CODIGO_POSTAL}
		 ||!verificarLleno('codigo_postal', 'Por gentileza inserir o CEP da agencia'){/VERIFICAR_CODIGO_POSTAL}
		 ||!verificarLleno('comuna', 'Por gentileza inserir o bairro da agencia')
		 ||!verificarLleno('ciudad', 'Por gentileza inserir a cidade da agencia')
		 ||!verificarLleno('sistema_distribucion', 'Por gentileza inserir o GDS da agencia')
		 ||!verificarLleno('company_type', 'Por gentileza inserir o tipo da empresa')
		 ||(document.getElementById('company_type').value == 'otro' && !verificarLleno('other_type', 'Por gentileza inserir o tipo da empresa'))
		 ||!verificarLleno('nombre_agente', 'Por gentileza inserir o nome do agente de viagem')
		 ||!verificarLleno('mail_agente', 'Por gentileza inserir o e-mail do agente de viagem')
		 ||!verificarLleno('login_inscripcion', 'Por gentileza inserir o nome de usuario')
		 ||!verificarLleno('password_inscripcion', 'Por gentileza inserir o password'))
                {
                return false;		  
		        }
		//validaciones de telefono
                if (document.getElementsByName('fono_numero')[0].value!="" && document.getElementsByName('fono_pais')[0].value=="")
                                {
                                alert('Por gentileza inserir o codigo da pais');
                                document.getElementsByName('fono_pais')[0].focus();
                                return false;
                                }
                if (document.getElementsByName('fono_numero')[0].value!="" && document.getElementsByName('fono_ciudad')[0].value=="")
                                {
                                alert('Por gentileza inserir o codigo da cidade');
                                document.getElementsByName('fono_ciudad')[0].focus();
                                return false;
                                }

                if (!document.getElementsByName('fono_pais')[0].value.match(/^[0-9]+$/) && document.getElementsByName('fono_pais')[0].value!="")
                                {
                                alert('Por gentileza inserir o codigo da pais correto');
                                document.getElementsByName('fono_pais')[0].focus();
                                return false;
                                }
                if (!document.getElementsByName('fono_ciudad')[0].value.match(/^[0-9]+$/) && document.getElementsByName('fono_ciudad')[0].value!="")
                                {
                                alert('Por gentileza inserir o codigo da cidade correto');
                                document.getElementsByName('fono_ciudad')[0].focus();
                                return false;
                                }
                if (!document.getElementsByName('fono_numero')[0].value.match(/^[0-9]+$/) && document.getElementsByName('fono_numero')[0].value!="")
                                {
                                alert('Por gentileza inserir o telefone correto');
                                document.getElementsByName('fono_numero')[0].focus();
                                return false;
                                }
                if (document.getElementsByName('fono_numero')[0].value.length + document.getElementsByName('fono_ciudad')[0].value.length + document.getElementsByName('fono_pais')[0].value.length > 16  && document.getElementsByName('fono_numero')[0].value!="")
                                {
                                alert('Telefone muito longo');
                                document.getElementsByName('fono_pais')[0].focus();
                                return false;
                                }
                if (document.getElementsByName('fono_numero')[0].value.length < 4  && document.getElementsByName('fono_numero')[0].value!="")
                                {
                                alert('Telefone muito curto');
                                document.getElementsByName('fono_numero')[0].focus();
                                return false;
                                }
		//verifico que el rut de la empresa sea alfanumerico, omitiendo los puntos y guiones
		var rut_limpio_empresa=document.getElementsByName('rut_empresa')[0].value;
		rut_limpio_empresa=rut_limpio_empresa.replaceAll(".","");
		rut_limpio_empresa=rut_limpio_empresa.replaceAll("-","");
		if(!isAlphaDigit(rut_limpio_empresa))
		        {
       		        alert('Por gentileza inserir o {_LABEL_RUT_JS} utilizando somente numeros');
       		        document.getElementsByName('rut_empresa')[0].focus();
			return false;
			}
{*VERIFICAR_RUT_AGENTE}
		if(!verificarLleno('rut_agente', 'Por gentileza inserir o {_LABEL_RUT_AGENTE_JS} do agente de viagem'))
			{
               		return false;		  
			}
		//verifico que el rut del agente sea alfanumerico, omitiendo los puntos y guiones
		var rut_limpio_agente=document.getElementsByName('rut_agente')[0].value;
		rut_limpio_agente=rut_limpio_agente.replaceAll(".","");
		rut_limpio_agente=rut_limpio_agente.replaceAll("-","");
		if(!isAlphaDigit(rut_limpio_agente))
		        {
                	alert('Por gentileza inserir o {_LABEL_RUT_AGENTE_JS} utilizando somente numeros');
                	document.getElementsByName('rut_agente')[0].focus();
			return false;
			}
{/VERIFICAR_RUT_AGENTE}
		if ( document.getElementsByName('password_inscripcion')[1].value=="")
                	{
                	alert('Por gentileza inserir o password');
                	document.getElementsByName('password_inscripcion')[1].focus();
                	return false;
                	} 		
        	if (document.getElementsByName('login_inscripcion')[0].value.match(/\s/g)) 
                	{
                	alert('Por gentileza inserir o nome de usuario correto.');
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
                	alert('Por gentileza inserir o nome de usuario correto.');
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
				alert('codigo iata incorreto');
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
<p> Ag&ecirc;ncia encontrada.  </p>
<p>A seguir poder&aacute; adicionar seus dados como agente.</p>
<p>(Para realizar uma nova busca, clique  <a href="/cgi-bin/asociados/inscripcion_empresa.cgi?accion=buscar">aqui</a>.)</p>
{/EMPRESA_ENCONTRADA}
{*SELECCIONAR_EMPRESA_ENCONTRADA}
<p> O {_LABEL_RUT} {RUT_EMPRESA}  existe em nossos registros.</p>
<p> Por gentileza inserir o Codigo IATA da Ag&ecirc;ncia.</p>
<p>(Para realizar uma nova busca, clique  <a href="/cgi-bin/asociados/inscripcion_empresa.cgi?accion=buscar">aqui</a>.)</p>
{/SELECCIONAR_EMPRESA_ENCONTRADA}
{*EMPRESA_NO_ENCONTRADA}
<p> O {_LABEL_RUT} {RUT_EMPRESA} n&atilde;o existe em nossos registros. </p>
<p> A continuaci&oacute;n se puede ingresar los datos de su agencia, y posteriormente puede agregar sus datos como agente.</p>
<p>(Para realizar uma nova busca, clique  <a href="/cgi-bin/asociados/inscripcion_empresa.cgi?accion=buscar">aqui</a>.)</p>
{/EMPRESA_NO_ENCONTRADA}
<p>&nbsp;</p>


<h2>Adicionar nova Ag&ecirc;ncia</h2>

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
			<td class="sub-titulo">{_LABEL_RUT} da Ag&ecirc;ncia</td>
			<td><input name="rut_empresa"  type="text" class="input" {DISABLED_RUT} value='{RUT_EMPRESA}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Raz&atilde;o Social da Ag&ecirc;ncia</td>
			<td><input name="razon_social" type="text" class="input" {DISABLED_ELEMENT} value='{RAZON_SOCIAL}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Nome Comercial</td>
			<td><input name="name_fantasia" type="text" class="input" {DISABLED_ELEMENT} value='{NAME_FANTASIA}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Endere&ccedil;o</td>
			<td><input name="direccion" type="text" class="input" {DISABLED_ELEMENT} value='{DIRECCION}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">C&oacute;digo Postal (opcional)</td>
			<td><input name="codigo_postal" type="text" class="input" {DISABLED_ELEMENT} value='{CODIGO_POSTAL}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Bairro</td>
			<td><input name="comuna" type="text" class="input" {DISABLED_ELEMENT} value='{COMUNA}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Cidade/Estado</td>
			<td><input name="ciudad" type="text" class="input" {DISABLED_ELEMENT} value='{CIUDAD}'></td>
		</tr>
		<tr>
			<td class="sub-titulo">Telefone (Opcional. Formato: "pa&iacute;s - cidade - telefone")</td>
			<td>
				<input name="fono_pais" class="input_text" {DISABLED_ELEMENT} size="2" maxlength="10" value='{FONO_PAIS}' type="text">
				<input name="fono_ciudad" class="input_text" {DISABLED_ELEMENT} size="4" maxlength="10" value='{FONO_CIUDAD}' type="text">
				<input name="fono_numero" class="input_text" {DISABLED_ELEMENT} size="8" maxlength="10" value='{FONO_NUMERO}' type="text">
			</td>
		</tr>		
		<tr>
			<td class="sub-titulo">Sistema de Distribui&ccedil;&atilde;o</td>
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
                       <td class="sub-titulo">Tipo de Empresa</td>
                       <td>
                               <select name='company_type' id='company_type' onchange='show_other_type_field();'>
                                       <option value=''>seleccione</option>
                                       <option value='agencia'>Agencia</option>
                                       <option value='tour_operador'>Tour Operador</option>
                                       <option value='otro'>Outro:</option>
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
			<td colspan="2"><h2>Adicionar novo Agente:</h2><td>
		</tr>
		<tr>
			<td class="sub-titulo">Nome</td>
			<td><input name="nombre_agente" type="text" class="input" value=''></td>
		</tr>
{*INGRESAR_RUT_AGENTE}
		<tr>
			<td class="sub-titulo">{_LABEL_RUT_AGENTE}</td>
			<td><input name="rut_agente" type="text" class="input" value=''></td>
		</tr>
{/INGRESAR_RUT_AGENTE}
		<tr>
			<td class="sub-titulo">E-mail</td>
			<td><input name="mail_agente" type="text" class="input" value=''></td>
		</tr>
		<tr>
			<td class="sub-titulo">Nome de Usu&aacute;rio (somente caracteres alfanum&eacute;ricos)
</td>
			<td><input name="login_inscripcion" type="text" class="input" value=''></td>
		</tr>
		<tr>
			<td class="sub-titulo">Senha</td>
			<td><input name="password_inscripcion" type="password" class="input" value=''></td>
		</tr>
		<tr>
			<td class="sub-titulo">Confirmar Senha</td>
			<td><input name="password_inscripcion" type="password" class="input" value=''></td>
		</tr>
	</table>
	<p><input name="Submit" type="submit" value="Adicionar"></p>
</form>
{/AGREGAR_EMPRESA}

{*INGRESO_EXITOSO}
<p>Dados enviados correctamente.</p>
<p>Para voltar ao MUNDOLAN  clique <a href="/asociados/index.html">aqui</a>.</p>
{/INGRESO_EXITOSO}
<br/>
<br/>
<br/>
<br/>


