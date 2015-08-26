<script type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
  
<div style="margin: 1em 1em 1em 2em; text-align: left">
<script type='text/javascript'>


SET_DHTML("");
ADD_DHTML("layer_calendario1");




function precheck_and_submit(f)
	{
	if (!buttonDisabled(0))
		{
		// Eat the return value
		check_and_submit(f);
		}
	}

function check_and_submit(f)
	{
	var errores, i, elem, elem2, fecha_segmento_anterior, fecha_segmento_actual, nadults, nchildren, ninfants;
	var from,to;

	errores = '';

	if (errores.length > 0)
		{
		alert("Informacion faltante o incorrecta: \n\n" + errores);
		reenableButton(0);
		return false;
		}
	f.action = '/cgi-bin/compra/paso1r.cgi';
	f.submit();
	}


</script>

<form action='/noJS.html' method='POST' name='paso1'>
	<input type='hidden' name='rand_check' value='{RAND_CHECK}'>
	<input type='hidden' name='session_id' value='{SESSION_ID}'>

	<p>{BIENVENIDO}</p>
	{LOGIN}
</form>

<script type='text/javascript'>

function advierte_errores_validacion_posteriores(f)
	{
	var errores;

	errores = '';

	{INSTRUCCIONES_ERROR}
	
	if (errores.length > 0)
		{
		alert("Informacion faltante o incorrecta: \n\n" + errores);
		return false;
		}
	}

// To allow temporary deactivation of buttons
disabledButton[0] = new Array(1);
disabledButton[0][0] = document.paso1.submitButton;

document.paso1.action = 'javascript:precheck_and_submit(document.paso1);';
advierte_errores_validacion_posteriores(document.paso1);

{AVISOS_COMERCIALES}

</script>
</div>
