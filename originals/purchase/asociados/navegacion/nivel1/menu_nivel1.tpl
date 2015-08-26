<STYLE type=text/css>

/* Posicionamiento y visibilidad */
#menu, #menu ul {
	padding: 0;
	margin: 0;
	list-style: none;
}

#menu a {
	display: block;
	width: 160px;
}

#menu li {
	float: left;
	width: 160px;
	margin: 0;
}

#menu li ul ul{
	position: absolute;
	width: 160px;
/*	left: -999em;*/
	display: none;
}

#menu li.hover ul ul, #menu li.hover ul ul ul {
/*	left: -999em;*/
	display: none;
}

#menu li.hover ul, #menu li li.hover ul, #menu li li li.hover ul{
/*	left: auto;*/
	display: block;
}

#menu li ul ul {
/*	margin: -22px 0 0 160px;*/
	left: 163px;
	margin-top: -22px;
}


/* Look */
#menu li ul ul
	{
	BACKGROUND-COLOR: #F5F5F5;
	LINE-HEIGHT: 20px;
	BORDER-RIGHT: #000000 1px solid;
	BORDER-TOP: #ffffff 1px solid;
	BORDER-LEFT: #ffffff 1px solid;
	BORDER-BOTTOM: #000000 1px solid;
	COLOR: #000000;
	}

#menu ul li
	{
	BACKGROUND-COLOR: #F5F5F5;
	BORDER-RIGHT: #ffffff 1px solid;
	BORDER-TOP: #ffffff 1px solid;
	BORDER-LEFT: #ffffff 1px solid;
	BORDER-BOTTOM: #ffffff 1px solid;
	}

#menu ul li li
	{
	BACKGROUND-IMAGE: none;
	background-repeat: no-repeat;
	background-position: left center;
	}

#menu li ul
	{
	BACKGROUND-COLOR: #F5F5F5;
	LINE-HEIGHT: 20px;
	BORDER-RIGHT: #ffffff 0px solid;
	BORDER-TOP: #ffffff 0px solid;
	BORDER-LEFT: #ffffff 0px solid;
	BORDER-BOTTOM: #ffffff 0px solid;
	COLOR: #000000;
	}

#menu li
	{
	text-indent: 5px;
	BACKGROUND-COLOR: #002D5B;
	FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif;
	FONT-SIZE: 9.5px;
	COLOR: #FFFFFF;
	BORDER-RIGHT: #ffffff 1px solid;
	BORDER-TOP: #ffffff 1px solid;
	BORDER-LEFT: #ffffff 1px solid;
	BORDER-BOTTOM: #ffffff 1px solid;
	}

#menu li a
	{
	COLOR: #FFFFFF;
	FONT-WEIGHT: bold;
  background-repeat: no-repeat;
  background-position: left center;
	}

#menu ul li a
	{
	COLOR: #000000;
	FONT-WEIGHT: normal;
	}

#menu ul li a:hover
	{
	BACKGROUND-COLOR: #CED5DF;
	}


#vertm iframe
  {
  position: absolute;
  filter: progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=0);
  }


</STYLE>

<SCRIPT type=text/javascript>
var ids_timeout_oculta = new Array();
var ids_timeout_muestra = new Array();

function inicializa_menu()
	{
	var menu = document.getElementById("menu");
	var items_menu = menu.getElementsByTagName("li");
	
	for (var i = 0; i < items_menu.length; i++)
		{
		items_menu[i].id = "item_menu" + i;		
		items_menu[i].onmouseover = muestra_menu;
		items_menu[i].onmouseout = oculta_menu;
		ids_timeout_oculta[items_menu[i].id] = null;
		ids_timeout_muestra[items_menu[i].id] = null;
		}

	}

function muestra_menu(evento)
	{
	window.clearTimeout(ids_timeout_oculta[this.id]);
	var id_timeout = window.setTimeout('set_clase("' + this.id + '", "hover")', 150);
	ids_timeout_muestra[this.id] = id_timeout;
	}

function oculta_menu(evento)
	{
	window.clearTimeout(ids_timeout_muestra[this.id]);
	var id_timeout = window.setTimeout('set_clase("' + this.id + '", null)', 150);
	ids_timeout_oculta[this.id] = id_timeout;
	}

function set_clase(id_objeto, clase)
	{
	var objeto = document.getElementById(id_objeto);
	objeto.className = clase;
	if (clase == 'hover')
		{
		ULchild = objeto.childNodes[2];
		if (document.all && ULchild && objeto.getElementsByTagName('iframe').length == 0 && ULchild.className != 'nivel1')
			{
			var xiframe = document.createElement('IFRAME');
			xiframe.setAttribute("frameborder", "0");
			xiframe.src = "/images/html/imagen1x1.gif";
			objeto.appendChild(xiframe);
			xiframe.style.width = ULchild.offsetWidth;
			xiframe.style.height = ULchild.offsetHeight;
			xiframe.style.zIndex = 2;
			xiframe.style.postion = "absolute";
			xiframe.style.left = ULchild.offsetLeft;
			xiframe.style.top = ULchild.offsetTop;
			ULchild.style.zIndex = 3;
			}
		}
	else if (document.all)
		{
		var xiframe = objeto.getElementsByTagName('iframe');
		xiframe = xiframe[0];
		if (xiframe) objeto.removeChild(xiframe);
		}
	}

</SCRIPT>


<DIV id=vertm>
<UL id=menu>
{*ITEM_MENU}
  <li><a href="{URL}" {*BULLET}style="BACKGROUND-IMAGE: url(/images/html/bullet_menu_lateralx2.gif)"{/BULLET}>{NOMBRE_ITEM}</a>
    <ul class="{CLASS}"> 
			{*SUBITEM_MENU}
      <li><a href="{URL}" style="BACKGROUND-IMAGE: url(/images/html/bullet_menu_lateral.gif)">{NOMBRE_ITEM}</a></li> 
			{/SUBITEM_MENU}
    </ul> 
  </li> 
{/ITEM_MENU}
</UL>
</DIV>

<SCRIPT type=text/javascript>
inicializa_menu();
</SCRIPT>
