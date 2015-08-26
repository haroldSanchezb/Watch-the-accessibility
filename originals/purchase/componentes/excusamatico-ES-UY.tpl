
<script type="text/javascript" >
	function ocultar()
	{
		document.getElementById("floatlayer").style.visibility = 'hidden';
	}
</script>

<div id="floatlayer" style="position: absolute; top: 310px; left: 3px; z-index:1">

<script type="text/javascript">
if (!useRedirect) // if dynamic embedding is turned on
	{
	if(hasRightVersion) // if we've detected an acceptable version
		{
		AC_FL_RunContent(
			'width',             '565',
			'height',            '450',
			'src',               '/files/promociones/data/sudamerica/cl/cl/banner_dardo_uy',
			'quality',           'high',
			'wmode',             'transparent',
			'pluginspage',       'http://www.macromedia.com/go/getflashplayer',
			'movie',             '/files/promociones/data/sudamerica/cl/cl/banner_dardo_uy'
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

<script type="text/javascript">setTimeout('ocultar()', 9000);</script>
