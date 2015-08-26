<map name="MapCalendario">
    <area alt='' shape="rect" coords="1,2,13,18" href="javascript:selmes(-1)">
    <area alt='' shape="rect" coords="81,2,94,18" href="javascript:selmes(1)">
    <area alt='' shape="rect" coords="81,30,92,40" href="javascript:selday(7)">
    <area alt='' shape="rect" coords="29,41,40,51" href="javascript:selday(10)">
    <area alt='' shape="rect" coords="42,74,53,84" href="javascript:selday(32)">
    <area alt='' shape="rect" coords="55,41,66,51" href="javascript:selday(12)">
    <area alt='' shape="rect" coords="16,74,27,84" href="javascript:selday(30)">
    <area alt='' shape="rect" coords="42,30,53,40" href="javascript:selday(4)">
    <area alt='' shape="rect" coords="16,63,27,73" href="javascript:selday(23)">
    <area alt='' shape="rect" coords="68,63,79,73" href="javascript:selday(27)">
    <area alt='' shape="rect" coords="29,52,40,62" href="javascript:selday(17)">
    <area alt='' shape="rect" coords="16,85,27,95" href="javascript:selday(37)">
    <area alt='' shape="rect" coords="42,41,53,51" href="javascript:selday(11)">
    <area alt='' shape="rect" coords="3,41,14,51" href="javascript:selday(8)">
    <area alt='' shape="rect" coords="55,63,66,73" href="javascript:selday(26)">
    <area alt='' shape="rect" coords="42,52,53,62" href="javascript:selday(18)">
    <area alt='' shape="rect" coords="16,41,27,51" href="javascript:selday(9)">
    <area alt='' shape="rect" coords="29,85,40,95" href="javascript:selday(38)">
    <area alt='' shape="rect" coords="29,30,40,40" href="javascript:selday(3)">
    <area alt='' shape="rect" coords="3,85,14,95" href="javascript:selday(36)">
    <area alt='' shape="rect" coords="42,63,53,73" href="javascript:selday(25)">
    <area alt='' shape="rect" coords="81,41,92,51" href="javascript:selday(14)">
    <area alt='' shape="rect" coords="29,63,40,73" href="javascript:selday(24)">
    <area alt='' shape="rect" coords="3,52,14,62" href="javascript:selday(15)">
    <area alt='' shape="rect" coords="68,30,79,40" href="javascript:selday(6)">
    <area alt='' shape="rect" coords="3,30,14,40" href="javascript:selday(1)">
    <area alt='' shape="rect" coords="3,63,14,73" href="javascript:selday(22)">
    <area alt='' shape="rect" coords="55,52,66,62" href="javascript:selday(19)">
    <area alt='' shape="rect" coords="81,52,92,62" href="javascript:selday(21)">
    <area alt='' shape="rect" coords="55,74,66,84" href="javascript:selday(33)">
    <area alt='' shape="rect" coords="29,74,40,84" href="javascript:selday(31)">
    <area alt='' shape="rect" coords="81,63,92,73" href="javascript:selday(28)">
    <area alt='' shape="rect" coords="81,74,92,84" href="javascript:selday(35)">
    <area alt='' shape="rect" coords="16,52,27,62" href="javascript:selday(16)">
    <area alt='' shape="rect" coords="68,52,79,62" href="javascript:selday(20)">
    <area alt='' shape="rect" coords="3,74,14,84" href="javascript:selday(29)">
    <area alt='' shape="rect" coords="16,30,27,40" href="javascript:selday(2)">
    <area alt='' shape="rect" coords="68,41,79,51" href="javascript:selday(13)">
    <area alt='' shape="rect" coords="55,30,66,40" href="javascript:selday(5)">
    <area alt='' shape="rect" coords="68,74,79,84" href="javascript:selday(34)">
    <area alt='' shape="rect" coords="59,95,92,106" href="javascript:hide_current_calendar()">
  </map>
  
<div id="layer_calendario1" style="position:absolute; width:94px; height:109px; z-index:0; left: 0px; top: 0px; visibility: hidden">
  <img name='imagen_calendario1' src=/images/html/imagen1x1.gif' height=1 width=1 usemap='#MapCalendario' border='0' alt='{_PALABRA_CALENDARIO_IDA}'><br>
</div>
<div id="layer_calendario2" style="position:absolute; width:94px; height:109px; z-index:0; left: 0px; top: 0px; visibility: hidden">
  <img name='imagen_calendario2' src='/images/html/imagen1x1.gif' height=1 width=1 usemap='#MapCalendario' border='0' alt='{_PALABRA_CALENDARIO_VUELTA}'><br>
</div>

<script type='text/javascript'>

g_fecha_min = '{FECHA_MIN}';
g_fecha_max = '{FECHA_MAX}';

//SET_DHTML("");
ADD_DHTML("layer_calendario1");
ADD_DHTML("layer_calendario2");

function check_select_for_otros_destinos(campo, num, tipo)
	{
	var w;
	if (campo.options[campo.selectedIndex].value == 'otros_destinos')
		{
		w = window.open("/cgi-bin/compra/otros_destinos.cgi?idioma={IDIOMA}&amp;num_segmentos={NUM_SEGMENTOS_INTERFAZ}&amp;tipo=" + tipo + "&amp;num=" + num, "otros_destinos","width=300,height=200,scrollbars=yes,resizable=yes");
		w.focus();
		return true;
		}
	return false;
	}

function activate_calendar_segun_form(f,num)
	{
	var anomes, mes, ano, elem;

	ano = mes = 0;
	elem = eval("f.elements['fecha" + num + "_anomes']");
	if (elem)
		{
		anomes = elem.options[elem.selectedIndex].value;
		ano = anomes.substr(0,4);
		mes = anomes.substr(5,2);
		}

	if (ano == 0 && mes == 0)
		{
		elem = eval("f.elements['fecha" + (num - 1) + "_anomes']");
		if (elem)
			{
			anomes = elem.options[elem.selectedIndex].value;
			ano = anomes.substr(0,4);
			mes = anomes.substr(5,2);
			}
		else
			{
			mes = 0;
			ano = 0;
			}
		}
	activate_calendar(num, ano, mes);
	}

function set_fecha_from_calendar(num, ano, mes, dia)
	{
	if (num <= 2)
		{
		pre_select_by_value(document.paso1, 'fecha' + num + '_anomes', ano + '-' + mes);
		pre_select_by_value(document.paso1, 'fecha' + num + '_dia', dia);
		}
	else if (num == 3)
		{
		document.formhoteles.ida.value = dia + '/' + mes + '/' + ano
		}
	else if (num == 4)
		{
		document.formautos.ida.value = dia + '/' + mes + '/' + ano
		}
	else if (num == 5)
		{
		document.formautos.vuelta.value = dia + '/' + mes + '/' + ano
		}
	}

function precheck_and_submit(f)
	{
	// Eat the return value
	check_and_submit(f);
	}

function check_and_submit(f)
	{
	var errores, i, elem, elem2, fecha_segmento1, fecha_segmento2, from, to, nadults, ninfants, nchildren;

	errores = '';
	from = to = '';
	change_bg_for_id('id_nadults','ok');
	change_bg_for_id('id_nchildren','ok');
	change_bg_for_id('id_ninfants','ok');

	elem = f.elements['nadults'];
	nadults = 0;
	if (elem)
		{
		nadults = parseInt(elem.options[elem.selectedIndex].value, 10);
		}
	elem = f.elements['nchildren'];
	nchildren = 0;
	if (elem)
		{
		nchildren = parseInt(elem.options[elem.selectedIndex].value, 10);
		}
	elem = f.elements['ninfants'];
	ninfants = 0;
	if (elem)
		{
		ninfants = parseInt(elem.options[elem.selectedIndex].value, 10);
		}


	if (nadults < ninfants)
		{
		change_bg_for_id('id_nadults','dato-erroneo');
		change_bg_for_id('id_ninfants','dato-erroneo');
		errores += "{_ERROR_MAS_INFANTES_QUE_ADULTOS_JS}\n";
		}

	if (nadults + ninfants + nchildren > 9)
		{
		change_bg_for_id('id_nadults', 'dato-erroneo')
		change_bg_for_id('id_nchildren', 'dato-erroneo')
		change_bg_for_id('id_ninfants', 'dato-erroneo')
		errores += "{_ERROR_DEMASIADOS_PASAJEROS_JS}\n";
		}

	change_bg_for_id('id_from_city1', 'ok');
	elem = eval("f.elements['from_city1']");
	if (elem && elem.options[elem.selectedIndex].value == '' || elem.options[elem.selectedIndex].value == 'otros_destinos')
		{
		change_bg_for_id('id_from_city1', 'dato-erroneo');
		errores += "{_ERROR_CIUDAD_DE_ORIGEN_FALTANTE_JS}\n";
		}
	else
		{
		from = elem.options[elem.selectedIndex].value;
		}
	change_bg_for_id('id_to_city1', 'ok');
	elem = eval("f.elements['to_city1']");
	if (elem && elem.options[elem.selectedIndex].value == '' || elem.options[elem.selectedIndex].value == 'otros_destinos')
		{
		change_bg_for_id('id_to_city1', 'dato-erroneo');
		errores += "{_ERROR_CIUDAD_DE_DESTINO_FALTANTE_JS}\n";
		}
	else
		{
		to = elem.options[elem.selectedIndex].value;
		}

	if (from != '' && to != '' && from == to)
		{
		change_bg_for_id('id_to_city1', 'dato-erroneo');
		errores += "{_ERROR_CIUDAD_DE_DESTINO_IGUAL_A_ORIGEN_JS}\n";
		}
	change_bg_for_id('id_fecha1', 'ok');
	elem = eval("f.elements['fecha1_dia']");
	elem2 = eval("f.elements['fecha1_anomes']");
	fecha_segmento1 = elem2.options[elem2.selectedIndex].value + "-" + elem.options[elem.selectedIndex].value;
	if ((elem && elem.selectedIndex < 1) || (elem2 && elem2.selectedIndex < 1))
		{
		change_bg_for_id('id_fecha1', 'dato-erroneo');
		errores += "{_ERROR_FECHA_IDA_FALTANTE_JS}\n";
		}
	else if (!fecha_valida_iso(fecha_segmento1))
		{
		change_bg_for_id('id_fecha' + i,'dato-erroneo');
		errores += "{_ERROR_FECHA_IDA_INVALIDA_JS}\n";
		}
	else
		{
		if (fecha_segmento1 < '{FECHA_MIN}')
			{
			change_bg_for_id('id_fecha1','dato-erroneo');
			errores += "{_ERROR_FECHA_IDA_PASADO_JS}\n";
			}
		if (fecha_segmento1 > '{FECHA_MAX}')
			{
			change_bg_for_id('id_fecha1','dato-erroneo');
			errores += "{_ERROR_FECHA_IDA_FUTURO_JS}\n";
			}
		}

	change_bg_for_id('id_fecha2', 'ok');
	elem = eval("f.elements['fecha2_dia']");
	elem2 = eval("f.elements['fecha2_anomes']");
	if (elem.selectedIndex > 0 && elem2.selectedIndex > 0)
		{
		fecha_segmento2 = elem2.options[elem2.selectedIndex].value + "-" + elem.options[elem.selectedIndex].value;

		if (fecha_segmento1 > fecha_segmento2)
			{
			change_bg_for_id('id_fecha2', 'dato-erroneo');
			errores += "{_ERROR_FECHA_REGRESO_ANTERIOR_IDA_JS}\n";
			}
		if (fecha_segmento2 < '{FECHA_MIN}')
			{
			change_bg_for_id('id_fecha2','dato-erroneo');
			errores += "{_ERROR_FECHA_REGRESO_PASADO_JS}\n";
			}
		if (fecha_segmento2 > '{FECHA_MAX}')
			{
			change_bg_for_id('id_fecha2','dato-erroneo');
			errores += "{_ERROR_FECHA_REGRESO_FUTURO_JS}\n";
			}
		if (!fecha_valida_iso(fecha_segmento2))
			{
			change_bg_for_id('id_fecha' + i,'dato-erroneo');
			errores += "{_ERROR_FECHA_REGRESO_INVALIDA_JS}\n";
			}
		}
	if (((elem && elem.selectedIndex >= 1) || (elem2 && elem2.selectedIndex >= 1)) 
		&& ((elem && elem.selectedIndex < 1) || (elem2 && elem2.selectedIndex < 1)))
		{
		change_bg_for_id('id_fecha2', 'dato-erroneo');
		errores += "{_ERROR_FECHA_REGRESO_FALTANTE_JS}\n";
		}

	if (errores.length > 0)
		{
		if (typeof ClickTaleRegisterFormSubmit == 'function') {
			ClickTaleRegisterFormSubmit(f); 
			ClickTaleTag("form_submit_fail");
		}
		alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
		return false;
		}
	completa_campos_hidden(f);

	f.action = '/cgi-bin/compra/paso2.cgi';
	if (typeof ClickTaleRegisterFormSubmit == 'function') {
		ClickTaleRegisterFormSubmit(f); 
		ClickTaleTag("form_submit_success");
	}
	f.submit();
	}

function completa_campos_hidden(f)
	{
	var x;
	if (f.elements['fecha2_dia'].selectedIndex > 0 && f.elements['fecha2_anomes'].selectedIndex > 0)
		{
		x = f.elements['to_city1'];
		f.elements['from_city2'].value = x.options[x.selectedIndex].value;
		x = f.elements['from_city1'];
		f.elements['to_city2'].value = x.options[x.selectedIndex].value;
		f.elements['num_segmentos_interfaz'].value = '2';
		}
	else
		{
		f.elements['from_city2'].value = '';
		f.elements['to_city2'].value = '';
		f.elements['num_segmentos_interfaz'].value = '1';
		}
	}

function set_dates()
	{
	today = new Date();
	milisecs = Date.parse(today);
	milisecs += 86400000 * 7; // Este 2o numero es la cantidad de dias en el futuro que queremos la fecha preseleccionada.
	plus = new Date(milisecs);
	day = plus.getDate();
	if (day < 10)
		{
		day = '0'+day;
		}
	month = plus.getMonth();
	month += 1;
	if (month < 10)
		{
		month = '0'+month;
		}
	year = plus.getFullYear();
	anomes = year + '-' + month;
	if (!document.paso1.fecha1_dia.value)
		{
		document.paso1.fecha1_dia.value = day;
		}
	if (!document.paso1.fecha1_anomes.value)
		{
		document.paso1.fecha1_anomes.value = anomes;
		}
	}

function set_city()
	{
	if (!document.paso1.from_city1.value)
		{
//		document.paso1.from_city1.value = 'SCL';
		}
	}

</script>
<form action='/noJS.html' method='GET' name='paso1' style='display:inline'>
  <input type='hidden' name='session_id' value='{SESSION_ID}'>
  <input type='hidden' name='rand_check' value='{RAND_CHECK}'>
  <input type='hidden' name='otras_ciudades' value='{OTRAS_CIUDADES}'>
  <input type='hidden' name='num_segmentos_interfaz' value='2'>
  <input type='hidden' name='from_city2' value='{FROM_CITY2}'>
  <input type='hidden' name='to_city2' value='{TO_CITY2}'>
  <input type='hidden' name='tipo_paso1' value='caja'>
  <tr>
    <td>
      <table width='100%' border='0' cellpadding='0' cellspacing='0'>
        <col width="50%">
        <col width="50%">
        <tr>
          <td>
          </td>
          <td>
          </td>
        </tr>
        <tr>
          <td id='id_from_city1'>
            {_LABEL_DESDE}
          </td>
          <td id='id_fecha1'>
            {_LABEL_FECHA_IDA}
          </td>
        </tr>
        <tr>
          <td>
            <select name='from_city1'>
              <option value=''>
              {_LABEL_SELECCIONE}
              </option>
              {LISTA_ORIGENES}
              
            </select>
          </td>
          <td>
            <table width="80%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td>
                  <select name='fecha1_dia'>
                    <option value=''>
                    </option>
                    {DIAS1}
                    
                  </select>
                  <select name='fecha1_anomes'>
                    <option value=''>
                    </option>
                    {MESES_ANO1}
                  </select>
                </td>
                <td>
                  <img src='/images/html/ico_calendario.gif' height=20 width=25 alt='{_PALABRA_CALENDARIO}' name='calendario1' border="0" onclick="activate_calendar_segun_form(document.paso1,'1')" onmouseout="MM_swapImage('calendario1','','/images/html/ico_calendario.gif',0)">
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td>
          </td>
          <td>
          </td>
        </tr>
        <tr>
          <td id='id_to_city1'>
            {_LABEL_HACIA}
          </td>
          <td id='id_fecha2'>
            {_LABEL_FECHA_REGRESO}
          </td>
        </tr>
        <tr>
          <td>
            <select name='to_city1' onChange='acciones_combo_origen_destino(this.form,this,1,"destino")'>
              <option value=''>
              {_LABEL_SELECCIONE}
              </option>
              {LISTA_DESTINOS}
              
            </select>
          </td>
          <td>
            <table width="80%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td>
                  <select name='fecha2_dia'>
                    <option value=''>
                    </option>
                    {DIAS}
                  </select>
                  <select name='fecha2_anomes'>
                    <option value=''>
                    </option>
                    {MESES_ANO}
                  </select>
                </td>
                <td>
                  <img src='/images/html/ico_calendario.gif' height=20 width=25 alt='{_PALABRA_CALENDARIO}' name='calendario2' border="0" onclick="activate_calendar_segun_form(document.paso1,'2')" onmouseout="MM_swapImage('calendario2','','/images/html/ico_calendario.gif',0)">
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
        <td valign="top" class='txt-arialch'> <a href='/cgi-bin/compra/paso1.cgi?estilo=multiples_destinos&amp;rand={RAND_CHECK}'>{_TEXTO_LINK_MULTIPLES_DESTINOS}</a></td>
        <td class='txt-arialch'>&nbsp;</td>
        </tr>
        <tr>
          <td>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
                  {_LABEL_CABINA}
                </td>
              </tr>
              <tr>
                <td>
                  <select name='cabina'>
                    <option value='Y' {cabina_y_selected}>
                    {_LABEL_CABINA_TURISTA}
                    </option>
                    <option value='J' {cabina_j_selected}>
                    {_LABEL_CABINA_EJECUTIVA}
                    </option>
                  </select>
                </td>
              </tr>
            </table>
          </td>
          <td>
            <table width='100%' border='0' cellpadding='0' cellspacing='0'>
              <col width="33%">
              <col width="34%">
              <col width="33%">
              <tr>
                <td>
                  {_LABEL_NUM_ADULTS}
                </td>
                <td>
                  {_LABEL_NUM_CHILDREN}
                </td>
                <td>
                  {_LABEL_NUM_INFANTS}
                </td>
              </tr>
              <tr>
                <td>
                  <select name='nadults'>
                    <option value='1' {nadults_1_selected}>
                    1
                    </option>
                    <option value='2' {nadults_2_selected}>
                    2
                    </option>
                    <option value='3' {nadults_3_selected}>
                    3
                    </option>
                    <option value='4' {nadults_4_selected}>
                    4
                    </option>
                    <option value='5' {nadults_5_selected}>
                    5
                    </option>
                    <option value='6' {nadults_6_selected}>
                    6
                    </option>
                    <option value='7' {nadults_7_selected}>
                    7
                    </option>
                    <option value='8' {nadults_8_selected}>
                    8
                    </option>
                    <option value='9' {nadults_9_selected}>
                    9
                    </option>
                  </select>
                </td>
                <td>
                  <select name='nchildren'>
                    <option value='0' {nchildren_0_selected}>
                    0
                    </option>
                    <option value='1' {nchildren_1_selected}>
                    1
                    </option>
                    <option value='2' {nchildren_2_selected}>
                    2
                    </option>
                    <option value='3' {nchildren_3_selected}>
                    3
                    </option>
                    <option value='4' {nchildren_4_selected}>
                    4
                    </option>
                    <option value='5' {nchildren_5_selected}>
                    5
                    </option>
                    <option value='6' {nchildren_6_selected}>
                    6
                    </option>
                    <option value='7' {nchildren_7_selected}>
                    7
                    </option>
                    <option value='8' {nchildren_8_selected}>
                    8
                    </option>
                    <option value='9' {nchildren_9_selected}>
                    9
                    </option>
                  </select>
                </td>
                <td>
                  <select name='ninfants'>
                    <option value='0' {ninfants_0_selected}>
                    0
                    </option>
                    <option value='1' {ninfants_1_selected}>
                    1
                    </option>
                    <option value='2' {ninfants_2_selected}>
                    2
                    </option>
                    <option value='3' {ninfants_3_selected}>
                    3
                    </option>
                    <option value='4' {ninfants_4_selected}>
                    4
                    </option>
                    <option value='5' {ninfants_5_selected}>
                    5
                    </option>
                    <option value='6' {ninfants_6_selected}>
                    6
                    </option>
                    <option value='7' {ninfants_7_selected}>
                    7
                    </option>
                    <option value='8' {ninfants_8_selected}>
                    8
                    </option>
                    <option value='9' {ninfants_9_selected}>
                    9
                    </option>
                  </select>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td>
          </td>
          <td>
          </td>
        </tr>
        <tr>
          <td>&nbsp;
            
          </td>
          <td>
            <input type='button' onClick='check_and_submit(this.form)' name='next_step' value='{_LABEL_CONTINUAR}' class=boton-destacado>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</form>
<script type='text/javascript'>

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

	document.paso1.action = 'javascript:precheck_and_submit(document.paso1);';
	advierte_errores_validacion_posteriores(document.paso1);
	set_dates();
	set_city();
</script>
