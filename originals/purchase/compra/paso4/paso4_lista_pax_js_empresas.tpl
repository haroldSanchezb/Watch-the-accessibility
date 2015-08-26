<script type='text/javascript'>
function completa(f, id_pax, type_pax)
	{
	var reg = /^\(?(\d+)-(\d+)\)?\D(\d+)$/;
	var titulo = ["0",{TITULO}];
	var nombre = ["",{NOMBRE}];
	var apellido = ["",{APELLIDO}];
	var foid = ["",{FOID}];
	var foid_type = ["",{FOID_TYPE}];
	var foid_pais = ["",{FOID_PAIS}];
	var ff_num = ["",{FF_NUM}];
	var ff_airline = ["",{FF_AIRLINE}];
	var email = ["",{EMAIL}];
	var home_phone_nbr = ["",{HOME_PHONE_NBR}];
	var work_phone_nbr = ["",{WORK_PHONE_NBR}];
	var cell_phone_nbr = ["",{CELL_PHONE_NBR}];
	var pax_type = ["",{PAX_TYPE}];
	var add = [{ADD_ADMIN}{ADD}];
	var centrocosto = ["",{CENTRO_COSTO}];

	if ( !f )
		{
		return;
		}

	eval("\
		f.pax_"+type_pax+"_"+id_pax+"_add.checked = (add[f.pax_"+type_pax+"_"+id_pax+".value]);\
		if (! add[f.pax_"+type_pax+"_"+id_pax+".value] && type_pax == 'ADT')\
			{\
			f.pax_"+type_pax+"_"+id_pax+"_add.disabled = 1;\
			f.pax_"+type_pax+"_"+id_pax+"_nombre.disabled = 1;\
			f.pax_"+type_pax+"_"+id_pax+"_titulo.disabled = 1;\
			f.pax_"+type_pax+"_"+id_pax+"_primer_apellido.disabled = 1;\
			f.pax_"+type_pax+"_"+id_pax+"_foid_numero.disabled = 1;\
			f.pax_"+type_pax+"_"+id_pax+"_foid_tipo.disabled = 1;\
			if (type_pax == 'ADT')\
				{\
				f.pax_"+type_pax+"_"+id_pax+"_ff_airline.disabled = 1;\
				f.pax_"+type_pax+"_"+id_pax+"_ff_number.disabled = 1;\
				}\
			}\
		else\
			{\
			f.pax_"+type_pax+"_"+id_pax+"_add.disabled = 0;\
			f.pax_"+type_pax+"_"+id_pax+"_nombre.disabled = 0;\
			f.pax_"+type_pax+"_"+id_pax+"_titulo.disabled = 0;\
			f.pax_"+type_pax+"_"+id_pax+"_primer_apellido.disabled = 0;\
			f.pax_"+type_pax+"_"+id_pax+"_foid_numero.disabled = 0;\
			f.pax_"+type_pax+"_"+id_pax+"_foid_tipo.disabled = 0;\
			if (type_pax == 'ADT')\
				{\
				f.pax_"+type_pax+"_"+id_pax+"_ff_airline.disabled = 0;\
				f.pax_"+type_pax+"_"+id_pax+"_ff_number.disabled = 0;\
				}\
			}\
		f.pax_"+type_pax+"_"+id_pax+"_titulo.value = (titulo[f.pax_"+type_pax+"_"+id_pax+".value]);\
		f.pax_"+type_pax+"_"+id_pax+"_nombre.value = (nombre[f.pax_"+type_pax+"_"+id_pax+".value]);\
		f.pax_"+type_pax+"_"+id_pax+"_primer_apellido.value = (apellido[f.pax_"+type_pax+"_"+id_pax+".value]);\
		txt2sabre_txt(f.pax_"+type_pax+"_"+id_pax+"_nombre);\
		txt2sabre_txt(f.pax_"+type_pax+"_"+id_pax+"_primer_apellido);\
		f.pax_"+type_pax+"_"+id_pax+"_foid_tipo.value = (foid_type[f.pax_"+type_pax+"_"+id_pax+".value]);\
		f.pax_"+type_pax+"_"+id_pax+"_foid_numero.value = (foid[f.pax_"+type_pax+"_"+id_pax+".value]);\
		f.pax_"+type_pax+"_"+id_pax+"_foid_pais.value = (foid_pais[f.pax_"+type_pax+"_"+id_pax+".value]);\
		if(f.pax_"+type_pax+"_"+id_pax+"_foid_pais.onchange){\
			f.pax_"+type_pax+"_"+id_pax+"_foid_pais.onchange();\
		}\
		if (type_pax == 'ADT')\
			{\
			f.pax_"+type_pax+"_"+id_pax+"_ff_airline.value = (ff_airline[f.pax_"+type_pax+"_"+id_pax+".value]);\
			f.pax_"+type_pax+"_"+id_pax+"_ff_number.value = (ff_num[f.pax_"+type_pax+"_"+id_pax+".value]);\
			f.email.value = (email[f.pax_"+type_pax+"_"+id_pax+".value]);\
			if (reg.test(home_phone_nbr[f.pax_"+type_pax+"_"+id_pax+".value]))\
				{\
				resp = reg.exec(home_phone_nbr[f.pax_"+type_pax+"_"+id_pax+".value]);\
				f.telefono_casa_codigo_pais.value = resp[1];\
				f.telefono_casa_codigo_ciudad.value = resp[2];\
				f.telefono_casa_numero.value = resp[3];\
				}\
			else\
				{\
				f.telefono_casa_codigo_pais.value = '';\
				f.telefono_casa_codigo_ciudad.value = '';\
				f.telefono_casa_numero.value = '';\
				}\
			if (reg.test(work_phone_nbr[f.pax_"+type_pax+"_"+id_pax+".value]))\
				{\
				resp = reg.exec(work_phone_nbr[f.pax_"+type_pax+"_"+id_pax+".value]);\
				f.telefono_oficina_codigo_pais.value = resp[1];\
				f.telefono_oficina_codigo_ciudad.value = resp[2];\
				f.telefono_oficina_numero.value = resp[3];\
				}\
			else\
				{\
				f.telefono_oficina_codigo_pais.value = '';\
				f.telefono_oficina_codigo_ciudad.value = '';\
				f.telefono_oficina_numero.value = '';\
				}\
			if (reg.test(cell_phone_nbr[f.pax_"+type_pax+"_"+id_pax+".value]))\
				{\
				resp = reg.exec(cell_phone_nbr[f.pax_"+type_pax+"_"+id_pax+".value]);\
				f.telefono_celular_codigo_pais.value = resp[1];\
				f.telefono_celular_codigo_ciudad.value = resp[2];\
				f.telefono_celular_codigo_ciudad_aux.value = resp[2];\
				f.telefono_celular_numero.value = resp[3];\
				}\
			else\
				{\
				f.telefono_celular_codigo_pais.value = '';\
				f.telefono_celular_codigo_ciudad.value = '';\
				f.telefono_celular_codigo_ciudad_aux.value = '';\
				f.telefono_celular_numero.value = '';\
				}\
			}\
		");
	cargar_pax_notificables(f, id_pax);
	}

</script>
