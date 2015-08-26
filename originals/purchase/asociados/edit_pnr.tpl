<script type="text/javascript">
function MM_openBrWindow(theURL,winName,features) { //v2.0
  features = "menubar=no,resizable=yes,status=no, titlebar=no " + features;
  window.open(theURL,winName,features);
}

function cancelar_reserva(f)
        {
        if(confirm("Esta seguro que desea cancelar esta reserva?"))
                {
			f.submit();        
                }
        }
</script>

<h1>Editar PNR</h1>

<h4>RP: {T1} {T2} {T4} {T5} {T6} {T7} {T8} {T9} {T10} {T11}</h4>

<table class="table" cellspacing="0">
	{PNR_LINES}
</table>

<p>
	<form method="post" style="border-top: solid 1px #dddddd; padding: 3px;" action="/cgi-bin/asociados/edit_pnr.cgi?pnr={PNR}">
		Reservar asiento<br>
		<input type="text" name="asiento" class="input-text-gris">
		/P <select name="pax" class="input-text-gris">{SELECT_PASAJERO}</select>
		/S <select name="segment" class="input-text-gris">{SELECT_SEGMENTO}</select>
		<input type="hidden" name="accion" value="execute_all">
		<input type="hidden" name="sid" value="{SESSION}">
		<input type="hidden" name="pnr" value="{RL1A}">
		<input type="submit" value="Procesar" class="input-button" name="agregar_all">
	</form>


	<form method="post" style="border-top: solid 1px #dddddd; padding: 3px;" action="/cgi-bin/asociados/edit_pnr.cgi?pnr={PNR}">
		<br>Agregar SSR &nbsp;&nbsp;&nbsp;
		<a href="/asociados/ejemplossr.html">Ejemplos de SSRs m&aacute;s usados</a><br>
		<input type="text" name="ssr" class="input-text-gris">
		/P <select name="pax" class="input-text-gris"><option value="0">Ninguno</option>{SELECT_PASAJERO}</select>
		/S <select name="segment" class="input-text-gris"><option value=0>Ninguno</option>{SELECT_SEGMENTO}</select>
		<input type="hidden" name="accion" value="execute_all">
		<input type="hidden" name="sid" value="{SESSION}">
		<input type="hidden" name="pnr" value="{RL1A}">
		<input type="submit" value="Procesar" class="input-button" name="agregar_all">
	</form>


	<form method="post" style="border-top: solid 1px #dddddd; padding: 3px;" action="/cgi-bin/asociados/edit_pnr.cgi?pnr={PNR}">
		<br>Agregar OSI &nbsp;&nbsp;&nbsp;
		<a href="/asociados/ejemploosi.html">Ejemplos de OSIs m&aacute;s usados</a><br>
		<input type="text" name="osi" class="input-text-gris">
		/P <select name="pax" class='input-text-gris'><option value="0">Ninguno</option>{SELECT_PASAJERO}</select>
		<input type="hidden" name="accion" value="execute_all">
		<input type="hidden" name="sid" value="{SESSION}">
		<input type="hidden" name="pnr" value="{RL1A}">
		<input type="submit" value="Procesar" class="input-button" name="agregar_all">
	</form>


	<form method="post" style="border-top: solid 1px #dddddd; padding: 3px;" action="/cgi-bin/asociados/edit_pnr.cgi?pnr={PNR}">
		<br>Agregar informaci&oacute;n de contacto<br>
		<input type="text" name="ctc" class="input-text-gris">
		/P <select name="pax" class="input-text-gris"><option value="0">Ninguno</option>{SELECT_PASAJERO}</select>
		<input type="hidden" name="accion" value="execute_all">
		<input type="hidden" name="sid" value="{SESSION}">
		<input type="hidden" name="pnr" value="{RL1A}">
		<input type="submit" value="Procesar" class="input-button" name="agregar_all">
	</form>


	<form method="post" style="border-top: solid 1px #dddddd; padding: 3px;" action="/cgi-bin/asociados/edit_pnr.cgi?pnr={PNR}">
		<br>Agregar comentario (remark)<br>
		<input type="text" name="remark" class="input-text-gris">
		<input type="hidden" name="accion" value="execute_all">
		<input type="hidden" name="sid" value="{SESSION}">
		<input type="hidden" name="pnr" value="{RL1A}">
		<input type="submit" value="Procesar" class="input-button" name="agregar_all">
	</form>


	<form method="post" style="border-top: solid 1px #dddddd; padding: 3px;" action="/cgi-bin/asociados/edit_pnr.cgi?pnr={PNR}">
		<br>Agregar tour code<br>
		<input type="text" name="tour_code" class="input-text-gris">
		<input type="hidden" name="accion" value="execute_all">
		<input type="hidden" name="sid" value="{SESSION}">
		<input type="hidden" name="pnr" value="{RL1A}">
		<input type="submit" value="Procesar" class="input-button" name="agregar_all">
	</form>
</p>

<p>
	<form method="post" style="border-top: solid 1px #dddddd; padding: 3px;" action="/cgi-bin/asociados/edit_pnr.cgi?pnr={PNR}">
		Cancelar reserva<br>
		<input type="hidden" name="accion" value="xi">
		<input type="hidden" name="sid" value="{SESSION}">
		<input type="hidden" name="pnr" value="{RL1A}">
		<input type="button" value="Cancelar" onclick='cancelar_reserva(this.form)' class="input-button" name="ejecutar">
	</form>
</p>

<p>
        <form method="post" style="border-top: solid 1px #dddddd; padding: 3px;" action="/cgi-bin/compra/paso1r.cgi?pnr={PNR}">
                Emitir<br>
                <input type="hidden" name="accion" value="xi">
                <input type="hidden" name="sid" value="{SESSION}">
                <input type="hidden" name="pnr" value="{RL1A}">
                <input type="submit" value="Emitir"  class="input-button" name="emitir">
        </form>
</p>

