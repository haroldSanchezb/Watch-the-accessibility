<script type="text/javascript"> 
var script_name = '{SCRIPT_NAME}';
var server_name = '{SERVER_NAME}';

if(typeof get_pais !== 'function') {
    function get_pais()
    {
        var cookie = rdCookie("pcom");
        if (cookie) {
            var pcom = cookie.replace("%2F","/");
            pcom = pcom.toLowerCase();
            var idpa = pcom.split("/");
            var pais = idpa[1];
            if(idpa[0] == 'espanol') return 'es-'+pais;
            if(idpa[0] == 'pt') return 'pt-'+pais;
            if(idpa[0] == 'es') return 'es-'+pais;
            if(idpa[0] == 'en') return 'en-'+pais;
            if(idpa[0] == 'english') return 'en-'+pais;
            if(idpa[0] == 'deutsch') return 'de-'+pais;
            if(idpa[0] == 'fr') return 'fr-'+pais;
        }
        return 'es-cl';
    }
    function rdCookie(name) {
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for(var i=0;i < ca.length;i++) {
            var c = ca[i];
            while (c.charAt(0)==' ') c = c.substring(1,c.length);
            if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
        }
        return null;
    }

}


</script>

<div id="breadcrumb-proceso">
	<table cellspacing="0" cellpadding="0"> 
		<tr>
        	{*PASO_ANTERIOR}
			<td class="first">{PASO}. <a href="javascript:just_refresh_paso_n('{PASO}','{PASO_ACTUAL}','{SESSION_ID}')" id='a_paso{PASO}'>{TITULO}</a></td>
            <td class="separador"></td>
			{/PASO_ANTERIOR}
			{*PASO_ANTERIOR_2_NEW}
				<td class="first">{PASO}. <a href="javascript:just_refresh_paso_2_new('{PASO_ACTUAL}','{URL_PARAMS}')" id='a_paso{PASO}'>{TITULO}</a></td>
<td class="separador"></td>
			{/PASO_ANTERIOR_2_NEW}
			{*PASO_ANTERIOR_RESERVA}
			<td class="first">{PASO}. <a href="javascript:just_refresh_paso_n_reserva('{PASO}','{PASO_ACTUAL}','{SESSION_ID}')" id='a_paso{PASO}'>{TITULO}</a></td>
            <td class="separador"></td>
            {/PASO_ANTERIOR_RESERVA}
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
