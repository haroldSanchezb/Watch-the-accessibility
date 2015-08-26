<style type="text/css">
	.hidden { display:none; }
	#wrapper-promo #box-content {
    border: 2px solid #033D7D;
    margin: 0;
    padding: 0;
    width: 966px;
}
#wrapper-promo #box-content #box-int-border {
    border: 5px solid #E5ECF7;
    margin: 0;
    overflow: hidden;
    padding: 7px;
    width: 942px;
}
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



<h1 style="text-align:left;"><img src="/images/sitio_personas/encabezados/cl/es_cl_110915_oum_477x153_int.jpg" class="img_float_right" width="477" height="153" alt="Ofertas de &Uacute;ltimo Minuto" title="Ofertas de &Uacute;ltimo Minuto"> &iexcl;<strong>Compra ahora y vuela dentro de los pr&oacute;ximos 6 d&iacute;as</strong>! </h1>
<p style="font-size:14px; font-family:Arial, Helvetica, sans-serif; color:#666666"><br />
&iexcl;Estas ofertas se van a ir volando! Con las <strong>Ofertas  de &Uacute;ltimo Minuto,</strong> puedes elegir alguno de estos destinos y<strong> </strong>viajar<strong> </strong>en los<strong> </strong>pr&oacute;ximos 6 d&iacute;as<strong> </strong>a <strong>precios que no se repetir&aacute;n</strong>.  Son <strong>pocos cupos</strong>, as&iacute; que recuerda revisar siempre las<strong> </strong>Ofertas de  &Uacute;ltimo Minuto. &iexcl;No lo  pienses m&aacute;s, compra ya tus pasajes!</p>
{_MSG_OUM_NO_DISPONIBLE}</p>

<br />
<!--{_MSG_OUM_NO_APLICAN_INFANTES} <br>-->

<div>


 
 
<!--PARA ACTIVAR LAS OUM QUITAR ESTILO EN LINEA DISPLAY -->
 
<div id="box-content" style="display:none;">
   
      <li class="current" id="tab_internacional"><a href="javascript:mostrar('internacional');"><b>Destinos internacionales</b></a></li>
  
<!-- <li id="tab_nacional"><a href="javascript:mostrar('nacional');"><b>Destinos nacionales</b></a></li>-->
  
 </ul>
 
 
<!--PARA ACTIVAR LAS OUM QUITAR ESTILO EN LINEA DISPLAY -->
 
<div id="box-content" style="display:none;">

  <div id="box-int-border">


  <table width="730px" cellpadding="0" cellspacing="0" style="width: 100%; border: 1px solid #CCC; margin:0 auto;">
              <tr style="height: 22px; background: #dce0ee; font: 11px Arial, Helvetica, sans-serif; color: #363636; text-align: left;">
                <td colspan="5" style="width: 25%; font-weight: bold; padding: 4px 0 0 5px; border-bottom: 1px solid #ccc;">Selecciona la cantidad de pasajeros</td>
              </tr>
              <tr style="height: 22px; background: #f3f4f9; font: 11px Arial, Helvetica, sans-serif; color: #003e7e; text-align: left;">
                <td id="nadults_td"  style=" font-weight: normal; padding: 4px 4px 4px 5px; width: 20%;">Adultos
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
                <td style=" font-weight: normal; padding: 4px 4px 4px 5px; width: 20%;">Ni&ntilde;os                
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
                <td style=" font-weight: normal; padding: 4px 4px 4px 5px; width: 20%;">Infantes
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
                <td style=" font-weight: normal; padding: 4px 4px 4px 5px; width: 20%;">&nbsp;</td>
                <td style=" font-weight: normal; padding: 4px 4px 4px 5px; width: 20%;">&nbsp;</td>
              </tr>
    </table>

    <br>
 <div id="oum_internacional">
{OFERTAS_RUTA_INTERNACIONAL}
</div>  
         
<div id="oum_nacional"style="display:none" >
{OFERTAS_RUTA_NACIONAL}
</div>

  
<p class="condiciones">{_MSG_OUM_1_RESTRICCIONES} <a href="#;" onclick="javascript:SwapDiv('condiciones_4','bottom',this);" title="Ver Condiciones">t&eacute;rminos y  condiciones</a> {_MSG_OUM_2_RESTRICCIONES}</p>

    		<div class="bottom" id="condiciones_4" style="display: none;" onclick="javascript:SwapDiv('condiciones_4','bottom',this);">
			{+TYC_OFERTAS(id_oferta=43035)}

		</div>
    
  </div>
</div>
</div><br />

<!--<a href="http://twitter.com/LANoumCL"><img src="/images/sitio_personas/img_paginas/iconos/imagen_twitter.jpg" width="667" height="66" alt="S&iacute;guenos en Twitter" title="S&iacute;guenos en Twitter"></a></div> 
<!-- fin wrapper-promo -->