
<script type="text/javascript" >
	function ocultar()
	{
		document.getElementById("floatlayer").style.visibility = 'hidden';
	}
</script>

<div id="floatlayer" style="position: absolute; top: 348px; left: 3px; z-index:100">

<script type="text/javascript">
if (!useRedirect) // if dynamic embedding is turned on
	{
	if(hasRightVersion) // if we've detected an acceptable version
		{
		AC_FL_RunContent(
			'width',             '564',
			'height',            '450',
			'src',               '/files/promociones/data/sudamerica/cl/layer_viaje_mx',
			'quality',           'high',
			'wmode',             'transparent',
			'pluginspage',       'http://www.macromedia.com/go/getflashplayer',
			'movie',             '/files/promociones/data/sudamerica/cl/layer_viaje_mx'
			);
		}
	else // flash is too old or we can't detect the plugin
		{
		var alternateContent = '';

		document.write(alternateContent);  // insert non-flash content
		}
	}
</script>

</div>

<script type="text/javascript">setTimeout('ocultar()', 18000);</script>
