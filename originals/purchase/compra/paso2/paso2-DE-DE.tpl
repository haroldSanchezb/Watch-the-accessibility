<script type="text/javascript">

//////////////////////////////////////////////////////////////////////////////
// Used to maintain selected ratio button
var selected_ratio = new Array({MAX_N_SEGM});
for (var ii=0; ii < {MAX_N_SEGM}; ii++)
	{
	selected_ratio[ii] = new Object();
	selected_ratio[ii].sel = -1;
	selected_ratio[ii].objs = new Array({MAX_N_RATIOS});
	}

//////////////////////////////////////////////////////////////////////////////
// Used to protect links on TDs
var prot_ratios = new Array({MAX_N_SEGM});
for (var ii=0; ii < {MAX_N_SEGM}; ii++)
	{
	prot_ratios[ii] = new Array({MAX_N_RATIOS});
	for (var jj=0; jj < {MAX_N_RATIOS}; jj++)
		{
		prot_ratios[ii][jj] = 0;
 		}
	}

function set_ratio(r, n, v)
	{
	if (!r.length)
		{
		if (!prot_ratios[n][0] && (!r.disabled) )
			{
			r.checked = true;
			selected_ratio[n].sel = 0;
			//clickSetColor(n,0);
			}
		}
	else
		{
		if (!prot_ratios[n][v] && (!r[v].disabled) )
			{
			r[v].checked = true;
			selected_ratio[n].sel = v;
			//clickSetColor(n,v);
			}
		}
	}

function sched_set_ratio(n_segm, v)
	{
	var n = n_segm - 1;
	setTimeout('set_ratio(document.paso2.vuelo_segmento'+n_segm+','+n+','+v+')',100);
	}

function protect_ratio(n_segm, v)
	{
	var r = 'document.paso2.vuelo_segmento' + n_segm;
	var n = n_segm - 1;
	if (!r.length)
		{
		prot_ratios[n][0] = setTimeout('unprotect_ratio('+n_segm+', '+v+')', 200);
		}
	else
		{
		prot_ratios[n][v] = setTimeout('unprotect_ratio('+n_segm+', '+v+')', 200);
		}
	}

function unprotect_ratio(n_segm, v)
	{
	var r = 'document.paso2.vuelo_segmento' + n_segm;
	var n = n_segm - 1;
	if (!r.length)
		{
		clearTimeout(prot_ratios[n][0]);
		prot_ratios[n][0] = 0;
		}
	else
		{
		clearTimeout(prot_ratios[n][v]);
		prot_ratios[n][v] = 0;
		}
	}

function goto_paso3(f)
	{
	if (buttonDisabled(0))
		{
		return false;
		}
	var elem, i, errores;
	errores = '';
	for (i = 1; i <= {NUM_SEGMENTOS} +0; i++)
		{
		elem = eval("f.elements['vuelo_segmento" + i + "']");
		if (elem && getRadioValue(elem) == null)
			{
			errores += '{_ERROR_SEGMENTO_SIN_VUELO_SELECCIONADO_JS} ' + i + "\n";
			}
		}
	if (errores.length < 1 && !check_horarios(f))
		{
		errores += '{_ERROR_SEGMENTO_NO_TIME_TO_CONNECT_JS}\n';
		}
	if (errores.length > 0)
		{
		if (typeof ClickTaleRegisterFormSubmit == 'function') {
			ClickTaleRegisterFormSubmit(f); 
			ClickTaleTag("form_submit_fail");
		}
		alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
		reenableButton(0);
		return false;
		}
	f.action='paso3.cgi';
	if (typeof ClickTaleRegisterFormSubmit == 'function') {
		ClickTaleRegisterFormSubmit(f); 
		ClickTaleTag("form_submit_success");
	}
	f.submit();
	}
{SW_JS}
{HORARIOS_JS}
</script>

<form action='#' method='POST' name='paso2'>
  <input type='hidden' name='session_id' value='{SESSION_ID}'>
  <input type='hidden' name='tipo_paso2' value='{TIPO_PASO2}'>
  <input type='hidden' name='rand_check' value='{RAND_CHECK}'>
  {MENSAJE_OVERRIDE}
  <br>
  <br>
  
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>{SELECCION}</td>
  </tr>
  <tr>
  {*NOTA}
    <td class="par"><p>{_MSG_RESTRICCIONES_SOUTHWEST} <br>
					{TXT_NOTA} </p></td>
  {/NOTA}
  </tr>
 </table>
  <br>
  {LISTA_SEGMENTOS}
 <div id="msg_contingencia">{MENSAJES_CONTINGENCIA}</div> 
  <br>
  {BOTON_SUBMIT}
</form>


<script type='text/javascript'>
  hide_layer('espera');

function advierte_errores_validacion_posteriores(f)
	{
	var errores;

	errores = '';

	{INSTRUCCIONES_ERROR}
	
	if (errores.length > 0)
		{
		alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
		return false;
		}
	}

// To allow temporary deactivation of buttons
if (document.paso2.submitButton)
	{
	disabledButton[0] = new Array(1);
	disabledButton[0][0] = document.paso2.submitButton;
	}

advierte_errores_validacion_posteriores(document.paso2);
</script>