<script type="text/javascript">
function display_finger()
{
        var how_many_ads = 4;
        var now = new Date()
        var sec = now.getSeconds()
        var ad = sec % how_many_ads;
        var pais = get_pais().toUpperCase();

   	ad +=1;
        alt="";
        width="500";
        height="330";
        banner = "/images/sitio_personas/layout/dedo"+ad+"-"+pais+".gif"
       

	var div = document.getElementById("contentWaiting"); 
	contenido = '<center>';
        contenido += '<img src=\"' + banner + '\" width=';
        contenido += width + ' height=' + height + ' ';
        contenido += 'alt=\"' + alt + '\" border=0 /><br>';
        contenido += '</center>';
	div.innerHTML = contenido;
}
        
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

</script>

<div id="waiting" align="center">
<br>
<br>
<br>
<br>
<br>
<div id="content"><img src="/images/html/logolan.gif" alt="Logo LAN" width="201" height="42">
<br>
<br>
	<script type="text/javascript">
AC_FL_RunContent( 'width','164','height','35','title','Loading...','src','/files/loading','quality','high','pluginspage','http://www.macromedia.com/go/getflashplayer','movie','/files/loading' ); //end AC code
</script>
<br>
		<p id="titulo">{_MSG_ALTERNATIVAS}</p>
</div>
</div>