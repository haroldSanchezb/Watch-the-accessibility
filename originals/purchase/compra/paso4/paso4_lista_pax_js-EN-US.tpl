<script type='text/javascript'>
function completa(f, id_pax, type_pax)
	{
	var reg = /^\(?(\d+)-(\d+)[)-]\s?(\d+)$/;
	var titulo = ["0",{TITULO}];
	var nombre = ["",{NOMBRE}];
	var apellido = ["",{APELLIDO}];
	var ff_num = ["",{FF_NUM}];
	var ff_airline = ["",{FF_AIRLINE}];
	var email = ["",{EMAIL}];
	var tsa_fecha_nacimiento_ano = ["",{TSA_FECHA_NAC_ANO}];
	var tsa_fecha_nacimiento_mes = ["",{TSA_FECHA_NAC_MES}];
	var tsa_fecha_nacimiento_dia = ["",{TSA_FECHA_NAC_DIA}];
	var tsa_genero = ["",{TSA_GENERO}];
	var home_phone_nbr = ["",{HOME_PHONE_NBR}];
	var work_phone_nbr = ["",{WORK_PHONE_NBR}];
	var cell_phone_nbr = ["",{CELL_PHONE_NBR}];
	var pax_type = ["",{PAX_TYPE}];
	var add = ["1",{ADD}];
	eval("\
		f.pax_"+type_pax+"_"+id_pax+"_add.checked = (add[f.pax_"+type_pax+"_"+id_pax+".value]);\
		if (! add[f.pax_"+type_pax+"_"+id_pax+".value])\
			{\
			f.pax_"+type_pax+"_"+id_pax+"_add.disabled = 1;\
			}\
		else\
			{\
			f.pax_"+type_pax+"_"+id_pax+"_add.disabled = 0;\
			f.pax_"+type_pax+"_"+id_pax+"_add.checked = 0;\
			}\
		f.pax_"+type_pax+"_"+id_pax+"_titulo.value = (titulo[f.pax_"+type_pax+"_"+id_pax+".value]);\
		f.pax_"+type_pax+"_"+id_pax+"_nombre.value = (nombre[f.pax_"+type_pax+"_"+id_pax+".value]);\
		f.pax_"+type_pax+"_"+id_pax+"_primer_apellido.value = (apellido[f.pax_"+type_pax+"_"+id_pax+".value]);\
		txt2sabre_txt(f.pax_"+type_pax+"_"+id_pax+"_nombre);\
		txt2sabre_txt(f.pax_"+type_pax+"_"+id_pax+"_primer_apellido);\
		f.pax_"+type_pax+"_"+id_pax+"_tsa_fecha_nacimiento_dia.value = (tsa_fecha_nacimiento_dia[f.pax_"+type_pax+"_"+id_pax+".value]);\
		f.pax_"+type_pax+"_"+id_pax+"_tsa_fecha_nacimiento_mes.value = (tsa_fecha_nacimiento_mes[f.pax_"+type_pax+"_"+id_pax+".value]);\
		f.pax_"+type_pax+"_"+id_pax+"_tsa_fecha_nacimiento_ano.value = (tsa_fecha_nacimiento_ano[f.pax_"+type_pax+"_"+id_pax+".value]);\
		f.pax_"+type_pax+"_"+id_pax+"_tsa_genero.value = (tsa_genero[f.pax_"+type_pax+"_"+id_pax+".value]);\
		if (type_pax == 'ADT')\
			{\
			f.pax_"+type_pax+"_"+id_pax+"_ff_airline.value = (ff_airline[f.pax_"+type_pax+"_"+id_pax+".value]);\
			f.pax_"+type_pax+"_"+id_pax+"_ff_number.value = (ff_num[f.pax_"+type_pax+"_"+id_pax+".value]);\
			f.email.value = (email[f.pax_"+type_pax+"_"+id_pax+".value]);\
			f.pax_"+type_pax+"_"+id_pax+"_tsa_fecha_nacimiento_dia.value = (tsa_fecha_nacimiento_dia[f.pax_"+type_pax+"_"+id_pax+".value]);\
			f.pax_"+type_pax+"_"+id_pax+"_tsa_fecha_nacimiento_mes.value = (tsa_fecha_nacimiento_mes[f.pax_"+type_pax+"_"+id_pax+".value]);\
			f.pax_"+type_pax+"_"+id_pax+"_tsa_fecha_nacimiento_ano.value = (tsa_fecha_nacimiento_ano[f.pax_"+type_pax+"_"+id_pax+".value]);\
			f.pax_"+type_pax+"_"+id_pax+"_tsa_genero.value = (tsa_genero[f.pax_"+type_pax+"_"+id_pax+".value]);\
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
