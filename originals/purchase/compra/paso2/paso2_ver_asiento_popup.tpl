<script type="text/javascript" src="/js/scriptaculous/effects.js"></script>
<script type="text/javascript" src="/js/scriptaculous/dragdrop.js"></script>

<script type="text/javascript">

/*FUNCION ECONOMICA*/
function on_mouse_over_economica(imagen){
 if (imagen == 1) {
	document.getElementById("imagen_superior_economica").className="economica01";
	return;
 }
 if (imagen == 2) {
	document.getElementById("imagen_superior_economica").className="economica02";
	return;
 }
 if (imagen == 3) {
	document.getElementById("imagen_superior_economica").className="economica03";
	return;
 }
 if (imagen == 4) {
	document.getElementById("imagen_superior_economica").className="economica04";
	return;
 }
  
}

/*FUNCION PREMIUM BUSINESS*/
function on_mouse_over_premium_business(imagen){
 if (imagen == 1) {
	document.getElementById("imagen_superior_premium_business").className="premium_business01";
	return;
 }
 if (imagen == 2) {
	document.getElementById("imagen_superior_premium_business").className="premium_business02";
	return;
 }
 if (imagen == 3) {
	document.getElementById("imagen_superior_premium_business").className="premium_business03";
	return;
 }
 if (imagen == 4) {
	document.getElementById("imagen_superior_premium_business").className="premium_business04";
	return;
 }
  
}


/*FUNCION PREMIUM ECONOMY*/
function on_mouse_over_premium_economy(imagen){
 if (imagen == 1) {
	document.getElementById("imagen_superior_premium_economy").className="premium_economy01";
	return;
 }
 if (imagen == 2) {
	document.getElementById("imagen_superior_premium_economy").className="premium_economy02";
	return;
 }
 if (imagen == 3) {
	document.getElementById("imagen_superior_premium_economy").className="premium_economy03";
	return;
 }
 if (imagen == 4) {
	document.getElementById("imagen_superior_premium_economy").className="premium_economy04";
	return;
 }
  
}

/*FUNCION PRIMERA CLASE*/
function on_mouse_over_primera_clase(imagen){
 if (imagen == 1) {
	document.getElementById("imagen_superior_primera").className="primera_clase01";
	return;
 }
 if (imagen == 2) {
	document.getElementById("imagen_superior_primera").className="primera_clase02";
	return;
 }
 if (imagen == 3) {
	document.getElementById("imagen_superior_primera").className="primera_clase03";
	return;
 }
 if (imagen == 4) {
	document.getElementById("imagen_superior_primera").className="primera_clase04";
	return;
 }
  
}


function show_ver_asiento_{CABINA}()
	{
	if ($('ver_asiento_'+'{CABINA}') && typeof(Dynamic_Components) != 'undefined')
		{
		$('ver_asiento_'+'{CABINA}').style.display = 'block';

		var offset_y = (document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop) + 10;
		$('ver_asiento_'+'{CABINA}').style.top = offset_y + 'px';

		if (!window.ver_asiento_{CABINA}_loading)
			{
			window.ver_asiento_{CABINA}_loading = $('ver_asiento_'+'{CABINA}'+'_content').innerHTML;
			}

		if (!window.ver_asiento_{CABINA}_loaded)
		{
		$('ver_asiento_'+'{CABINA}'+'_content').innerHTML = window.ver_asiento_{CABINA}_loading;

		window.ver_asiento_{CABINA}_loaded = 1;
		Dynamic_Components.refresh_component(
		   	'ver_asiento_'+'{CABINA}'+'_content',
   			'109',
  	 		'cabina=' + '{CABINA}',
   			null,
   			function ()
			{
			window.ver_asiento_{CABINA}_loaded = 0;
			}
			);
    		}
 	}
}

function hide_ver_asiento_{CABINA}()
	{
	if ($('ver_asiento_'+'{CABINA}'))
		{
		$('ver_asiento_'+'{CABINA}').style.display = 'none';
		}
	}
</script>

<style type="text/css">
#ver_asiento_{CABINA}{
	position: absolute;
	width: 540px;
}
#ver_asiento_{CABINA}_inner{
	background-color: white;
   font-size: 0.9em;
	border: solid 1px #999999;
	cursor: move;
}
#ver_asiento_{CABINA}_content{
   /*height: 600px;*/
}
#ver_asiento_{CABINA}_inner h1 {
	background-color: #dde0ef;
	color: #3ab;
	font-weight: bold;
	line-height: 2.5em;
	font-size: 1.5em;
	text-align: center;
	margin-top: 0;
	margin-bottom: 0;
	cursor: move;
	}
#ver_asiento_{CABINA}_footer {
	background-color: #dde0ef;
	width: 100%;
	text-align: right;
	line-height: 2.5em;
	cursor: move;
	}

</style>

<span id="disabledcolor" style="background-color: #eeeeee"></span>


<div id="ver_asiento_{CABINA}" style="display: none;">
	<div id="ver_asiento_{CABINA}_inner" class="inner">
		<div id="ver_asiento_{CABINA}_content">
			<br><br><br><br><br><br><br><br><br><br><br><br> 
			<div style="text-align: center; width: 100%;">
				<img src="/images/common/ajax_loader_32.gif" alt="" width="32" height="32"><br>
				{_LABEL_LOADING}
			</div>
			<br><br><br><br><br><br><br><br><br><br><br><br>
		</div>
		<div id="ver_asiento_{CABINA}_footer">
			<a title="{_LABEL_CERRAR}" href="javascript:hide_ver_asiento_{CABINA}();">
			{_LABEL_CERRAR} x
			</a>
			&nbsp;&nbsp;
		</div>
	</div>
</div>

 <script type="text/javascript">
	new Draggable('ver_asiento_{CABINA}', {starteffect: '', endeffect: '', reverteffect: ''});
 </script>
