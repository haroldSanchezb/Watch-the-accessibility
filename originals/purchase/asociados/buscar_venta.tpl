



<div id="contenedor_paso1_asociados" >
<h1>B&uacute;squeda de reservas</h1>

<div class="content_tb_process">
<h2 style="width:770px; margin-left:auto; margin-right:auto">Buscar reserva</h2>

<div class="box_content_process" style="width:766px; margin-left:auto; margin-right:auto">
<div class="box_int_border_process">
<div class="center_content">

<form action='buscar_reserva.cgi'>
	<div>
		<input type='hidden' name='accion' value='buscar'>
	</div>

	<table class="tabla_form_proceso" width="100%" border="0" cellspacing="0">
		<colgroup>
			<col>
			<col width="60%">
		</colgroup>
		<tr> 
			<td class="dato_tabla_form_proceso">PNR</td>
			<td class="campo_tabla_form_proceso" style="padding-bottom:0; width: 200px;"><input type='text' name='base[PNR]' class="input"> *</td>
		</tr>
		<tr> 
			
      <td class="dato_tabla_form_proceso">Apellido del pasajero</td>
			<td class="campo_tabla_form_proceso" style="padding-bottom:0; width: 200px;"><input type='text' name='base[apellido_pax]' class="input"> *</td>
		</tr>
		<tr>
			
      <td class="dato_tabla_form_proceso">Muestra s&oacute;lo mis PNRs</td>
			<td class="campo_tabla_form_proceso" style="padding-bottom:0; width: 200px;"><input type='checkbox' name='base[solo_mios]'></td>
		</tr>
			<td class="dato_tabla_form_proceso">Muestra s&oacute;lo las reservas</td>
			<td class="campo_tabla_form_proceso" style="padding-bottom:0; width: 200px;"><input type='checkbox' name='base[solo_reserva]'></td>
		</tr>
<!--		<tr>
			<td class="sub-titulo">Incluye PNRs expirados en la b&uacute;squeda</td>
			<td><input type='checkbox' name='base[showexpirados]'></td>
		</tr>-->
        <tr>
			<td colspan="2" class="campo_tabla_form_proceso"><p class="nota">* Campos obligatorios</p></td>
			
		</tr>
	</table>

	<p><input name="Submit" type="submit" class="button-page float_right" value="Buscar" onfocus="blur()" onclick="check_and_submit(this.form)">
    
    </p>
</form>

</div>
</div>
</div>
</div>

</div>