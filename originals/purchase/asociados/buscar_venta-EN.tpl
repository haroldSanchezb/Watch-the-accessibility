<h1>Search for reservation</h1>

<form action='buscar_reserva.cgi'>
	<div>
		<input type='hidden' name='accion' value='buscar'>
	</div>

	<table class="table" width="100%" border="0" cellspacing="0">
		<colgroup>
			<col>
			<col width="60%">
		</colgroup>
		<tr> 
			<td class="sub-titulo">PNR</td>
			<td><input type='text' name='base[PNR]' class="input"> 
			*</td>
		</tr>
		<tr> 
			
      <td class="sub-titulo">Passenger's lasta name</td>
			<td><input type='text' name='base[apellido_pax]' class="input"> 
			*</td>
		</tr>
		<tr>
			
      <td class="sub-titulo">Only show my PNRs</td>
			<td><input type='checkbox' name='base[solo_mios]'></td>
		</tr>
			<td class="sub-titulo">Only show reservations</td>
			<td><input type='checkbox' name='base[solo_reserva]'></td>
		</tr>
<!--		<tr>
			<td class="sub-titulo">Include expired PNRs in the search</td>
			<td><input type='checkbox' name='base[showexpirados]'></td>
		</tr>-->
        <tr>
			<td><p class="nota">* Requiered fields</p></td>
			
		</tr>
	</table>

	<input name="Submit" type="submit" class="boton-destacado" value="Search" onfocus="blur()">
</form>