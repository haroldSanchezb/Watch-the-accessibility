function compare_fb(val1, val2)
	{
	fb1 = val1.split("|");
	fb2 = val2.split("|");
	if (fb1[1] != fb2[1])
		{
		return(0);
		}
	else
		{
		return(1);
		}
	}

function set_values(segmento, datos, f)
	{
	vals = datos.split("|");
	fb = vals[1];
	vuelo = vals[2];
	clase = fb.charAt(0);
	eval("f.vuelo_segmento" + segmento + ".value = vuelo");
	eval("f.clase_segmento" + segmento + ".value = clase");
	eval("f.fb_segmento"+segmento+".value = fb");
	}

function check_clase_click(f)
	{
	var aux_var, clase_combina_con, clase;
	ok3 = 1;
	radio_value = '';
	all_checked = 1;
	N = {N};

	if (!N)
		{
		return(false);
		}

	for (i = 1; i <= N+1; i++)
		{
		radio_current = '';
		var aux_var = eval("f.SEG" + i);

    if (! aux_var.length)
      {
		  if (aux_var.checked)
			  {
        j = 0;
			  if (! radio_value)
				  {
				  radio_value = aux_var.value;
				  radio_current = aux_var.value;
				  clase_combina_con = eval("f.seg_" + i + "_" + j + "_combina_con.value");
				  }
			  else
				  {
				  radio_current = aux_var.value;
				  clase = eval("f.seg_" + i + "_" + j + "_clase.value");
				  if (clase_combina_con.indexOf(clase) < 0)
					  {
					  ok3 = 0;
					  aux_var.checked = false;
					  }
				  }
			  }
      }
    else
      {
		  for (j = 0; j < aux_var.length; j++)
			  {
			  if (aux_var[j].checked)
				  {
				  if (! radio_value)
					  {
					  radio_value = aux_var[j].value;
					  radio_current = aux_var[j].value;
					  clase_combina_con = eval("f.seg_" + i + "_" + j + "_combina_con.value");
					  }
				  else
					  {
					  radio_current = aux_var[j].value;
					  clase = eval("f.seg_" + i + "_" + j + "_clase.value");
					  if (clase_combina_con.indexOf(clase) < 0)
						  {
						  ok3 = 0;
						  aux_var[j].checked = false;
						  }
					  }
				  }
			  }
      }

		if (! radio_current)
			{
			all_checked = 0;
			}
		}

	if (all_checked && ! ok3)
		{
		alert("{_ERROR_VUELOS_OTRA_TARIFA}");
		return(false);
		}
	return true;
	}

function check_horarios(f)
	{
	var aux_var;
	var N = {N};

	if (!N)
		{
		return(1);
		}

	var status = 1;
	var h_salida = '';
	var h_llegada = '';

	for (i = 1; i <= N+1; i++)
		{
		var horas = '';
		var aux_var = eval("f.SEG" + i);

		for (j = 0; j < aux_var.length; j++)
			{
			if (aux_var[j].checked)
				{
				horas = aux_var[j].value;
				}
			}

		var vals = horas.split("|");

		if (i > 1)
			{
			h_salida = vals[3];
			var delta = h_salida - h_llegada;
			//alert('Delta: '+delta);
			if (delta < 3600)
				{
				status = 0;
				}
			h_llegada = vals[4];
			}
		else
			{
			h_llegada = vals[4];
			}
		}

	return(status);
	}

function check_clase(f)
	{
	var aux_var, clase_combina_con, clase;
	N = {N};
	ok = 0;
	radio_value = '';
	err_msg = '';
	clase_combina_con = '';
	clase = '';

	for (i = 0; i < f.SEG1.length; i++)
		{
		if (f.SEG1[i].checked)
			{
			clase = eval("f.seg_1_" + i + "_clase.value");
			clase_combina_con = eval("f.seg_1_" + i + "_combina_con.value");
			radio_value = f.SEG1[i].value;
			set_values(1, radio_value, f);
			}
		}

	if (!radio_value && !f.SEG1.length)
		{
    clase = f.seg_1_0_clase.value;
    clase_combina_con = f.seg_1_0_combina_con.value;
		radio_value = f.SEG1.value;
		set_values(1, radio_value, f);
		}

	if (! N)
		{
		if (radio_value)
			{
			ok = 1;
			}
		else
			{
			err_msg = "{_ERROR_SIN_VUELOS}";
			}
		}
	else
		{
		if (radio_value)
			{
			ok2 = 1;
			radio_current = '';
			for (i = 2; i <= N+1; i++)
				{
				aux_var = eval("f.SEG"+i);
				for (j = 0; j < aux_var.length; j++)
					{
					if (aux_var[j].checked)
						{
						clase = eval("f.seg_" + i + "_" + j + "_clase.value");
						radio_current = aux_var[j].value;
						set_values(i, radio_current, f);
						}
					}
				if (!radio_current && !aux_var.length)
					{
					if (aux_var.checked)
						{
						radio_current = aux_var.value;
						set_values(i, radio_current, f);
						}
					}
				if (clase_combina_con.indexOf(clase) < 0)
					{
					ok2 = 0;
					}
				}
			if (ok2)
				{
				ok = 1;
				}
			else
				{
				err_msg = "{_ERROR_VUELOS_OTRA_TARIFA}";
				}

			}
		else
			{
			err_msg = "{_ERROR_SIN_VUELOS}";
			}
		}

	var mystatus = check_horarios(f);
	if (ok && mystatus == 0)
		{
		ok = 0;
		err_msg += '{_ERROR_TIEMPO_CONEXION_JS}\n';
		}

	if (ok)
		{
		f.action = 'paso3.cgi';
		f.submit();
		}
	else
		{
		alert(err_msg);
		}
	}

var lastSelObj = new Array({MAX_N_SEGM});

function selectFlight(name,index,tdObj)
	{
	var r = eval('document.paso2.' + name);
	if (!r.length)
		{
		r.checked = true;
		}
	else
		{
		r[index].checked = true;
		}

	var i = parseInt(name.substr(3,2)) - 1;
	if (lastSelObj[i])
		{
		if (lastSelObj[i].parentNode.className == 'par')
			{
			lastSelObj[i].bgColor = '#F0F0F0';
			}
		else
			{
			lastSelObj[i].bgColor = '#ffffff';
			}
		}
	lastSelObj[i] = tdObj;
	tdObj.bgColor='#DCE0EE';
	if (!check_clase_click(document.paso2))
		{
		if (lastSelObj[1].parentNode.className == 'par')
			{
			lastSelObj[1].bgColor = '#F0F0F0';
			}
		else
			{
			lastSelObj[1].bgColor = '#ffffff';
			}
		lastSelObj[1] = null;
		}
	}

function swMouseOut(name,tdObj)
	{
	var i = parseInt(name.substr(3,2)) - 1;
	if (lastSelObj[i] && (lastSelObj[i] == tdObj))
		{
		tdObj.bgColor='#DCE0EE';
		}
	else
		{
		tdObj.bgColor='#ffffff';
		}
	}

function MM_openBrWindow(theURL, winName, features)
	{
	features = "menubar=no,resizable=yes,status=no,titlebar=no" + features;
	window.open(theURL,winName,features);
	}
