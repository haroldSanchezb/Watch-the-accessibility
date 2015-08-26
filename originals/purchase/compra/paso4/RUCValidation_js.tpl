			input = eval("f.elements['" + tipo_pax + "PaxNo." + i + "RUC']");
			menu  = eval("f.elements['pax_" + tipo_pax + "_" + i + "_documento_tributario_tipo']");
			change_bg_for_id(tipo_pax + "PaxNo." + i + "RUCCell", "ok");

			if (input && menu){
				var checked = input.value.match(new RegExp("^[0-9]{11}$"));
				if (menu.value == 'RUC' && !checked && input.value.length > 0){
					change_bg_for_id(tipo_pax + "PaxNo." + i + "RUCCell", "");
					errores += "{_MSG_BUSQUEDA_RUC_INVALIDO_JS} " + tipo_pax_txt + " " + i + "\n";
				}
			}