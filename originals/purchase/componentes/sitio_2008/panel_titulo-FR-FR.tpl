<script type="text/javascript">

function toggle_numero(span_fono)
	{
	var swap = span_fono.innerHTML;
	span_fono.innerHTML = document.getElementById("swap_text").innerHTML;
	document.getElementById("swap_text").innerHTML = swap;		
	}

</script>
{+TEMPLATE('/sitio_personas/layout/header.tpl')}