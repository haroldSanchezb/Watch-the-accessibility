<tr class="{ES_PAR}" style="height: 27px; font: normal 12px Arial, sans-serif; color: #333; text-align: right; vertical-align: text-top;"> 
	<td style="white-space: nowrap; padding: 0 8px 0 8px; text-align: left;">{_LABEL_PASAJERO} {PAX_TYPE_TXT} {_LABEL_NUMERO_ABREVIADO} {NUM_PAX}</td>
	<td style="padding: 0 8px 0 8px;">{KMS_PASAJERO}</td>
	<td style="padding: 0 8px 0 8px;">{TARIFA}</td>
	<td style="padding: 0 8px 0 8px;">{IMPUESTOS}</td>
	{CAMPO_TUUA}
	{CAMPO_SOBRECARGO}
	{CAMPO_FEE}
	{CAMPO_IMPUESTO_ZK}
	<td style="padding: 0 8px 0 8px;"><a title="{_LABEL_TOTAL}" href="javascript:ajaxpage('/cgi-bin/compra/show_taxes.cgi?accion=show_taxes&amp;session_id={SESSION_ID}&amp;n_tax={N_TAX}&amp;t_pax={T_PAX}&amp;n_pax={NUM_PAX}&amp;cc_data={NO_CONTACT_CENTER_FEE}', 'content_layer_espera_proceso');showLightbox_espera_procesa_pago('layer_general');">{TOTAL}</a></td>
</tr>

