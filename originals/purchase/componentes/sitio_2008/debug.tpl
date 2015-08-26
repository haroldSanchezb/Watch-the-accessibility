<style type="text/css">
#debug b.mas
	{
	color: #1D1F76;
	font-size: 1.45em;
	font-weight: bold;
	}
#debug a
	{
	font-size: 1.45em;
	cursor: pointer;
	color: red;
	text-decoration: none;
	text-align: center;
	font-weight: bold;
	}
#debug td 
	{
	vertical-align: top;
	/*border-bottom: white solid 1px;*/
	}
#debug table
	{
	width: 99%;
	border: solid 1px; 
	font-size: 8pt; 
	background-color: #ffffe0;
 	}
#debug pre
	{
	line-height: 0.7em;
	}
</style>

<script type="text/javascript">
	debug_open_close = function(id)
		{
		var obj = document.getElementById(id);
		var button = document.getElementById(id + '_button');
		
		if (obj.collapsed)
			{
			obj.innerHTML = obj.fullHTML;
			obj.collapsed = '';
			button.innerHTML = '-';
			}
		else
			{
			obj.fullHTML = obj.innerHTML;
			obj.collapsed = 1;
			button.innerHTML = '+';

			var length_preview = obj.innerHTML.length;
			if (length_preview > 20)
				{
				length_preview = 20;
				}
				
			obj.innerHTML = obj.innerHTML.substr(0, length_preview) + ' <b class="mas">(...)</b>';
			}
		}
</script>

<div id="debug">
	<table style=" width: 99%; border: solid 1px; font-size: 8pt; background-color: #ffffe0;">
	{*CONTENIDO}
		<tr>
			<td><a id="{ID}_button" onClick="debug_open_close('{ID}');">-</a></td>
			<td style="width: 100px;"><b>{TIME}</b></td>
			<td>:</td>
			<td id="{ID}">{MSG}</td>
		</tr>
	{/CONTENIDO}
	</table>	
</div>
<br>

