<!--
TITLE: Formulario apelaci&oacute;n pax no show
TIPO_PAGINA: PROCESO_ASOCIADOS
SECCION_ASOCIADOS: Servicing
AUTH: ASOCIADOS
-->
<script type="text/javascript">

function isEmpty(s)
{ return ((s == null) || (s.length == 0))
}

function isMail(_email) {
     var emailReg = /^[a-z][a-z-_0-9\.]+@[a-z-_=>0-9\.]+\.[a-z]{2,3}$/i
     return emailReg.test(_email);
  }

function isDigit(c)
{   return ((c >= "0") && (c <= "9"))
}

function isInteger(s)
{   var i;
    if (isEmpty(s)) 
       if (isInteger.arguments.length == 1) return defaultEmptyOK;
       else return (isInteger.arguments[1] == true);
    
    for (i = 0; i < s.length; i++)
    {   
        var c = s.charAt(i);
        if( i != 0 ) {
            if (!isDigit(c)) return false;
        } else { 
            if (!isDigit(c) && (c != "-") || (c == "+")) return false;
        }
    }
    return true;
}

function isAlpha(l){
   var checkOK = "0123456789-*/$%&=? ";
   for (i = 0; i < l.length; i++) {
       ch = l.charAt(i); 
       for (j = 0; j < checkOK.length; j++) {
           if (ch == checkOK.charAt(j)) return false;
		   }
   }
return true;
}


function ValidacionFomulario(form)
{

//	if (isEmpty(form.agencia.value))
//	{
//		alert('DEBE INGRESAR EL NOMBRE DE LA AGENCIA');
//		form.agencia.focus();
//		return false;
//	}

//	if (isEmpty(form.nombre_agente.value))
//	{
//		alert('DEBE INGRESAR EL NOMBRE DEL AGENTE');
//		form.nombre_agente.focus();
//		return false;
//	}

    if (isEmpty(form.sender.value))
	{
	    alert('DEBE INGRESAR UN E-MAIL');
		form.sender.focus();
		return false;
	}

//    if (isEmpty(form.iata.value))
//	{
//	    alert('DEBE INGRESAR CODIGO IATA');
//		form.iata.focus();
//		return false;
//	}

//	if (!isInteger(form.iata.value))
//	{
//		alert('INGRESE UN CODIGO IATA (SOLO NUMEROS)');
//		form.iata.focus();
//		return false;
//	}

//	if(form.iata.value.length<7){
//		alert('EL CODIGO IATA DEBE TENER 8 DIGITOS');
//		form.iata.focus();
//		return false;
//	}

	if (!isMail(form.sender.value))
	{
		alert('EL E-MAIL ES INCORRECTO');
		form.sender.focus();
		return false;
	}

	if (isEmpty(form.telefono.value))
	{
		alert('DEBE INGRESAR EL TELEFONO');
		form.telefono.focus();
		return false;
	}

	if (!isInteger(form.telefono.value))
	{
		alert('INGRESE UN TELEFONO (SOLO NUMEROS)');
		form.telefono.focus();
		return false;
	}

	if(form.telefono.value.length<7){
		alert('EL TELEFONO DEBE TENER AL MENOS 7 DIGITOS');
		form.telefono.focus();
		return false;
	}

	if (isEmpty(form.fax.value))
	{
		alert('DEBE INGRESAR FAX');
		form.fax.focus();
		return false;
	}
	
	if (!isInteger(form.fax.value))
	{
		alert('INGRESE FAX (SOLO NUMEROS)');
		form.fax.focus();
		return false;
	}
	
	if(form.fax.value.length<7){
		alert('EL FAX DEBE TENER AL MENOS 7 DIGITOS');
		form.fax.focus();
		return false;
	}
	
    //quitar los retornos de carro del textarea de descripcion
	if(form.descripcion.value.length>0){
	  ntx="";
      tx = form.descripcion.value;
	  for(var i=0;i<tx.length;i++)
		{
			var c=tx.substring(i,i+1);
			if(c=='\n') {ntx+="<BR>";}
			else {if(c==" ") {ntx+="&nbsp;";}
			else {ntx+=c;}
		}
	  }
       form.descripcion.value=ntx;
//	   alert(ntx);
	}

	if (isEmpty(form.descuento_1.value))
	{
		alert('DEBE INGRESAR CODIGO DE DESCUENTO');
		form.descuento_1.focus();
		return false;
	}

	if (isEmpty(form.cabina_1.value))
	{
		alert('DEBE INGRESAR CABINA');
		form.cabina_1.focus();
		return false;
	}

	if (isEmpty(form.rut_1.value))
	{
		alert('DEBE INGRESAR RUT DEL PASAJERO');
		form.rut_1.focus();
		return false;
	}

	if (isEmpty(form.apellido_1.value))
	{
		alert('DEBE INGRESAR APELLIDO DEL PASAJERO');
		form.apellido_1.focus();
		return false;
	}

	if (isEmpty(form.nombre_1.value))
	{
		alert('DEBE INGRESAR NOMBRE DEL PASAJERO');
		form.nombre_1.focus();
		return false;
	}

	if (!isAlpha(form.origen_1.value))
	{
		alert('INGRESE EN EL CODIGO DE CIUDAD SOLO LETRAS');
		form.origen_1.focus();
		return false;
	}

	if(form.origen_1.value.length<3){
		alert('EL CODIGO DE CIUDAD ES DE 3 LETRAS');
		form.origen_1.focus();
		return false;
	}

	if (!isAlpha(form.destino_1.value))
	{
		alert('INGRESE EN EL CODIGO DE CIUDAD SOLO LETRAS');
		form.destino_1.focus();
		return false;
	}

	if(form.destino_1.value.length<3){
		alert('EL CODIGO DE CIUDAD ES DE 3 LETRAS');
		form.destino_1.focus();
		return false;
	}

	if(form.carrier_1.value.length<2){
		alert('EL CARRIER ES DE 2 LETRAS');
		form.carrier_1.focus();
		return false;
	}

	if (!isAlpha(form.carrier_1.value))
	{
		alert('INGRESE CARRIER');
		form.carrier_1.focus();
		return false;
	}

	if (isEmpty(form.vuelo_1.value))
	{
		alert('DEBE INGRESAR EL VUELO');
		form.vuelo_1.focus();
		return false;
	}

	if (!isInteger(form.vuelo_1.value))
	{
		alert('INGRESE UN VUELO (SOLO NUMEROS)');
		form.vuelo_1.focus();
		return false;
	}

	if(form.vuelo_1.value.length<3){
		alert('EL VUELO DEBE TENER AL MENOS 3 DIGITOS');
		form.vuelo_1.focus();
		return false;
	}

   if (isEmpty(form.fecha_1.value))
	{
	   alert('INGRESE LA FECHA CON FORMATO DD/MM/AAAA');
	   form.fecha_1.focus();
	   return false;
	}

   if (!validar_fecha(form.fecha_1.value))
   {
   	   alert('INGRESE LA FECHA CON FORMATO DD/MM/AAAA');
	   form.fecha_1.focus();
	   return false;
   }

   if (!CompararFecha(form.fecha_1.value))
   {
	   alert('LA FECHA DEBE SER POSTERIOR A LA ACTUAL');
	   form.fecha_1.focus();
	   return false;
   }

   if (isEmpty(form.pnr_1.value))
	{
	   alert('INGRESE PNR AMADEUS');
	   form.pnr_1.focus();
	   return false;
	}

   if (isEmpty(form.fare_1.value))
	{
	   alert('INGRESE EL FARE BASIS');
	   form.fare_1.focus();
	   return false;
	}
}
	
//-->
</script>

<h1>Formulario de apelaci&oacute;n pax no show</h1>

<form name="formulario" method="POST" action='/cgi-bin/formulario/envia_formulario.cgi' onSubmit="return ValidacionFomulario(this)">

	<div>
		<input type='hidden' name='id_formulario' value='222'>

	</div>

	<h2>Informaci&oacute;n agencia </h2>

	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col width="20%">
		<col>
		<tr>
			<td class="sub-titulo">Agente</td>
			<td>{+ASOCIADOS_INFO('nombre_agente')}</td>
            
		</tr>
		<tr>
			<td class="sub-titulo">Agencia</td>
			<td>{+ASOCIADOS_INFO('nombre_empresa')}</td>
		</tr>
               <!-- <tr>
                        <td class="sub-titulo">C&oacute;digo IATA</td>
                        <td>{+ASOCIADOS_INFO('iata')}<input type='hidden' name='iata' value="{+ASOCIADOS_INFO('iata')}"></td>
                </tr>-->
		<tr>
			<td class="sub-titulo">Email</td>
			<td><input name="sender" type="text" id="sender" size="30" maxlength="250"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Fono agencia</td>
			<td><input name="telefono" type="text" id="telefono" size="30" maxlength="7"></td>
		</tr>
		<tr>
			<td class="sub-titulo">Fax agencia</td>
			<td><input name="fax" type="text" id="fax" size="30" maxlength="7"></td>
            
			</td></tr>
            <tr>
            <td class="sub-titulo">Referente a</td>
            <td> 
			  <select name="referencia" id="referencia" class="input-text">
					<option value="" selected></option>
					<option value="Carta">Carta</option>
					<option value="ADM">ADM</option>
                    <option value="Factura">Factura</option>
					
			  </select></td>
                
		</tr>
        <tr>
            <td class="sub-titulo">N&deg; ADM</td>
            <td>
			  <input name="folio" type="text" id="folio" size="15" maxlength="15">			</td>
                
		</tr>
         <tr>
            <td class="sub-titulo">N&deg; Factura</td>
            <td>
			  <input name="folio" type="text" id="folio" size="15" maxlength="15">			</td>
                
		</tr>
         <tr>
            <td class="sub-titulo">Folio Carta</td>
            <td>
			  <input name="folio" type="text" id="folio" size="15" maxlength="15">			</td>
                
		</tr>
	</table>

  <h2>Pasajeros</h2>
	
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col>
		<col width="25%">
		<col width="25%">
		<col width="25%">
		<col width="25%">
		<col width="25%">
		<tr>
			<th>Rut</th>
			<th>Nombre</th>
			<th>Apellido</th>
            <th>C&oacute;digo de Reserva</th>
		</tr>

		<tr>
			<td>
				<input name="rut_1" type="text" id="rut_1" size="15" maxlength="15">			</td>
                
                <td>
				<input name="nombre_1" type="text" id="nombre_1" size="20" maxlength="20">			</td>
			<td>
				<input name="apellido_1" type="text" id="apellido_1" size="20" maxlength="20">			</td>
                
                <td><input name="pnr_1" type="text" id="pnr_1" size="7" maxlength="6" /></td>
			
		</tr>
		<tr>
			<td>
				<input name="rut_2" type="text" id="rut_2" size="15" maxlength="15">			</td>
			
			<td>
				<input name="nombre_2" type="text" id="nombre_2" size="20" maxlength="20">			</td>
                
                <td>
				<input name="apellido_2" type="text" id="apellido_2" size="20" maxlength="20">			</td>
                <td><input name="pnr_1" type="text" id="pnr_1" size="7" maxlength="6" /></td>
		</tr>
		<tr>
			<td>
				<input name="rut_3" type="text" id="rut_3" size="15" maxlength="15">			</td>
			
			<td>
				<input name="nombre_3" type="text" id="nombre_3" size="20" maxlength="20">			</td>
                
                <td>
				<input name="apellido_3" type="text" id="apellido_3" size="20" maxlength="20">			</td>
                
                <td><input name="pnr_1" type="text" id="pnr_1" size="7" maxlength="6" /></td>
		</tr>
	</table>


 <h2>Respaldo de la apelaci&oacute;n</h2>

	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<col width="20%">
		<col>
		
		
		<tr>
			<td class="sub-titulo">N&uacute;mero de Ticket</td>
			<td><input name="ticket" type="text" id="ticket" size="25" maxlength="25"></td>
		</tr> 
        <tr>
           
        <td colspan="2"><p>Adjuntar <span class="sub-titulo">historia reserva sistema distribuci&oacute;n</span> 
            <input type="file" name="attach1" /></p>		</tr>
	</table>

  <h2>Motivo</h2>
		
	<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<textarea name="descripcion" style="width: 575px;" cols="82" rows="5" id="descripcion"></textarea>
			</td>
		</tr>
	</table>
	
	<p><input type="submit" name="Submit" value="Enviar"></p>

</form>	
