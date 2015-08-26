
	if ($('asistencia_viaje').checked)
		{
		var input = document.createElement('input');
		input.name = "asistencia_en_viaje";
		input.id = "asistencia_en_viaje" ;
		input.type = "hidden";
		input.value = 'Y';
		f.appendChild(input);
		}
	if ($('asistencia_viaje2').checked)
		{
		var input = document.createElement('input');
		input.name = "asistencia_en_viaje2";
		input.id = "asistencia_en_viaje2" ;
		input.type = "hidden";
		input.value = 'Y';
		f.appendChild(input);
		}

