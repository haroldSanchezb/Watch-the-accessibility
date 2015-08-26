<script type='text/javascript'>
function update_field_value(form_element, new_value, changefunction) {
		if ( typeof(form_element) != 'undefined' ) {
			form_element.value = new_value;
		}
		if(changefunction === '1'){
			form_element.onchange();
		}
}

function completa(f, id_pax, type_pax)
	{
	var reg = /^\(?(\d+)-(\d+)[)-]\s?(\d+)$/;
	var titulo = ["0",{TITULO}];
	var nombre = ["",{NOMBRE}];
	var apellido = ["",{APELLIDO}];
	var foid = ["",{FOID}];
	var foid_type = ["",{FOID_TYPE}];
	var foid_pais = ["",{FOID_PAIS}];
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
		update_field_value(f.pax_"+type_pax+"_"+id_pax+"_titulo, (titulo[f.pax_"+type_pax+"_"+id_pax+".value]));\
		update_field_value(f.pax_"+type_pax+"_"+id_pax+"_nombre, (nombre[f.pax_"+type_pax+"_"+id_pax+".value]));\
		update_field_value(f.pax_"+type_pax+"_"+id_pax+"_primer_apellido, (apellido[f.pax_"+type_pax+"_"+id_pax+".value]));\
		update_field_value(f.pax_"+type_pax+"_"+id_pax+"_foid_tipo, (foid_type[f.pax_"+type_pax+"_"+id_pax+".value]));\
		txt2sabre_txt(f.pax_"+type_pax+"_"+id_pax+"_nombre);\
		txt2sabre_txt(f.pax_"+type_pax+"_"+id_pax+"_primer_apellido);\
		update_field_value(f.pax_"+type_pax+"_"+id_pax+"_foid_numero, (foid[f.pax_"+type_pax+"_"+id_pax+".value]));\
		update_field_value(f.pax_"+type_pax+"_"+id_pax+"_foid_pais, (foid_pais[f.pax_"+type_pax+"_"+id_pax+".value]), '1');\
		update_field_value(f.pax_"+type_pax+"_"+id_pax+"_tsa_fecha_nacimiento_dia, (tsa_fecha_nacimiento_dia[f.pax_"+type_pax+"_"+id_pax+".value]));\
		update_field_value(f.pax_"+type_pax+"_"+id_pax+"_tsa_fecha_nacimiento_mes, (tsa_fecha_nacimiento_mes[f.pax_"+type_pax+"_"+id_pax+".value]));\
		update_field_value(f.pax_"+type_pax+"_"+id_pax+"_tsa_fecha_nacimiento_ano, (tsa_fecha_nacimiento_ano[f.pax_"+type_pax+"_"+id_pax+".value]));\
		update_field_value(f.pax_"+type_pax+"_"+id_pax+"_tsa_genero, (tsa_genero[f.pax_"+type_pax+"_"+id_pax+".value]));\
		if (type_pax == 'ADT')\
			{\
			update_field_value(f.pax_"+type_pax+"_"+id_pax+"_ff_airline, (ff_airline[f.pax_"+type_pax+"_"+id_pax+".value]));\
			update_field_value(f.pax_"+type_pax+"_"+id_pax+"_ff_number, (ff_num[f.pax_"+type_pax+"_"+id_pax+".value]));\
			update_field_value(f.email, (email[f.pax_"+type_pax+"_"+id_pax+".value]));\
			update_field_value(f.pax_"+type_pax+"_"+id_pax+"_tsa_fecha_nacimiento_dia, (tsa_fecha_nacimiento_dia[f.pax_"+type_pax+"_"+id_pax+".value]));\
			update_field_value(f.pax_"+type_pax+"_"+id_pax+"_tsa_fecha_nacimiento_mes, (tsa_fecha_nacimiento_mes[f.pax_"+type_pax+"_"+id_pax+".value]));\
			update_field_value(f.pax_"+type_pax+"_"+id_pax+"_tsa_fecha_nacimiento_ano, (tsa_fecha_nacimiento_ano[f.pax_"+type_pax+"_"+id_pax+".value]));\
			update_field_value(f.pax_"+type_pax+"_"+id_pax+"_tsa_genero, (tsa_genero[f.pax_"+type_pax+"_"+id_pax+".value]));\
			if (reg.test(home_phone_nbr[f.pax_"+type_pax+"_"+id_pax+".value]))\
				{\
				resp = reg.exec(home_phone_nbr[f.pax_"+type_pax+"_"+id_pax+".value]);\
					update_field_value(f.telefono_casa_codigo_pais,   resp[1]);\
					update_field_value(f.telefono_casa_codigo_ciudad, resp[2]);\
					update_field_value(f.telefono_casa_numero,        resp[3]);\
				}\
			else\
				{\
					update_field_value(f.telefono_casa_codigo_pais,   '');\
					update_field_value(f.telefono_casa_codigo_ciudad, '');\
					update_field_value(f.telefono_casa_numero,        '');\
				}\
			if (reg.test(work_phone_nbr[f.pax_"+type_pax+"_"+id_pax+".value]))\
				{\
				resp = reg.exec(work_phone_nbr[f.pax_"+type_pax+"_"+id_pax+".value]);\
					update_field_value(f.telefono_oficina_codigo_pais,   resp[1]);\
					update_field_value(f.telefono_oficina_codigo_ciudad, resp[2]);\
					update_field_value(f.telefono_oficina_numero,        resp[3]);\
				}\
			else\
				{\
					update_field_value(f.telefono_oficina_codigo_pais,   '');\
					update_field_value(f.telefono_oficina_codigo_ciudad, '');\
					update_field_value(f.telefono_oficina_numero,        '');\
				}\
			if (reg.test(cell_phone_nbr[f.pax_"+type_pax+"_"+id_pax+".value]))\
				{\
				resp = reg.exec(cell_phone_nbr[f.pax_"+type_pax+"_"+id_pax+".value]);\
					update_field_value(f.telefono_celular_codigo_pais,       resp[1]);\
					update_field_value(f.telefono_celular_codigo_ciudad,     resp[2]);\
					update_field_value(f.telefono_celular_codigo_ciudad_aux, resp[2]);\
					update_field_value(f.telefono_celular_numero,            resp[3]);\
				}\
			else\
				{\
					update_field_value(f.telefono_celular_codigo_pais,       '');\
					update_field_value(f.telefono_celular_codigo_ciudad,     '');\
					update_field_value(f.telefono_celular_codigo_ciudad_aux, '');\
					update_field_value(f.telefono_celular_numero,            '');\
				}\
			}\
		");
	cargar_pax_notificables(f, id_pax);
	}
</script>
