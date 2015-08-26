<!--
AUTH: ASOCIADOS
-->

<h1>Cotizaci&oacute;n de Grupo</h1>
<h2>Informaci&oacute;n enviada con &eacute;xito</h2>

<br>
<br>

<h4>Se han asignado los siguientes identificadores para su cotizaci&oacute;n</h4>

<table class="table" width="100%"  border="0" cellspacing="0" cellpadding="0">
<col width="30%">
<col>

{*QUOTATION}
<tr>
<td class="sub-titulo">ID de la cotizaci&oacute;n:</td>
<td>{ID_QUOTATION} 
</td>
<td>
	<a href="/cgi-bin/asociados/formularios_grupos.cgi?action=send_form&amp;form_name=find_quotation_by_id&amp;iata_cdg={+ASOCIADOS_INFO('iata_cdg')}&amp;identifier={+ASOCIADOS_INFO('rut_empresa')}&amp;id_quotation={ID_QUOTATION}">
		Ver cotizaci&oacute;n
	</a>
</td>
</tr>
{/QUOTATION}
</table>
<br>
<br>

