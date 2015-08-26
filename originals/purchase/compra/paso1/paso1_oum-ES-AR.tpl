<style type="text/css">
	.hidden { display:none; }
</style>

<script type="text/javascript">
if(typeof change_bg_for_id != 'function') {
	window['change_bg_for_id'] = function(id, tipo_bg) {
		var elem = document.all ? document.all[id] : document.getElementById(id);
		if (!elem)
		{
			return;
		}
		if (!elem.style)
		{
			//comentado por jmcaracci
			//alert("Trato de cambiar style inexistente de : " + id);
			return;
		}
		if (tipo_bg == 'ok')
		{
			elem.style.backgroundColor = '#ffffff';
		}
		else
		{
			elem.style.backgroundColor = '#eedddd';
		}
	}
}

function check_and_submit(url, app)
	{
	var errores, elem, nadults, nchildren, ninfants;

	errores = '';
	elem = document.getElementById('nadults');
	nadults = 0;
	if (elem)
		{
		nadults = parseInt(elem.options[elem.selectedIndex].value, 10);
		}
	elem = document.getElementById('nchildren');
	nchildren = 0;
	if (elem)
		{
		nchildren = parseInt(elem.options[elem.selectedIndex].value, 10);
		}
	elem = document.getElementById('ninfants');
	ninfants = 0;
	if (elem)
		{
		ninfants = parseInt(elem.options[elem.selectedIndex].value, 10);
		}
	if (nadults < ninfants)
		{
		errores += '{_ERROR_MAS_INFANTES_QUE_ADULTOS_JS}' + "\n";
		}

	if (nadults + ninfants + nchildren > 7)
		{
		errores += '{_ERROR_DEMASIADOS_PASAJEROS_JS}' + "\n";
		}
	
	if((app == 'cplp' && (nadults + nchildren <= 0)) || (app == 'compra' && (nadults + nchildren + ninfants <= 0 )))
		{
		errores += '{_ERROR_NO_SELECCIONO_PASAJEROS_JS}' + "\n";
		change_bg_for_id('nadults_td', 'dato-erroneo');
		}
	if(app == 'cplp' && ninfants > 0)
		{
		errores += '{_MSG_INFANTES_KMS_JS}' + "\n";
		change_bg_for_id('ninfants_td', 'dato-erroreo');
		}
	
	if (errores.length > 0)
		{
		alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
		//window.location =  "#";
		return;
		}
	if(app == 'compra' && url != '')
		{
		window.location =  url + "&nadults=" + nadults + "&nchildren=" + nchildren + "&ninfants=" + ninfants;
		}
	else if (app == 'cplp' && url != '')
		{
		window.location =  url + "&nadults=" + nadults + "&nchildren=" + nchildren + "&ninfants=0";
		}
	else
		{
		//window.location =  "#";
		}
	}
	

function mostrar(div_id)
    {
		var nac = 'nacional';
		var inter = 'internacional';
		$("oum_"+nac).hide();
		$("tab_"+nac).removeClassName('current');
		$("oum_"+inter).hide();
		$("tab_"+inter).removeClassName('current');
		$("oum_"+div_id).show();
		$("tab_"+div_id).addClassName('current');
/*        document.getElementById('oum_nacional').style.visibility = 'hidden'; 
        document.getElementById('oum_internacional').style.visibility = 'hidden';
       
        document.getElementById(div).style.visibility = 'visible'; 
*/  }
</script>
<div id="wrapper-promo">

<script type="text/javascript" src="/js/tablas_promocionales/funcion_capas.js"></script>



<h1 style="text-align:center;"> &iexcl;Las mejores tarifas,  pocos d&iacute;as para disfrutarlas!</h1>
 <img src="/images/asociados/encabezados/es_ar_oum_750x150_int.jpg" class="img_float_right" width="750" height="150" alt="&iexcl;Las mejores tarifas,  pocos d&iacute;as para disfrutarlas!" title="&iexcl;Las mejores tarifas,  pocos d&iacute;as para disfrutarlas!">
 <p style="font-size:14px; font-family:Arial, Helvetica, sans-serif; color:#666666">&iexcl;Llegaron las Ofertas de &Uacute;ltimo Minuto! Si est&aacute;s pensando en escaparte a alguno de estos destinos, aprovech&aacute; a comprar tu pasaje en los pr&oacute;ximos d&iacute;as a un precio irrepetible. <br>
   Tenes pocos d&iacute;as para comprar, &iquest;te vas a perder esta oportunidad?</p>
 
  <p><a href="http://www.lan.com/promociones/index.html">Ver otras promociones de LAN.com</a></p>
 {_MSG_OUM_NO_APLICAN_INFANTES} <br />
 <div>
 <ul id="promo-tab">
   <!--<li id="tab_nacional"><a href="javascript:mostrar('nacional');"><b>Destinos nacionales</b></a></li>-->
   <li class="current" id="tab_internacional"><a href="javascript:mostrar('internacional');"><b>Destinos internacionales</b></a></li>
 </ul>
 
 
 <div id="box-content">
  <div id="box-int-border">
<table width="100%" cellpadding="0" cellspacing="0" style="width: 99%; border: 1px solid #CCC; margin:0 auto;">
              <tr style="height: 22px; background: #dce0ee; font: 11px Arial, Helvetica, sans-serif; color: #363636; text-align: left;">
                <td colspan="3" style=" font-weight: bold; padding: 4px 0 0 5px; border-bottom: 1px solid #ccc;">Seleccione cantidad de pasajeros</td>
              </tr>
              <tr style="height: 22px; background: #f3f4f9; font: 11px Arial, Helvetica, sans-serif; color: #003e7e; text-align: left;">
                <td id="nadults_td" style=" font-weight: normal; padding: 4px 4px 4px 5px; text-align:center; ">Adultos
                  <select name="nadults" id="nadults">
                    <option value="0">0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                  </select></td>
                <td  style=" font-weight: normal; padding: 4px 4px 4px 5px; text-align:center;">Ni&ntilde;os                
                  <select name="nchildren" id="nchildren">
                    <option value="0">0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                  </select></td>
                <td  style=" font-weight: normal; padding: 4px 4px 4px 5px; text-align:center;">Infantes
                  <select name="ninfants" id="ninfants">
                    <option value="0">0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                  </select></td>
                </tr>
    </table><br />
<br />

 
         
<div id="oum_nacional" style="display:none">
{OFERTAS_RUTA_NACIONAL}
</div>

<div id="oum_internacional">
{OFERTAS_RUTA_INTERNACIONAL}
</div>  


    

<br>
  
<p class="condiciones">{_MSG_OUM_1_RESTRICCIONES} <a href="#;" onclick="javascript:SwapDiv('condiciones_4','bottom',this);" title="Ver Condiciones">t&eacute;rminos y  condiciones</a> {_MSG_OUM_2_RESTRICCIONES}</p> 

    		<div class="bottom" id="condiciones_4" style="display: none;" onclick="javascript:SwapDiv('condiciones_4','bottom',this);">
			{+TYC_OFERTAS(id_oferta=43035)}
		</div>
    
  </div>
</div>
<!--<br>{_ICONOS_PAGINAS_PROMOCIONALES}
<br>{_LABEL_DATOS_UTILES} -->

</div> <!-- fin wrapper-promo -->
</div>
