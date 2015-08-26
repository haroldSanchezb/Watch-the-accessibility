<script type="text/javascript">

function redirect_site_login(f)
	{
	var elementos = f.elements.length;
	var url = '/cgi-bin/compra/calendario_promociones.cgi?';
	var elem_param_extra = f.url_paso2_original_compra_normal;
	var param_extra = elem_param_extra.name + '%3D' + elem_param_extra.value;
	
	
	for (var i = 0; i < elementos; i++)
		{
		var elemento = f.elements[i];
		if (elemento.name == 'button')
			{
			continue;
			}
		if (elemento.name == 'url_paso2_original_compra_normal')
			{
			continue;
			}
			
		if (i != 0)
			{
			url += ';';
			}
		url += elemento.name + '=' + elemento.value;
		}

	url = escape(url);
	window.location = '/cgi-bin/site_login.cgi?page=' + url + '&aux_query_string=' + param_extra;
	}
	

</script>
<table class="table" cellspacing="0" cellpadding="0" style="background: #f6feed;">
  <tr>
    <th style="text-align: left;">{_LABEL_APROVECHE_PROMOCION}:</th>
  </tr>
  <tr>
    <td style="text-align: left;">{_LABEL_IR_A_PROMO_CALENDARIO_EXPLICACION}</td>
  </tr>
  <tr>
    <td style="text-align: right;"><form action='calendario_promociones.cgi' method='POST' name='paso2'>
        {*ELEMENTO_INPUT}
        <input type='hidden' name='{NAME}' value='{VALUE}'>
        {/ELEMENTO_INPUT}
        <input type='button' value='{_LABEL_IR_A_PROMO_CALENDARIO}' OnClick="redirect_site_login(this.form)" class='boton-destacado' name="button">
      </form></td>
  </tr>
</table>
<br>
