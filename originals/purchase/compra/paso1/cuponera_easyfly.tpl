<h2>{ORIGEN_DESTINO}</h2>
<br>
<br>
{*CUPONERA}
<h4>{_LABEL_FECHA_VENCIMIENTO_CUPONERA} <b>{FECHA_VENCIMIENTO_CUPONERA}</b></h4>
<table class=table cellpadding="0" cellspacing="0" width="100%">

	<tr>
		<th colspan=2>{_LABEL_TITULARES_CUPONERA} <b>{LISTA_TITULARES}</b> </th>
		<th>{_LABEL_NUMERO_CUPONERA} <b>{NUMERO_CUPONERA}</b> </th>
		
	</tr>
	<tr>
		<th><b>{_LABEL_CUPONES}</b></th>
		<th><b>{_LABEL_PASAJERO_CUPON} </b></th>
		<th><b>{_LABEL_USAR_CUPON} </b></th>
	</tr>
	{*CUPON}
	<tr>
		<td>{NUM_CUPON}</td>
		<td><select id='titular_{ID_CUPON}' name='titular_{ID_CUPON}'>
			 <option value=''>{_LABEL_SELECCIONE}</option>
			{LISTA_TITULARES_CUPON}
			</select></td>
		<td><input id='usa_cupon_{ID_CUPON}_cuponera_{ID_CUPONERA}_{IDA_REGRESO}' name='usa_cupon_{ID_CUPON}_cuponera_{ID_CUPONERA}_{IDA_REGRESO}' type=checkbox onClick="checkbox_marcados('usa_cupon_{ID_CUPON}_cuponera_{ID_CUPONERA}_{IDA_REGRESO}' , '{IDA_REGRESO}', '{ID_CUPON}')"></td>
	</tr>
	{/CUPON}

</table>

{/CUPONERA}
