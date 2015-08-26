 <!--INICIO DESTINO -->

<div class="cont_promociones">
	<div class="col_01">
		<h3>{ORIGEN} - <strong>{DESTINO}</strong></h3>
		<p><strong>Ida y vuelta</strong></p>
		<p><img src="{URL_IMAGEN}" alt="{DESTINO}" title="{DESTINO}" width="120" height="70" border="0"></p>
	</div>

	<div class="col_02">
		<div class="fila avion">
			<div class="botones">
				<p class="{CLASS_BOTON_COMPRA}"><a href="javascript:check_and_submit('{URL_BOTON_COMPRA}', 'compra')" title="{TITLE_COMPRAR}">{TEXTO_BOTON_COMPRA}</a></p>
				
			</div>

			<h4>Pasajes</h4>
			<p>Desde <span class="tarifa"><strong>US$ {MONTO} </strong></span>/ S/. {MONTO_TASAS}</p>				 
		  <h5>&nbsp;</h5>
		</div>

	 <!--	<div class="bottom" id="condiciones_3" style="display: none;"></div> -->

		<div class="linea"></div>

		<div class="fila avion">

			<div class="botones">
				<p class="{CLASS_BOTON_CPLP}"><a href="javascript:check_and_submit('{URL_BOTON_CPLP}', 'cplp')"  title="Canjear">{TEXTO_BOTON_CPLP}</a></p> 
				
			</div>

			<h4>Canje de kms.</h4>
			{*BLOQUE_MONTO_KMS}<p>Desde <span class="tarifa"><strong>{MONTO_KMS} kms.</strong></span></p>{/BLOQUE_MONTO_KMS}
			<h5>&nbsp;</h5>
		</div>

		<!--<div class="linea"></div>
		<div class="bottom tasas">M&aacute;s impuestos y tasas de embarque de {MONEDA_TASAS} {MONTO_TASAS} por persona.</div> -->
	</div>
</div>
<!--FIN DESTINO -->
