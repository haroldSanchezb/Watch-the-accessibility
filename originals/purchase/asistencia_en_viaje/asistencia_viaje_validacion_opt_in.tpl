	if (!$('asistencia_en_viaje').checked)
		{
		if (!confirm('{_MSG_ASISTENCIA_FORCED_JS}'))
			{
			return false; 
			}
		}

