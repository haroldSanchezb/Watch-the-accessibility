<div id="panel-general">
	<br />
	<h1>{_TITULO2_SELECCION_PASAJERO_INGRESO_DATOS}</h1>
	<br />
	<br />
	<div class="content_tb_process">
		<h2>{_LABEL_ITINERARIO}</h2>
		<div class="box_content_process">
			<div class="box_int_border_process">
			</div>
		</div>
	</div>

	<br />
	<div class="content_tb_process">
		<h2>{_LABEL_PASAJERO}</h2>
		<div class="box_content_process">
			<div class="box_int_border_process">
				<br />
				{_MSG2_DETALLE_PASAJEROS_E_INGRESO_DATOS}

				<div id="list_pax_pnr">
					<ul>
						<li>
							<input type="checkbox" name="" value="value" />
							<label>Catalina Donoso</label>
						</li>
						<li>
							<input type="checkbox" name="" value="value" />
							<label>Matilde Baeza</label>
						</li>
						<li>
							<input type="checkbox" name="" value="value" />
							<label>Rodrigo Ochagavia</label>
						</li>
					</ul>
				</div>

				<!--CONTENIDO OPCION VER DATOS-->
				<div id="cont_ver_datos" class="lastline">
					<h3>{_LABEL_DATOS_CONTACTO_ORIGEN}</h3>
					<br />
					<br />
					<h4>{_LABEL_DATOS_PAX_ORIGEN}</h4>
					<div class="datos_origen">
						<ul>
							<li>
								<strong>{_LABEL_NOMBRE}</strong> Catalina
							</li>
							<li>
								<strong>{_LABEL_APELLIDO}</strong> Donoso
							</li>
							<li>
								<strong>{_LABEL_NUMERO_TICKET}</strong> 045-214706789
							</li>
							<li>
								<strong>{_SERVICIOS_ESPECIALES}</strong> {_LABEL_NO_INGRESADO}
							</li>
							<li>
								<strong>{_LABEL_TELEFONO}</strong> {_LABEL_NO_INGRESADO}
							</li>
							<li>
								<strong>{_LABEL_TELEFONO_OFICINA}</strong> {_LABEL_NO_INGRESADO}
							</li>
							<li>
								<strong>{_LABEL_MOVIL}</strong> {_LABEL_NO_INGRESADO}
							</li>
						</ul>
					</div>

					<div class="datos_destino lastline">
						<br />
						<h4>{_LABEL_CONTACTO_DESTINO}</h4>
						<br />
						<br />
						{_MSG_INGRESE_CONTACTO_DESTINO}
						<br />
						<br />
						<ul>
							<li>
								<strong>{_LABEL_NDESTINO}</strong> Santiago de Chile - Chile
							</li>
							<li>
								<strong>{_LABEL_NOMBRE}</strong> Catalina
							</li>
							<li>
								<strong>{_LABEL_APELLIDO}</strong> Donoso
							</li>
							<li>
								<strong>{_LABEL_NUMERO_TICKET}</strong> 045-214706789
							</li>
							<li>
								<strong>{_SERVICIOS_ESPECIALES}</strong> {_LABEL_NO_INGRESADO}
							</li>
							<li>
								<strong>{_LABEL_TELEFONO}</strong> {_LABEL_NO_INGRESADO}
							</li>
							<li>
								<strong>{_LABEL_MOVIL}</strong> {_LABEL_NO_INGRESADO}
							</li>
						</ul>
					</div>
				</div>

				<!--CONTENIDO OPCION EDITAR DATOS-->
				<div id="cont_editar_datos" class="lastline">
					<br />
					<h4>{_LABEL_EDITAR_INFO_CONTACTO_DESTINO}</h4>
					<br />
					<br />
					{_MSG_EDITAR_INFO_CONTACTO_DESTINO}
					<br />
					<br />
					<form method="" action="" id="" name="">
						<table class="table_formulario_pais_residencia" width="100%" cellspacing="0" cellpadding="0">
							<tr>
								<td style="width:30%;">
									<strong>{_LABEL_SELECCIONE_DESTINO}</strong>
								</td>
								<td class="table_formulario_lanpass_blanco">
									<select style="width: 155px;" name="">
										<option value="">{LABEL_SELECCIONE}</option>
									</select>
								</td>
							</tr>
						</table>

						<table class="table_formulario_lanpass" width="100%" cellspacing="0" cellpadding="0">
							<tr>
								<td style="width:30%;"><strong>{_LABEL_DESTINO}</strong></td>
								<td class="table_formulario_lanpass_blanco"><strong>Santiago de Chile - Chile</strong></td>
							</tr>
							<tr>
								<td style="width:30%;"><strong>{_LABEL_TELEFONO}</strong></td>
								<td class="table_formulario_lanpass_blanco">
									<input type="" name="" value="" size="3" />
									<input type="" name="" value="" size="4" />
									<input type="" name="" value="" size="8" />
									<small>{_LABEL_TELEFONO_IMPORTANTE}</small>
									<p>
										<label>{_LABEL_PAIS}</label>
										<label>{_LABEL_CIUDAD}</label>
										<label>{_LABEL_NUMERO}</label>
									</p>
									<p>{_LABEL_EJEMPLO_TELEFONO_LP}</p>
								</td>
							</tr>
							<tr>
								<td style="width:30%;"><strong>{_LABEL_MOVIL}</strong></td>
								<td class="table_formulario_lanpass_blanco">
									<input type="" name="" value="" size="3" />
									<input type="" name="" value="" size="4" />
									<input type="" name="" value="" size="8" />
									<small>{_LABEL_ROAMING}</small>
									<p>
										<label>{_LABEL_PAIS}</label>
										<label>{_LABEL_CIUDAD}</label>
										<label>{_LABEL_NUMERO}</label>
									</p>
									<p>{_LABEL_EJEMPLO_CELULAR}</p>
								</td>
							</tr>
						</table>
						<div class="cont_guardar">
							<a href="#" title="{_LABEL_CANCELAR}" target="_blank">{_LABEL_CANCELAR}</a>
							<a class="button-page" href="#" title="{_LABEL_GUARDAR_DATOS}" target="_blank">{_LABEL_GUARDAR_DATOS}</a>
						</div>
						<!--MENSAJE CUANDO SE EDITAN DATOS-->
						{_MSG_INFO_CONTACTO_DESTINO_EDITADA}
					</form>
				</div>
			</div>
		</div>
	</div>
	<div id="cont_btns">
		<a class="button-process" href="#" title="{_LABEL_VOLVER_AL_HOME}" target="_blank">{_LABEL_VOLVER_AL_HOME}</a>
		<a class="button-page" href="#" title="{_LABEL_EDITAR}" target="_blank">{_LABEL_EDITAR}</a>
		<a class="button-page" href="#" title="{_LABEL_VER_DATOS}" target="_blank">{_LABEL_VER_DATOS}</a>
	</div>
	</div>
</div>