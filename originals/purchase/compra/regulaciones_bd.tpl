<html>
	<head>
		<link href="/css/base.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div id=contenido-proceso>
			<h1>{_LABEL_REGULACIONES}</h1>
			<h2>{_PALABRA_TARIFA} {FAREBASIS} {_PALABRA_DESDE} {ORIGEN} {_PALABRA_HASTA} {DESTINO} {_FRASE_PARA_VIAJAR_EL} {FECHAVUELO}</h2>
			<h4>{_LABEL_APLICABILIDAD}</h4>
			<ul class=table>
				<li>{_LABEL_ANTICIPACION_MINIMA_COMPRA}: {AP}</li>
				<li>{_LABEL_ESTADIA_MINIMA}: {ESTADIAMIN}</li>
				<li>{_LABEL_ESTADIA_MAXIMA}: {ESTADIAMAX}</li>
			</ul>
			<h4>{_LABEL_CAMBIOS_DE_FECHA_RUTA}</h4>
			<table class=table cellpadding=0 cellspacing=0 width="100%">
				<col width="50%">
				<col width="50%">
				<tr>
					<th>
						{_LABEL_REGULACIONES_BEFORE}
					</th>
					<th>
						{_LABEL_REGULACIONES_AFTER}
					</th>
				</tr>
				<tr>
					<td>
						{FECHA}
						{FECHAMISMODIA}
					</td>
					<td>
						{FECHA_AFTER}
					</td>
				</tr>
			</table>
			<h4>{_LABEL_DEVOLUCIONES}</h4>
			<table class=table cellpadding=0 cellspacing=0 width="100%">
				<col width="50%">
				<col width="50%">
				<th>
					{_LABEL_REGULACIONES_BEFORE}
				</th>
				<th>
					{_LABEL_REGULACIONES_AFTER}
				</th>
				</tr>
				<tr>
					<td>
						{DEVOLUCIONES}
					</td>
					<td>
						{DEVOLUCIONES_AFTER}
					</td>
				</tr>
			</table>
			<h4>{_LABEL_DESCUENTO_SEGUN_PAX}</h4>
			<ul class=table>
						<li>{INF}</li>
						<li>{CHD}</li>
			</ul>
			<h4>{_LABEL_OTRAS_REGULACIONES}</h4>
			<ul class=table>
						<li>{VALIDEZ}</li>
						<li>{ACUMULA_LANPASS}</li>
						<li>{UPG_LANPASS}</li>
						<li>{RESERVA_ASIENTO}</li>
						<li>{PRECHEQUEO}</li>
			</ul>
			<div id=barra-continuar>
				<input type=submit class=boton name="Submit" onClick="javascript:window.close();" value="{_LABEL_CERRAR_VENTANA}">
			</div>
		</div>
	</body>
</html>	
