
<script type="text/javascript" >
	function ocultar()
	{
		document.getElementById("floatlayer").style.visibility = 'hidden';
	}
</script>

<div id="floatlayer" style="position: absolute; top: 348px; left: 150px; z-index:100">

<script type="text/javascript">
if (!useRedirect) // if dynamic embedding is turned on
	{
	if(hasRightVersion) // if we've detected an acceptable version
		{
		AC_FL_RunContent(
			'width',             '400',
			'height',            '250',
			'src',               '/files/promociones/data/sudamerica/ar/ar/400x250lan',
			'quality',           'high',
			'wmode',             'transparent',
			'pluginspage',       'http://www.macromedia.com/go/getflashplayer',
			'movie',             '/files/promociones/data/sudamerica/ar/ar/400x250lan'
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

<script type="text/javascript">setTimeout('ocultar()', 15000);</script>
