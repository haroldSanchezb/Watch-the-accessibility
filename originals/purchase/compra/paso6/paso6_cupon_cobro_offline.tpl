{*CONTENIDO_CUPON}
<div id="contenedor_pago_reserva">
	<h2>{_TITULO_PASO6_CUPONES}</h2>
	<div id="box-content">
		<div id="box-int-border">
			<div class="cuerpo_cupon">
				<div id="bloque_titulo_cupon" class="bloque_cupon">
					<div class="titulo_cupon">{_CUPON_DE_PAGO} {NOMBRE_COMERCIO}</div>
				</div>

				<div id="bloque_contenido_cupon" class="bloque_cupon">
					<div class="bloque_datos">
						<div class="fila_datos">
							<div class="imagen_simple_medios">
								{LOGO_COMERCIO}
							</div>
							<div class="imagen_simple_lan">
								<img src="http://www.lan.com/images/cajero/logo_lan.gif" width="148" height="45" alt=""/>
							</div>
							<div class="texto_simple_medios">
								{GLOSA_CUPON}
							</div>
						</div>

						<div class="fila_datos">
							<div class="informacion_datos">{_LABEL_MONTO}:</div>
							<div class="resultado_datos">{MONTO_A_PAGAR}</div>
						</div>

						<div class="fila_datos">
							<div class="informacion_datos">{_LABEL_FECHA_LIMITE_PAGO}:</div>
							<div class="resultado_datos">{FECHA_LIMITE}</div>
						</div>

						<div class="fila_datos">
								{*CODIGO_ID_PAGO}
								<div class="informacion_datos">{_LABEL_CODIGO_PAGO}:</div>
								<div class="resultado_datos">{ID_PAGO}</div>
								{/CODIGO_ID_PAGO}
								{*CODIGO_DE_BARRA}
								<div class="informacion_datos">{_LABEL_CODIGO_BARRAS}:</div>
								 <div class="resultado_datos">
									<img src="{CODIGO_BARRA}" alt="{ID_PAGO}">
								</div>
								{/CODIGO_DE_BARRA}
						</div>
					</div>

					<div class="bloque_simple_terminos">
						<div class="linea_terminos"></div>
						<div class="texto_terminos">{MSG_COMPROBANTE}</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
{/CONTENIDO_CUPON}
