<html>
<body>

<h1>Lista Asociados</h1>
<table width=90% border=0><tr><td>
<table border='0' cellpadding='0' cellspacing='0' ><tr><td>
<table width='*' border='0' cellpadding='4' cellspacing='1'> 
  <form action>
	<input type="hidden" name="accion" value="listaasociados">
  <tr>
   <td colspan='2' >Par&aacute;metros de B&uacute;squeda</span></td>     
  </tr>
    <tr>
   <th>Fecha desde (yyyy-mm-dd)</th>
   <td><input type=text name=fecha size=20></td>
  </tr>
    <tr>
   <th>Nombre</th>
   <td><input type=text name=nombre size=20></td>
  </tr>
    <tr>
      <th>RUT</th>
      <td><input type=text name=rut size=20></td>
    </tr>
   <tr>
   <th>Agencia/Oficina</th>
   <td>
		<input type=radio name=flagagencia value=agencia size=20>agencia<br>
		<input type=radio name=flagagencia value=oficina size=20>oficinas<br>
		<input type=radio name=flagagencia value=todas size=20>todas
		<input type=radio name=flagagencia value=agenciabsp size=20>agencia BSP<br>
		<input type=radio name=flagagencia value=agenciabsppend size=20>agencia BSP pendiente<br>

  </td>
  </tr>
  <tr>
   <th>Pa&iacute;s</th>
   <td><select name=pais>
					<option value='CL'>Chile</option>
					<option value='PE'>Peru</option>
					<option value='AR'>Argentina</option>
					<option value='UY'>Uruguay</option>
					<option value='BO'>Bolivia</option>
					</select></td>


  </tr>
  <tr ><td colspan ='2'><input type=submit value ='Buscar' name="buscar"></td></tr>
  </form>
  <form action>
	<input type="hidden" name="accion" value="listapnr">
    <tr>
   <th>PNR</th>
   <td><input type=text name=pnr size=20></td>
  </tr>
  <tr ><td colspan ='2'><input type=submit value ='Buscar' name="buscar2"></td></tr>
  </form>
  <form action>
	<input type="hidden" name="accion" value="listatickets">
    <tr>
      <td>Ticket</td>
      <td>
        <input name=ticket type=text id="ticket" size=20>
      </td>
    </tr>
  <tr ><td colspan ='2'><input type=submit value ='Buscar' name="buscar3"></td></tr>
  </form>
  <form action>
	<input type="hidden" name="accion" value="listaagente">
    <tr>
   <th>Rut agente</th>
   <td><input type=text name=rutagente size=20></td>
  </tr>
  <tr>
   <th>Nombre agente</th>
   <td><input type=text name=nombreagente size=20></td>
  </tr>
  <tr ><td colspan ='2'><input type=submit value ='Buscar' name="buscar4"></td></tr>
  </form>

</table>


</td></tr></table></font>
</td></tr></table>
	
</body>
</html>
