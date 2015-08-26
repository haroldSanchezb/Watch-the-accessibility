<style type="text/css">
#popup{ID_SEGMENTO}{ID_VUELO} {
	position: absolute;
	width: 600px;
}
#popup_inner{ID_SEGMENTO}{ID_VUELO} {
	background-color: white;
    font-size: 0.9em;
	border: solid 1px #999999;
	cursor: move;
}
#popup_content{ID_SEGMENTO}{ID_VUELO} {
        /*height: 600px;*/
}
#popup_inner{ID_SEGMENTO}{ID_VUELO} h1 {
	background-color: #dde0ef;
	color: #3a398b;
	font-weight: bold;
	line-height: 2.5em;
	font-size: 1.5em;
	text-align: center;
	margin-top: 0;
	margin-bottom: 0;
	cursor: move;
	}
#popup_footer{ID_SEGMENTO}{ID_VUELO} {
	background-color: #dde0ef;
	width: 100%;
	text-align: right;
	line-height: 2.5em;
	cursor: move;
	}
     
</style>

<span id="disabledcolor" style="background-color: #eeeeee"></span>
     
<!-- La ventana con las comparaciones de familias -->
<div id="popup{ID_SEGMENTO}{ID_VUELO}" style="display: none;">
	<div id="popup_inner{ID_SEGMENTO}{ID_VUELO}" class="inner">
		<h1>{_FRASE_TITULO_CABINA}</h1>
		<div id="popup_content{ID_SEGMENTO}{ID_VUELO}">
			<div style="text-align: center; width: 100%;">
			<table class="tabla_cabina" border="0" cellpadding="0" cellspacing=0 width=100%> 
				<tr>    
					<th>{_LABEL_VUELOS}</th>
					<th>{_LABEL_SALIDA}</th>
					<th>{_LABEL_LLEGADA}</th>
					
				</tr>
				{*VUELOS}
				<tr>
					{*DATOS_VUELO}
					<td style="background-color:#ECEDEF; border-bottom-color:#DCE0EE; border-bottom-style:solid; border-bottom-width:1px; text-align:left; padding-left:2px;"><strong>{AIRLINE_CODE}{NUMERO_VUELO}</strong>&nbsp;&nbsp;{DEPARTURE_CITY} ({DEPARTURE_CITY_CODE}) - {ARRIVAL_CITY} ({ARRIVAL_CITY_CODE}) </td>
					<td style="background-color:#ECEDEF; border-bottom-color:#DCE0EE; border-bottom-style:solid; border-bottom-width:1px; text-align:left; padding-left:2px;">{DEPARTURE_TIME}</td>	
					<td style="background-color:#ECEDEF; border-bottom-color:#DCE0EE; border-bottom-style:solid; border-bottom-width:1px; text-align:left; padding-left:2px;">{ARRIVAL_TIME}</td>
					{/DATOS_VUELO}
						
				</tr>
				<tr>
				<td style="text-align:left; padding-left:2px;">{_LABEL_CABINA}&nbsp;<strong>{NOMBRE_CABINA}</strong></td>
				
				</tr>
				{/VUELOS}
			</table>

			</div>
			</div>
		<div id="popup_footer{ID_SEGMENTO}{ID_VUELO}">
			<a href="javascript:hide_popup('{ID_SEGMENTO}{ID_VUELO}');">
			{_LABEL_CERRAR} x
			</a>
			&nbsp;&nbsp;
		</div>
	</div>
</div>

     
     <script type="text/javascript">
             new Draggable('popup'+'{ID_SEGMENTO}'+'{ID_VUELO}', {starteffect: '', endeffect: '', reverteffect: ''});
     </script>
