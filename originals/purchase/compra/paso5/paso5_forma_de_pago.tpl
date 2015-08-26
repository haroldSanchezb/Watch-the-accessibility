	<b>{_LABEL_FORMA_PAGO}</b>
	<table cellpadding="0" cellspacing="0">
		<tr>
			<td>
				<table cellpadding="2" cellspacing="0" width="100%">
					<tr>
						<td>
							<b>{_LABEL_CC_EMITIDA_EN_CHILE}</b>
						</td>
					</tr>
				</table>
				&nbsp;
				<br>A continuaci&oacute;n ingrese la informaci&oacute;n necesaria para procesar su pago con tarjeta de cr&eacute;dito.
				<br>
				<br>
				<table cellpadding="0" cellspacing="0">
					<tr>
						<td>
							{_LABELTIPO}
								<br>{_LABEL_DE_TARJETA}
						</td>
						<td>
							{_LABEL_NUMERO}
								<br>{_LABEL_DE_TARJETA}
						</td>
						<td>
							{_LABEL_FECHA_EXPIRACION}
							<br>
						</td>
						<td>
							{_LABEL_CODIGO}
								<br>{_LABEL_DE_VERIFICACION}
						</td>
					</tr>
					<tr>
						<td>
							<select>
								<option>
								{_LABEL_SELECCIONE}
								</option>
								<option>
								{_LABEL_VISA}
								</option>
								<option>
								{_LABEL_MASTERCARD}
								</option>
								<option>
								{_LABEL_DINERS}
								</option>
								<option>
								{_LABEL_AX}
								</option>
								<option>
								{_LABEL_AX}
								</option>
							</select>
						</td>
						<td>
							<input type=text class=input size="16">
						</td>
						<td>
							<select>
								<option>
								01
								<option>
								02
								<option>
								03
								<option>
								04
								<option>
								05
								<option>
								06
							</select>
							<select>
								<option>
								2003
								<option>
								2004
								<option>
								2005
								<option>
								2006
								<option>
								2007
								<option>
								2008
							</select>
							&nbsp;&nbsp;&nbsp;
						</td>
						<td>
							<input type=text class=input size="5" maxlength="4">
						</td>
					</tr>
					<tr>
						<td>
							{_LABEL_EJ} {_LABEL_VISA}
						</td>
						<td>
							5469824526415826
						</td>
						<td>
							12/2004
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
				</table>
				<b>{_MSG_CANTIDAD_DE_CUOTAS_A_PAGAR}</b>
				<br>
				<br>
				<select>
					<option>
					{_LABEL_SIN_CUOTAS}
					<option>
					3 {_LABEL_CUOTAS_CON_INTERESES}
					<option>
					6 {_LABEL_CUOTAS_CON_INTERESES}
					<option>
					9 {_LABEL_CUOTAS_CON_INTERESES}
					<option>
					12 {_LABEL_CUOTAS_CON_INTERESES}
				</select>
				<br>&nbsp;
				<br>
				<b>{_LABEL_NOMBRE_TITULAR}</b>
				{_LABEL_EXACTAMENTE_COMO_APARECE_TARJETA}
				<br>
				<input type=text class=input size="32">
				<br>&nbsp;
				<br>
				<b>{_LABEL_RUT_TITULAR}</b>
				<br>
				<input type=text class=input size="12">
				<br>{_MSG_TITULAR_CC_TIENE_QUE_SER_PASAJERO}
				<br>&nbsp;
				<br>
				<b>{_LABEL_DIRECCION}</b>
				<br>
				<input type=text class=input size="32">
				<br>&nbsp;
				<br>
				<b>{_LABEL_CIUDAD}</b>
				<br>
				<input type=text class=input size="24">
				<br>
			</td>
		</tr>
	</table>
	<p>
		<input type=checkbox>
		<b>{_MSG_ACEPTO_CONDICIONES_COMPRA}</b>
		<br>{_MSG_ACEPTO_COMPRAR_VIAJE_Y_CONDICIONES}
	</p>
	<a href='paso6.cgi?session_id={SESSION_ID}'></a>
	<br>
	<a href='paso4.cgi?session_id={SESSION_ID}'>{_LABEL_VOLVER}</a>
