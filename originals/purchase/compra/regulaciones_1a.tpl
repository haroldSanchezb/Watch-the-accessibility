<html>
	<head>
		<link href="/css/base.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div id=contenido-proceso>
			<h1>{_LABEL_REGULACIONES}</h1>
			<h2>{_PALABRA_TARIFA} {FAREBASIS} {_PALABRA_DESDE} {ORIGEN} {_PALABRA_HASTA} {DESTINO} {_FRASE_PARA_VIAJAR_EL} {FECHAVUELO}</h2>
			<form name="form1" method="post" action="">
				<table class=table cellspacing="0" cellpadding="0" width='100%'>
					<tr>
						<th>
							{_PARRAFO_REGULACIONES_1}
							{_PARRAFO_REGULACIONES_2}
							<br>
							{_PARRAFO_REGULACIONES_3}
							<br>
						</th>
					</tr>
					{DETALLE}
				</table>
				<div id=barra-continuar>
					<input type=submit class=boton name="Submit" onClick="javascript:window.close();" value="{_LABEL_CERRAR_VENTANA}">
				</div>
			</form>
		</div>
	</body>
</html>
