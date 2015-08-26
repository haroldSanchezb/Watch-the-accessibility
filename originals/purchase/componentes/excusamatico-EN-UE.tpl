
<script type="text/javascript" >
	function ocultar()
	{
		document.getElementById("floatlayer").style.visibility = 'hidden';
	}
</script>

<div id="floatlayer" style="position: absolute; top: 370px; left: 150px; z-index:1">

<script type="text/javascript">
if (!useRedirect) // if dynamic embedding is turned on
	{
	if(hasRightVersion) // if we've detected an acceptable version
		{
		AC_FL_RunContent(
			'width',             '400',
			'height',            '250',
			'src',               '/files/promociones/data/europa/todo_europa/euro_lima_layer400x250',
			'quality',           'high',
			'wmode',             'transparent',
			'pluginspage',       'http://www.macromedia.com/go/getflashplayer',
			'movie',             '/files/promociones/data/europa/todo_europa/euro_lima_layer400x250'
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

<script type="text/javascript">setTimeout('ocultar()', 25000);</script>
