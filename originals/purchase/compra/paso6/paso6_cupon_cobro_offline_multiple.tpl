{*CONTENIDO_CUPON}
<div class="cuerpo_cupon_small">

	<div id="bloque_titulo_cupon_small" class="bloque_cupon_small">
		<div class="titulo_cupon_small">
        <table width="695" border="0" cellspacing="0" cellpadding="0">
         <tr>
    		<td>{_CUPON_DE_PAGO} {NOMBRE_COMERCIO}</td>
    		<td style="text-align:right;">{_LABEL_CODIGO_PAGO}: {ID_PAGO}</td>
  		</tr>
	</table>
      </div>

	<div id="bloque_contenido_cupon_small" class="bloque_cupon_small">
			<div  class="fila_datos_codigo_barra">
    			{*CODIGO_DE_BARRA}
                <div><img src="{CODIGO_BARRA}" alt="{ID_PAGO}" ></div>
				{/CODIGO_DE_BARRA}
            </div>
		<div class="bloque_datos_small">
			<div class="fila_datos_small">
				<div class="imagen_simple_medios_small">{LOGO_COMERCIO}</div>
            </div>
				
			<div class="fila_datos_small">
				<div class="informacion_datos_small">{_LABEL_MONTO}:</div>
				<div class="resultado_datos_small">{MONTO_A_PAGAR}</div>
			</div>

			<div class="fila_datos_small">
				<div class="informacion_datos_small">{_LABEL_FECHA_LIMITE_PAGO}:</div>
				<div class="resultado_datos_small">{FECHA_LIMITE}</div>
			</div>

		</div>

	</div>
</div>

</div>
{/CONTENIDO_CUPON}
