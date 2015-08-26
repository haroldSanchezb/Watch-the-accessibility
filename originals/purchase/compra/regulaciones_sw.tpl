<form name="form1" method="post" action="">
	<table width="100%" cellspacing="0" cellpadding="0">
		<tr><td class=titulo colspan=2>{_LABEL_REGULACIONES}<td></tr>
		<tr>
			<th>
				{_PALABRA_TARIFA} {FAREBASIS} {_PALABRA_DESDE} {ORIGEN} {_PALABRA_HASTA} {DESTINO} {_FRASE_PARA_VIAJAR_EL} {FECHAVUELO} </td>
			</th>
		<tr><td class=sub-titulo colspan=2>{_LABEL_APLICABILIDAD}</td></tr>
		<tr> 
			<td>
				<ul class=list>
					<li>{_LABEL_ANTICIPACION_MINIMA_COMPRA}: {AP}</li>
					<li>{_LABEL_ANTICIPACION_MAXIMA_COMPRA}: {APMAX}</li>
					<li>{_LABEL_ESTADIA_MINIMA}: {ESTADIAMIN}</li>
					<li>{_LABEL_ESTADIA_MAXIMA}: {ESTADIAMAX}</li>
				</ul>
			</td>
		</tr>
		<tr><td class=sub-titulo colspan=2>{_LABEL_CAMBIOS_DE_FECHA_RUTA}</td></tr>
		<tr> 
			<td>
				<ul class=list>
					<li>{FECHA}</li>
					<li>{FECHAMISMODIA}</li>
				</ul>
			</td>
		</tr>
		<tr><td class=sub-titulo colspan=2>{_LABEL_DEVOLUCIONES}</td></tr>
		<tr>
			<td>
				<ul class=list>
					<li>{DEVOLUCIONES}</li>
				</ul>
			</td>
		</tr>
		<tr><td class=sub-titulo colspan=2>{_LABEL_OTRAS_REGULACIONES}</td></tr>
		<tr>
			<td>
				<ul class=list>
					<li>{VALIDEZ}</li>
					<li>{ACUMULA_LANPASS}</li>
					<li>{UPG_LANPASS}</li>
					<li>{RESERVA_ASIENTO}</li>
					<li>{PRECHEQUEO}</li>
				</ul>
			</td>
		</tr>
	</table>
	<br>
	<div class=middle>			
		<input type=submit class=boton-secundario name="Submit" onClick="javascript:window.close();" value="{_LABEL_CERRAR_VENTANA}">
	</div>
</form>
