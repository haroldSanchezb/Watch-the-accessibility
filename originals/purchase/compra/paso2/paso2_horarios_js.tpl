//JS de horarios

function check_horarios(f)
	{
	var N = '{NUM_SEGMENTOS}';
	var status = 1;
	var h_llegada = '';
	var h_salida = '';

	if (!N)
		{
		N = 0;
		}

	if (N > 1)
		{
		for (i = 1; i <= N; i++)
			{
			var horas = '';
			eval("\
			if (!f.vuelo_segmento"+i+".length)\
				{\
				horas = f.HORARIO_SEG"+i+"_VUE0.value;\
				}\
			else\
				{\
				for (j = 0; j < f.vuelo_segmento"+i+".length; j++)\
					{\
					eval('\ \
					if (f.vuelo_segmento'+"+i+"+'['+j+'].checked)\ \
						{\ \
						horas = f.HORARIO_SEG'+"+i+"+'_VUE'+j+'.value;\ \
						}\ \
					'); \
					}\
				}\
			");
			var vals = horas.split("|");
			if (i > 1)
				{
				h_salida = vals[0];
				var delta = h_salida - h_llegada;
				if (delta < 3600)
					{
					status = 0;
					}
				h_llegada = vals[1];
				}
			else
				{
				h_llegada = vals[1];
				}
			}
		}
	return(status);
	}
