<div id="breadcrumb-proceso">
	<table cellspacing="0" cellpadding="0"> 
		<tr>
        	{*PASO_ANTERIOR}
			<td class="first">{PASO}. <a href="{URL}" id='a_paso{PASO}'>{TITULO}</a></td>
            <td class="separador"></td>
            {/PASO_ANTERIOR}
			{*PASO_SIGUIENTE}
			<td class="{CLASS}">{PASO}. {TITULO}</td>
            <td class="separador"></td>
            {/PASO_SIGUIENTE}
        </tr>
	</table>
	{*ESTADO_APLICACION}
		{MSG_ESTADO_APLICACION}
	{/ESTADO_APLICACION}
</div>
