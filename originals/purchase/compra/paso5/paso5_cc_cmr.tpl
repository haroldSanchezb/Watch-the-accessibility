<script type='text/javascript'>
function valida_forma_pago(f)
	{
	var msg = '';
	if (f.cmr_nombre_pagador.value == "")
		{
		change_bg_for_id("cmr_nombre_pagador", "dato-erroneo");
		msg += "--> {_ERROR_INGRESE_NOMBRE_TITULAR_TARJETA_JS}\n";
		}
	if (f.cmr_apellido_pagador.value == "")
		{
		change_bg_for_id("cmr_apellido_pagador", "dato-erroneo");
		msg += "--> {_ERROR_INGRESE_APELLIDO_TITULAR_TARJETA_JS}\n";
		}
	if (f.cmr_rut_pagador.value == "" || !IsRut(f.cmr_rut_pagador.value))
		{
		change_bg_for_id("cmr_rut_pagador", "dato-erroneo");
		msg += "--> {_ERROR_INGRESE_RUT_CMR_JS}\n";
		}
	if (msg != '')
		{
		return(msg);
		}
	return('');
	}
</script>

{DATA_LAYER_LOCAL_DEFINITION}

<table class="table" cellpadding="0" cellspacing="0" width="100%">
	<tr>
	  <th colspan="2" style="text-align:left;">{MSG_DESCRIPCION}</th>
	</tr>

	<tr>
		<td>{_LABEL_NOMBRE}:</td>
		<td><input id="cmr_nombre_pagador" name="cmr_nombre_pagador" type="text" class="input-txt" style=" width: 120px"/></td>
	</tr>
	<tr>
		<td>{_LABEL_APELLIDO}:</td>
		<td><input id="cmr_apellido_pagador" name="cmr_apellido_pagador" type="text" class="input-txt" style=" width: 120px"/></td>
	</tr>
	<tr>
		<td>{_LABEL_RUT}:</td>
		<td><input id="cmr_rut_pagador" name="cmr_rut_pagador" type="text" class="input-txt" style=" width: 120px"/></td>
	</tr>

	<tr><td colspan="2">{_MSG_DATOS_CMR}</td></tr>
</table>
