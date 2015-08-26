<script type="text/javascript" src="/js/prototype.js"></script>
<script type="text/javascript" src="/js/scriptaculous/scriptaculous.js"></script>
<script type="text/javascript">
var bv = false;

function select_checkbox (tipo_pax, ind)
	{
	if (document.getElementById ('il_pax_' + tipo_pax + '_' + ind + '_pais_nacionalidad').value != '' && document.getElementById ('il_pax_' + tipo_pax + '_' + ind + '_pais_residencia').value != '' && document.getElementById ('il_pax_' + tipo_pax + '_' + ind + '_email').value != '')
		{
		return true;
		}
	return false;
	}

function show_inscripcion ()
	{
	var tipo_pax = ['ADT', 'CHD'];
	var primer_pax_tipo = '';
	var primer_pax_ind = '';
	var datos_completos = true;
	var pipax = 0;
	for (var tp = 0; tp < tipo_pax.length; tp++)
		{
		for (var ind = 1;;ind++)
			{
			if (document.getElementById ('pax_' + tipo_pax[tp] + '_' + ind + '_ff_airline'))
				{
				if (document.getElementById ('pax_' + tipo_pax[tp] + '_' + ind + '_ff_airline').value == 'LA')
					{
					document.getElementById ('divpax' + '_' + tipo_pax[tp] + '_' + ind).style.display = 'none';
					}
				else
					{
					pipax++;
					document.getElementById ('divpax' + '_' + tipo_pax[tp] + '_' + ind).style.display = 'inline';
					document.getElementById ('il_pax_' + tipo_pax[tp] + '_' + ind + '_pais_nacionalidad').disabled = false;
					document.getElementById ('il_pax_' + tipo_pax[tp] + '_' + ind + '_pais_residencia').disabled = false;
					document.getElementById ('il_pax_' + tipo_pax[tp] + '_' + ind + '_email').disabled = false;
					document.getElementById ('il_pax_' + tipo_pax[tp] + '_' + ind + '_flag').disabled = false;
					}
				}
			if (document.getElementById ('pax_' + tipo_pax[tp] + '_' + ind + '_nombre'))
				{
				if (primer_pax_ind == '')
					{
					primer_pax_tipo = tipo_pax[tp];
					primer_pax_ind = ind;
					}
				if (document.getElementById ('pax_' + tipo_pax[tp] + '_' + ind + '_nombre').value == '' || document.getElementById ('pax_' + tipo_pax[tp] + '_' + ind + '_primer_apellido').value == '')
					{
					datos_completos = false;
					break;
					}
				}
			else
				{
				break;
				}
			}
		}
	if (datos_completos)
		{
		for (var tp = 0; tp < tipo_pax.length; tp++)
			{
			for (var ind = 1;;ind++)
				{
				if (document.getElementById ('il_pax_' + tipo_pax[tp] + '_' + ind + '_nombre'))
					{
					document.getElementById ('il_pax_' + tipo_pax[tp] + '_' + ind + '_nombre').innerHTML = document.getElementById ('pax_' + tipo_pax[tp] + '_' + ind + '_nombre').value;
					document.getElementById ('il_pax_' + tipo_pax[tp] + '_' + ind + '_primer_apellido').innerHTML = document.getElementById ('pax_' + tipo_pax[tp] + '_' + ind + '_primer_apellido').value;
					}
				else
					{
					break;
					}
				}
			}
		document.getElementById ('il_pax_' + primer_pax_tipo + '_' + primer_pax_ind + '_email').value = document.getElementById('email').value;
		if (bv)
			{
			document.getElementById('menu_inscripcion').style.display = 'none';
			document.getElementById('sin_inscripcion').style.display = 'none';
			bv = false;
			}
		else
			{
			if (pipax > 0)
				{
				document.getElementById('menu_inscripcion').style.display = 'block';
				}
			else
				{
				document.getElementById('sin_inscripcion').style.display = 'block';
				}
			bv = true;
			}
		}
	else
		{
		alert ("{_MSG_VALIDACION_INSCRIPCION_PASO4_JS}");
		}
	return false;
	}
</script>

<h4>{_MSG_ACUMULE_KMS_LANPASS}</h4>
<div id='sin_inscripcion' style="display: none;">{_MSG_NO_NECESARIO_PASO4}</div>
<div id='menu_inscripcion' style="display: none;">
  <table class="table" width="100%" cellspacing="0" cellpadding="0">
    <tr>
      <td colspan="6">{_MSG_INSCRIBIR_PASAJEROS}</td>
    </tr>
    <tr>
      <th style="width:20%; text-align:left;">{_LABEL_NOMBRE}</th>
      <th style="width:20%; text-align:left;">{_LABEL_APELLIDO}</th>
      <th style="width:15%; text-align:left;">{_LABEL_NACIONALIDAD}</th>
      <th style="width:15%; text-align:left;">{_LABEL_RESIDENCIA}</th>
      <th style="width:20%; text-align:left;">{_LABEL_EMAIL}</th>
      <th style="width:10%; text-align:center;">{_LABEL_INSCRIBIR_LANPASS}</th>
    </tr>
    {*DATOS_INSCRIPCION}
    <tr>
      <div id='divpax_{PAX_TYPE}_{NUM_PAX}' style="display: inline;">
        <td style="text-align:left;"><div id='il_pax_{PAX_TYPE}_{NUM_PAX}_nombre'></div></td>
        <td style="text-align:left;"><div id='il_pax_{PAX_TYPE}_{NUM_PAX}_primer_apellido'></div></td>
        <td style="text-align:left;"><select style="width:120px" id='il_pax_{PAX_TYPE}_{NUM_PAX}_pais_nacionalidad' name='il_pax_{PAX_TYPE}_{NUM_PAX}_pais_nacionalidad' onChange="if(document.getElementById('il_pax_{PAX_TYPE}_{NUM_PAX}_pais_residencia').selectedIndex == 0) document.getElementById('il_pax_{PAX_TYPE}_{NUM_PAX}_pais_residencia').selectedIndex = this.selectedIndex">
            <option value="">{_LABEL_SELECCIONE}</option>{+OPTION_PAIS}</select></td>
        <td style="text-align:left;"><select style="width:120px" id='il_pax_{PAX_TYPE}_{NUM_PAX}_pais_residencia' name='il_pax_{PAX_TYPE}_{NUM_PAX}_pais_residencia'>
            <option value="">{_LABEL_SELECCIONE}</option>{+OPTION_PAIS}</select></td>
        <td style="text-align:left;"><input type=text class=input name="il_pax_{PAX_TYPE}_{NUM_PAX}_email" id="il_pax_{PAX_TYPE}_{NUM_PAX}_email" value='' maxlength="40" style="width:140px"></td>
        <td style="text-align:center;"><input type=checkbox class=input name="il_pax_{PAX_TYPE}_{NUM_PAX}_flag" id="il_pax_{PAX_TYPE}_{NUM_PAX}_flag" value='on' onClick="return (select_checkbox ('{PAX_TYPE}', '{NUM_PAX}'))"></td>
      </div>
    </tr>
    {/DATOS_INSCRIPCION}
    <tr>
      <td colspan="6">{_MSG_EXPLICACION_ACUMULE_KMS}</td>
    </tr>
  </table>
</div>
<table id="qa_kms_lanpass" class="table" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td>{*ACUMULA_KMS} <b>{_MSG_VUELO_KMS_LANPASS}</b> {/ACUMULA_KMS} {_MSG_SOCIO_KMS_LANPASS}</td>
  </tr>
</table>
