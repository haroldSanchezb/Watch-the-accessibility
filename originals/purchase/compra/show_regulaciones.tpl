<html>
	<head>
		<link href="/css/base.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div id=contenido-proceso>
		
			<lan:widget class="Widgets::Booking_Engine::Show_Regulaciones">
				<lan:value>{SESSION_ID}</lan:value>
				<lan:value>{CONTEXT_ID}</lan:value>
			</lan:widget>
			
			<div id=barra-continuar>
				<input type=submit class=boton name="Submit" onClick="javascript:window.close();" value="{_LABEL_CERRAR_VENTANA}">
			</div>
		</div>
		{+DEBUG}
	</body>
</html>	
