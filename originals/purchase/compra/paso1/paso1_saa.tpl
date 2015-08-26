<script src="/js/calendar.js" type="text/javascript"></script>
<script type="text/javascript">
<!--
function MM_preloadImages() { //v3.0
var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
function MM_swapImgRestore() { //v3.0
var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_swapImage() { //v3.0
var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function MM_findObj(n, d) { //v4.01
var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
if(!x && d.getElementById) x=d.getElementById(n); return x;
}


//-->
</script>
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
  
<div id="layer_calendario1" style="position:absolute; width:94px; height:109px; z-index:2; left: 0px; top: 0px; visibility: hidden">
	<img name="imagen_calendario1" src="/images/html/imagen1x1.gif" usemap="#MapCalendario" alt="calendario ida" width="94" height="109">
	<br>
</div>
<div id="iframelayer1" style="position:absolute; width:94px; height:109px; z-index:1; left: 0px; top: 0px; visibility: hidden">
	<iframe   id="iframepatch1"   src="/images/html/imagen1x1.gif"   scrolling="no"   frameborder="0"   style="width:94px; height:109px; display:block;">
	</iframe>
</div>

<script type='text/javascript'>

g_fecha_min = "{+DATE_ADD(now, 14, day, '%Y-%m-%d')}";
g_fecha_max = '{FECHA_MAX}';


function check_select_for_otros_destinos(campo, num, tipo)
	{
	var w;
	if (campo.options[campo.selectedIndex].value == 'otros_destinos')
		{
		w = window.open("otros_destinos.cgi?idioma={IDIOMA}&num_segmentos={NUM_SEGMENTOS_INTERFAZ}&tipo=" + tipo + "&num=" + num, "otros_destinos", "width=300,height=200,scrollbars=yes,resizable=yes,left=100,top=100,screenX=100,screenY=100");
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
	obj = MM_findObj('calendario' + num);
	dim = getDim(obj);
	dd.elements['layer_calendario' + num].moveTo(dim.x-70,dim.y - 40);
	DivSetVisible(num);
	}

// function set_fecha_from_calendar(num, ano, mes, dia)
// 	{
// 	pre_select_by_value(document.paso1, 'fecha' + num + '_anomes', ano + '-' + mes);
// 	pre_select_by_value(document.paso1, 'fecha' + num + '_dia', dia);
// 	}

function precheck_and_submit(f)
	{
	if (!buttonDisabled(0))
		{
		// Eat the return value
		check_and_submit(f);
		}
	}

function check_and_submit(f)
	{
	var errores, i, elem, elem2, fecha_segmento_anterior, fecha_segmento_actual, nadults, nchildren, ninfants;
	var from,to, aux_error, expresion, pattern;

	pattern = '';

	errores = '';

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

	change_bg_for_id('id_nadults', 'ok')
	change_bg_for_id('id_nchildren', 'ok')
	change_bg_for_id('id_ninfants', 'ok')

	if (nadults < ninfants)
		{
		change_bg_for_id('id_nadults', 'dato-erroneo')
		change_bg_for_id('id_ninfants', 'dato-erroneo')
		errores += "{_ERROR_MAS_INFANTES_QUE_ADULTOS_JS}\n";
		}

	if (nadults + ninfants + nchildren > 9)
		{
		change_bg_for_id('id_nadults', 'dato-erroneo')
		change_bg_for_id('id_nchildren', 'dato-erroneo')
		change_bg_for_id('id_ninfants', 'dato-erroneo')
		errores += "{_ERROR_DEMASIADOS_PASAJEROS_JS}\n";
		}

	fecha_segmento_anterior = '';
	for (i = 1; i <= parseInt(f.elements['num_segmentos_interfaz'].value, 10); i++)
		{
		from = to = '';
		change_bg_for_id('id_from_city' + i,'ok');
		change_bg_for_id('id_to_city' + i,'ok');
		change_bg_for_id('id_fecha' + i,'ok');
		elem = eval("f.elements['from_city" + i + "']");
		if (elem && (elem.options[elem.selectedIndex].value == '' || elem.options[elem.selectedIndex].value == 'otros_destinos'))
			{
			change_bg_for_id('id_from_city' + i,'dato-erroneo');
			errores += '{_ERROR_CIUDAD_ORIGEN_SEGMENTO_JS} ' + i + "\n";
			}
		else
			{
			from = elem.options[elem.selectedIndex].value;
			}
		elem = eval("f.elements['to_city" + i + "']");
		if (elem && (elem.options[elem.selectedIndex].value == '' || elem.options[elem.selectedIndex].value == 'otros_destinos'))
			{
			change_bg_for_id('id_to_city' + i,'dato-erroneo');
			errores += '{_ERROR_CIUDAD_DESTINO_SEGMENTO_JS} ' + i + "\n";
			}
		else
			{
			to = elem.options[elem.selectedIndex].value;
			}
		if (from != '' && to != '' && from == to)
			{
			change_bg_for_id('id_to_city' + i,'dato-erroneo');
			errores += '{_ERROR_CIUDAD_DE_DESTINO_IGUAL_A_ORIGEN_SEGMENTO_JS} ' + i + "\n";
			}

		expresion = new RegExp(":" + from + to);
		if (pattern.match(expresion))
			{
			errores += '{_ERROR_SAA_SEGMENTOS_REPETIDOS_JS}' + "\n";
			}
		pattern = pattern + ":" + from + to;

		elem = eval("f.elements['fecha" + i + "_dia']");
		elem2 = eval("f.elements['fecha" + i + "_anomes']");
		fecha_segmento_actual = elem2.options[elem2.selectedIndex].value + "-" + elem.options[elem.selectedIndex].value;
		if ((elem && elem.selectedIndex < 1) || (elem2 && elem2.selectedIndex < 1))
			{
			change_bg_for_id('id_fecha' + i,'dato-erroneo');
			errores += '{_ERROR_FECHA_SEGMENTO_FALTANTE_JS}' + i + "\n";
			}
		else if (!fecha_valida_iso(fecha_segmento_actual))
			{
			change_bg_for_id('id_fecha' + i,'dato-erroneo');
			errores += '{_ERROR_FECHA_SEGMENTO_INVALIDA_JS}' + i + "\n";
			}
		else
			{
			if (fecha_segmento_anterior != '' && fecha_segmento_actual < fecha_segmento_anterior)
				{
				change_bg_for_id('id_fecha' + i,'dato-erroneo');
				errores += '{_ERROR_FECHA_SEGMENTO_DESORDEN_JS} '  + "\n";
				}
			if (fecha_segmento_actual < "{+DATE_ADD(now, 14, day, '%Y-%m-%d')}")
				{
				change_bg_for_id('id_fecha' + i,'dato-erroneo');
				errores += "{_ERROR_FECHA_SEGMENTO_INVALIDA_JS}" + "\n";
				}
			if (fecha_segmento_actual > '{FECHA_MAX}')
				{
				change_bg_for_id('id_fecha' + i,'dato-erroneo');
				errores += '{_ERROR_FECHA_SEGMENTO_FUTURO_JS}' + "\n";
				}
			}
		fecha_segmento_anterior = elem2.options[elem2.selectedIndex].value + "-" + elem.options[elem.selectedIndex].value;

		}

	if (errores.length > 0)
		{
		alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
		reenableButton(0);
		return false;
		}
	f.action = '/cgi-bin/compra/paso2.cgi';
	f.submit();
	}

function mas_segmentos(f)
	{
	if (buttonDisabled(0))
		{
		return false;
		}

	f.action = '/cgi-bin/compra/paso1.cgi';
	f.elements['num_segmentos_interfaz'].value = parseInt(f.elements['num_segmentos_interfaz'].value, 10) + 1;
	f.submit();
	}

function borra_segmento(f, segmento)
	{
	if (buttonDisabled(0))
		{
		return false;
		}

	var elem;
	if (parseInt(segmento, 10) < 4)
		{
		alert('{_ERROR_MINIMO_SEGMENTOS_SAA_JS}');
		reenableButton(0);
		return false;
		}
	elem = eval("f.elements['from_city" + segmento + "']");
	if (elem)
		{
		elem.selectedIndex = 0;
		}
	elem = eval("f.elements['to_city" + segmento + "']");
	if (elem)
		{
		elem.selectedIndex = 0;
		}
	elem = eval("f.elements['fecha" + segmento + "_dia']");
	if (elem)
		{
		elem.selectedIndex = 0;
		}
	elem = eval("f.elements['fecha" + segmento + "_anomes']");
	if (elem)
		{
		elem.selectedIndex = 0;
		}
	f.action = 'paso1.cgi';
	f.elements['num_segmentos_interfaz'].value = parseInt(f.elements['num_segmentos_interfaz'].value, 10) - 1;
	f.submit();
	return false;
	}

</script>

<form action='/noJS.html' method='GET' name='paso1'>
	<input type='hidden' name='rand_check' value='{RAND_CHECK}'>
	<input type='hidden' name='session_id' value='{SESSION_ID}'>
	<input type='hidden' name='num_segmentos_interfaz' value='{NUM_SEGMENTOS_INTERFAZ}'>
	<input type='hidden' name='tipo_paso1' value='{TIPO_PASO1}'>

	<h4>{_PASO1_TITULO_SELECCIONA_ORIGEN_DESTINO}</h4>
	<table class=table cellpadding="0" cellspacing="0" width="100%">
		<col width="15%">
		<col width="23%">
		<col width="23%">
		<col width="41%">
   	<tr> 
      	<th>{_LABEL_NUMERO_SEGMENTO}</th>
      	<th>{_LABEL_DESDE}</th>
      	<th>{_LABEL_HACIA}</th>
      	<th>{_LABEL_FECHA}</th>
   	</tr>
      <tr> 
      	<td> {_LABEL_SEGMENTO} 1</td>
      	<td id='id_from_city1'>
				<select name='from_city1' class='combo-box' >
            	<option value=''>{_LABEL_SELECCIONE}</option>
 					{LISTA_ORIGENES}
          	</select>
         	&nbsp;
			</td>
        	<td id='id_to_city1'>
			  	<select name='to_city1' class='combo-box'>
            	<option value=''>{_LABEL_SELECCIONE}</option>
 					{LISTA_DESTINOS}
          	</select>
			</td>
        	<td id='id_fecha1'>
			  	<select name='fecha1_dia' class=combo-box>
            	<option value=''>&nbsp;</option>
 					{DIAS1}
          	</select>
				<select name='fecha1_anomes' class=combo-box>
            	<option value=''>&nbsp;</option>
					{MESES_ANO1}
          	</select>
				<!-- <img src='/images/html/ico_calendario.gif' alt='{_PALABRA_CALENDARIO}' name='calendario1' onclick="activate_calendar_segun_form(document.paso1,'1')" onmouseout="MM_swapImage('calendario1','','/images/html/ico_calendario.gif',0)" style="vertical-align: bottom" width=25 height=20> -->
      	</td>
   	</tr>
{*OTROS_SEGMENTOS} 
<tr>
	<td>
		{_LABEL_SEGMENTO} {NUM_SEGMENTO}
	</td>
	<td id='id_from_city{NUM_SEGMENTO}'>
		<select name='from_city{NUM_SEGMENTO}'>
			<option value=''>
			{_LABEL_SELECCIONE}
			</option>
			{LISTA_ORIGENES}
		</select>
		&nbsp;
	</td>
	<td id='id_to_city{NUM_SEGMENTO}'>
		<select name='to_city{NUM_SEGMENTO}'>
			<option value=''>
			{_LABEL_SELECCIONE}
			</option>
			{LISTA_DESTINOS}
		</select>
	</td>
	<td id='id_fecha{NUM_SEGMENTO}'>
		<select name='fecha{NUM_SEGMENTO}_dia'>
			<option value=''>
			&nbsp;
			</option>
			{DIAS}
		</select>
		<select name='fecha{NUM_SEGMENTO}_anomes'>
			<option value=''>
			&nbsp;
			</option>
			{MESES_ANO}
		</select>
		<!-- <img src='/images/html/ico_calendario.gif' alt='{_PALABRA_CALENDARIO}' name='calendario{NUM_SEGMENTO}' onclick="activate_calendar_segun_form(document.paso1, '{NUM_SEGMENTO}')" onmouseout="MM_swapImage('calendario{NUM_SEGMENTO}','','/images/html/ico_calendario.gif');" style='vertical-align:bottom' width=25 height=20> -->

<div id="layer_calendario{NUM_SEGMENTO}" style="position:absolute; width:94px; height:109px; z-index:2; left: 0px; top: 0px; visibility: hidden">
	<img name="imagen_calendario{NUM_SEGMENTO}" src="/images/html/imagen1x1.gif" usemap="#MapCalendario" alt="calendario vuelta" width="94" height="109">
	<br>
</div>
<div id="iframelayer{NUM_SEGMENTO}" style="position:absolute; width:94px; height:109px; z-index:1; left: 0px; top: 0px; visibility: hidden">
	<iframe   id="iframepatch{NUM_SEGMENTO}"   src="/images/html/imagen1x1.gif"   scrolling="no"   frameborder="0"   style="width:94px; height:109px; display:block;">
	</iframe>
</div>

	</td>
</tr>
{/OTROS_SEGMENTOS}
   </table>
<br>
{_MSG_SAA_ESTADIA_12MESES_P1} {+DATE_ADD('now','360','day', '%d %M %Y')} {_MSG_SAA_ESTADIA_12MESES_P2}
   <br>
	<input type='button' name='lessSegButton' value='{_LABEL_MENOS_SEGMENTOS}' class=boton-secundario onclick='borra_segmento(this.form, "{NUM_SEGMENTOS_INTERFAZ}");'>
	<input type='button' name='moreSegButton' value='{_LABEL_MAS_SEGMENTOS}' class=boton-secundario onclick='mas_segmentos(this.form)'>
	<br>
	<br>
	<h4>{_PASO1_TITULO_SELECCIONA_TIPO_PAX}</h4>
<input type='hidden' name='cabina' value='Y'>
   <table class=table cellspacing="0" cellpadding="0" width="100%">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
   	<tr> 
      	<th>{_LABEL_NUM_ADULTS} {_LABEL_DESC_ADULTS}</th>
      	<th>{_LABEL_NUM_CHILDREN}</th>
		<th>{_LABEL_NUM_INFANTS}</th>
      </tr>
      <tr>
        	<td id='id_nadults'> 
         	<select name='nadults' class='combo-box'>
            	<option value='1' {NADULTS_1_SELECTED}>1</option>
            	<option value='2' {NADULTS_2_SELECTED}>2</option>
            	<option value='3' {NADULTS_3_SELECTED}>3</option>
            	<option value='4' {NADULTS_4_SELECTED}>4</option>
            	<option value='5' {NADULTS_5_SELECTED}>5</option>
            	<option value='6' {NADULTS_6_SELECTED}>6</option>
            	<option value='7' {NADULTS_7_SELECTED}>7</option>
            	<option value='8' {NADULTS_8_SELECTED}>8</option>
            	<option value='9' {NADULTS_9_SELECTED}>9</option>
          	</select>
			</td>
        	<td id='id_nchildren'>
         	<select name='nchildren' class=combo-box>
            	<option value='0' {NCHILDREN_0_SELECTED}>0</option>
            	<option value='1' {NCHILDREN_1_SELECTED}>1</option>
            	<option value='2' {NCHILDREN_2_SELECTED}>2</option>
            	<option value='3' {NCHILDREN_3_SELECTED}>3</option>
            	<option value='4' {NCHILDREN_4_SELECTED}>4</option>
            	<option value='5' {NCHILDREN_5_SELECTED}>5</option>
            	<option value='6' {NCHILDREN_6_SELECTED}>6</option>
            	<option value='7' {NCHILDREN_7_SELECTED}>7</option>
            	<option value='8' {NCHILDREN_8_SELECTED}>8</option>
            	<option value='9' {NCHILDREN_9_SELECTED}>9</option>
          	</select>
			</td>
        	<td id='id_ninfants'>
         	<select name='ninfants' class=combo-box>
            	<option value='0' {NINFANTS_0_SELECTED}>0</option>
            	<option value='1' {NINFANTS_1_SELECTED}>1</option>
            	<option value='2' {NINFANTS_2_SELECTED}>2</option>
            	<option value='3' {NINFANTS_3_SELECTED}>3</option>
            	<option value='4' {NINFANTS_4_SELECTED}>4</option>
            	<option value='5' {NINFANTS_5_SELECTED}>5</option>
            	<option value='6' {NINFANTS_6_SELECTED}>6</option>
            	<option value='7' {NINFANTS_7_SELECTED}>7</option>
            	<option value='8' {NINFANTS_8_SELECTED}>8</option>
            	<option value='9' {NINFANTS_9_SELECTED}>9</option>
          	</select>
			</td>
		</tr>
	</table>
	<br>
	<table cellspacing="0" cellpadding="0" id=barra-continuar>
		<tr>
			<td class=first>{_PASO1_PASO_SIGUIENTE}</td>
			<td class=last>&nbsp;&nbsp;</td>
			<td>	<input class=boton-destacado type='submit' id='submitButton' value='{_LABEL_CONTINUAR}' name="submitButton"></td>
		</tr>
	</table>   
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

// To allow temporary deactivation of buttons
disabledButton[0] = new Array(3);
disabledButton[0][0] = document.paso1.submitButton;
disabledButton[0][1] = document.paso1.lessSegButton;
disabledButton[0][2] = document.paso1.moreSegButton;

document.paso1.action = 'javascript:precheck_and_submit(document.paso1);';
advierte_errores_validacion_posteriores(document.paso1);

{AVISOS_COMERCIALES}

if (!dd.elements)
	{
	SET_DHTML("");
	}

ADD_DHTML("layer_calendario1");
ADD_DHTML("iframelayer1");
{*DHTML_CAL_M_SEGMENTOS}
ADD_DHTML("layer_calendario{NUM_SEGMENTO}");
ADD_DHTML("iframelayer{NUM_SEGMENTO}");
{/DHTML_CAL_M_SEGMENTOS}
{*LAYER_CAL_M_SEGMENTOS}
	dd.elements['layer_calendario{NUM_SEGMENTO}'].addChild(dd.elements['iframelayer{NUM_SEGMENTO}']);
	dd.elements['layer_calendario{NUM_SEGMENTO}'].setZ(2);
	dd.elements['iframelayer{NUM_SEGMENTO}'].setZ(1);
{/LAYER_CAL_M_SEGMENTOS}
	dd.elements['layer_calendario1'].addChild(dd.elements['iframelayer1']);
	dd.elements['layer_calendario1'].setZ(2);
	dd.elements['iframelayer1'].setZ(1);

	// 	dd.elements['layer_calendario1'].children['iframelayer1'].moveBy(+5, +5);

</script>
</div>

