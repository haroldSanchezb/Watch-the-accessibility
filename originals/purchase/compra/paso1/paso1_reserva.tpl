<script type="text/javascript" src="/js/prototype.js"></script>
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
		var patron_pnr = new RegExp("^[A-Za-z0-9]{6}$");
		var patron_apellido = new RegExp("^[A-Za-z\-]+$");
	
		errores = '';
		f.pnr.value      = Trim(f.pnr.value);
		f.apellido.value = Trim(f.apellido.value);

		if ($('id') && getRadioValue(f.elements['id']) != null && (f.pnr.value != '' || f.apellido.value != ''))
			{
			errores += '{_MSG_ERROR_NO_SELECCIONAR_RESERVA_CON_PNR_APELLIDO_JS}\n';
			}
		else if ($('id') && getRadioValue(f.elements['id']) == null && (f.pnr.value == '' && f.apellido.value == ''))
			{
			errores += "{_MSG_ERROR_INGRESAR_RESERVA_O_RESERVA_APELLIDO_JS}\n";
			}
		else if ((!$('id') && (f.pnr.value == '' || f.apellido.value == '')) || 
			(($('id') && getRadioValue(f.elements['id']) == null) && (f.pnr.value == '' || f.apellido.value == '')))
			{
			errores += "{_MSG_ERROR_INGRESAR_PNR_APELLIDO_JS}\n";
			}
			
		if ((f.pnr.value != '' && f.apellido.value != '') && (!f.pnr.value.match(patron_pnr) || !f.apellido.value.match(patron_apellido)))
			{
			errores += "{_MSG_ERROR_INGRESAR_PNR_APELLIDO_CARACTERES_VALIDOS_JS}\n";
			}

		if (errores.length > 0)
			{
			alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
			reenableButton(0);
			return false;
			}
		f.action = '/cgi-bin/compra/paso2r.cgi';
		f.submit();
		}
	
	function deseleccionar_reservas(radios)
		{
		if (!radios.length)
			{
			radios.checked = false;
			}
		else
			{
			for (var i = 0; i < radios.length; i++)
				{
				radios[i].checked = false;
				}
			}
		}
	</script>

	<form action='/noJS.html' method='GET' name='paso1'>
		<input type='hidden' name='rand_check' value='{RAND_CHECK}'>
		<input type='hidden' name='session_id' value='{SESSION_ID}'>
		
<h1>{_LABEL_PAGO_RESERVA}</h1>		
<p>{_MSG_EXPLICATIVO_RESERVAS}</p>
		{RESERVAS}
		<br>
		{ERROR}
		<table class="table" width="100%" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<th colspan="4">{_LABEL_INGRESE_PNR_APELLIDO}</th>
				</tr>
				<tr class="no-par">
					<td>{_LABEL_CODIGO_RESERVA}</td>
					<td><input type="text" size="15" name="pnr" id="pnr" value="{PNR}" onchange="if (this.form.id){deseleccionar_reservas(this.form.id);}"></td>
					<td>{_LABEL_APELLIDO_PASAJERO}</td>
					<td><input type="text" size="15" name="apellido" id="apellido" value="{APELLIDO}" onchange="if (this.form.id){deseleccionar_reservas(form.id);}"></td>
				</tr>
			</tbody>
		</table>
		{BOTON_SUBMIT}
		{AVISOS_COMERCIALES}
	</form>

	<script type='text/javascript'>

		function advierte_errores_validacion_posteriores(f)
			{
			var errores;
		
			errores = '';
		
			{INSTRUCCIONES_ERROR}
			
			if (errores.length > 0)
				{
				alert("{_ENCABEZADO_ERROR_JS}: \n\n" + errores);
				return false;
				}
			}

		// To allow temporary deactivation of buttons
		disabledButton[0] = new Array(1);
		disabledButton[0][0] = document.paso1.submitButton;

		document.paso1.action = 'javascript:precheck_and_submit(document.paso1);';
		advierte_errores_validacion_posteriores(document.paso1);

	</script>

    <script type='text/javascript'>
location.replace("http://www.lan.com/cgi-bin/pago_reserva/paso1.cgi");
</script> 
