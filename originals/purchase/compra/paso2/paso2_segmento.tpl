<script type="text/javascript" src="/js/json.js"></script>
<script type="text/javascript" src="/js/prototype.js"></script>
<script type="text/javascript" src="/js/scriptaculous/effects.js"></script>
<script type="text/javascript" src="/js/scriptaculous/dragdrop.js"></script>
<script type="text/javascript" src="/js/json_services.js"></script>
<script type="text/javascript" src="/js/dynamic_components.js"></script>
 
<script type="text/javascript">

function show_popup(id)
	{
	if ($('popup'+id) && typeof(Dynamic_Components) != 'undefined')
		{
		$('popup'+id).style.display = 'block';
		
		var offset_y = (document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop) + 10;
		$('popup'+id).style.top = offset_y + 'px';
		}
	}
function hide_popup(id)
	{
	if ($('popup'+id))
		{
		$('popup'+id).style.display = 'none';
 		}
	}

</script>

{*POPUPS}
	{POPUP_VER_CABINA}
{/POPUPS}

{LAYER_ESCALAS}

<a href="#Segment{NUM_SEGM}Cal" name="Segment{NUM_SEGM}" title="Segm{NUM_SEGM}"><img src="/images/html/imagen1x1.gif" alt="blank" width="1" height="1"></a>
<h4>{FROM_CITY} - {TO_CITY}</h4>
<table class=table width="100%" cellspacing="0" cellpadding="0">
	<col width="4%">
	<tr>
		<th>&nbsp;</th>
		<th> {FLECHA_AYER} {FECHA_VUELO} {FLECHA_MANANA}
			{*CALENDAR_IMG}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" name="Segment{NUM_SEGM}Cal" title="Calendario"><img src="/images/html/calendario.gif" alt="{_PALABRA_CALENDARIO}" name="calendario{NUM_SEGM}" id="img_calendario{NUM_SEGM}" width="22" height="17"></a>&nbsp;&nbsp;{_CPLP_CAL_CHECK_DATES}{/CALENDAR_IMG}
		</th>
		<th>{_LABEL_SALIDA}</th>
		<th>{_LABEL_LLEGADA}</th>
		<th>{_LABEL_DURACION}</th>
		<th>{LABEL_CABINA}</th>
	</tr>
	{LISTA_VUELOS}
	
</table>
<p>
	<table class="table" cellspacing="0" cellpadding="0" width="100%">
		<tr style="font-size: 11px;"><td>{_FRASE_VUELOS_OPERADOS_LAN}</td><td>{_FRASE_VUELOS_OPERADOS_TAM}</td><td>{_FRASE_VUELOS_OPERADOS_ONEWORLD}</td><td>{_FRASE_VUELOS_OPERADOS_OTRAS}</td></tr>
	</table>
</p>
{*CALENDAR_INITJS}
<script type="text/javascript">
	{
	g_day_status[ {NUM_SEGM} ] = {
{*MONTH_DATA}		"{KEY}" : [{VALUES}]{/MONTH_DATA}
	};
	var x = Date.parseDate("{FLIGHT_DATE} 12:00", "%Y-%m-%d %H:%M");
//	alert(x.toString());
	set_fecha_from_calendar({NUM_SEGM}, x);
	initCalendar("img_calendario{NUM_SEGM}", {NUM_SEGM}, g_fecha_min, g_fecha_max);
	}
</script>
{/CALENDAR_INITJS}
<br>

