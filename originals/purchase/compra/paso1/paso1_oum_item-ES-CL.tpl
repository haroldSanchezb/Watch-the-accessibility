 <!--INICIO DESTINO -->
<style type="text/css">
<!--
#espacioParaBorrar {
	height: 30px;
}
-->
</style>


<div class="cont_promociones" style="width:99%">
	<div class="col_01" style="width:20%">
		<h3>{ORIGEN} - <strong>{DESTINO}</strong></h3>
		<p><strong>Ida y vuelta</strong></p>
		<p><img src="{URL_IMAGEN}" alt="{DESTINO}" title="{DESTINO}" width="120" height="70" border="0"></p>
	</div>

	<div class="col_02" style="width:75%">
		<div class="fila avion">
			<div class="botones">
				<p class="{CLASS_BOTON_COMPRA}"><a href="javascript:check_and_submit('{URL_BOTON_COMPRA}', 'compra')" title="{TITLE_COMPRA}">{TEXTO_BOTON_COMPRA}</a></p>
				
			</div>

			<h4>Pasajes</h4>
			<p>Desde <span class="tarifa"><strong>{MONEDA}$ {MONTO}</strong></span></p>				 
			<h5>&nbsp;</h5>
		</div>

	 <div class="bottom" id="condiciones_3" style="display: none;"></div>
     <div class="linea">        </div>


        <div class="fila avion">

<div class="botones">
				<p class="{CLASS_BOTON_CPLP}"><a href="javascript:check_and_submit('{URL_BOTON_CPLP}', 'cplp')"  title="Canjear">{TEXTO_BOTON_CPLP}</a></p> 
				
			</div>

			<h4>Canje de kms.</h4>
			{*BLOQUE_MONTO_KMS}<p>Desde <span class="tarifa"><strong>{MONTO_KMS} kms.</strong></span></p>{/BLOQUE_MONTO_KMS}</div> 

<div class="linea"></div>
	  <div class="bottom tasas" style="margin-top:35px"><span class="texto_tasas">No incluye tasas de</span> {MONEDA_TASAS} {MONTO_TASAS} por persona.</div>
  </div>
</div>
<!--FIN DESTINO -->
