<script type="text/javascript" src="/js/mlddmenu.js"></script>
<link rel="stylesheet" type="text/css" href="/css/menu_toolbox.css">

<ul class="mlddm" params="1,-1,500,none,200">
	{*ITEM}<li>
	<a href="{URL}" class="{CLASS}" style="width: auto;">{TEXTO}</a>
	{SUBITEMS}</li>
	{/ITEM}
</ul>

{*SUBITEM}<ul>
	{*ITEMS_INNER}<li>
	<a href="{URL}" class="{CLASS}">{TEXTO}</a>
	{SUBITEMS}</li>
	{/ITEMS_INNER}
	</ul>
{/SUBITEM}

