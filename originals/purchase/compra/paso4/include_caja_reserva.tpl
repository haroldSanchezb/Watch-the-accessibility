
<style type="text/css">
<!--
/************** INICIO CSS PARA LIGHT_BOX *******************/
.fadebox_reserva {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 2200px;
	background-color: white;
	z-index:1001;
	-moz-opacity: 0.8;
	opacity:.80;
	filter: alpha(opacity=80);
}
/* IE6 Only */
* html .fadebox_reserva {
	width:230%;
}

.overbox_reserva {
	display : none;
	position: absolute;
	top: 25%;
	left: 38%;
	-left: 25%;
	height: 100%;
	z-index:1002;
	overflow: hidden;
	overflow-x: hidden;
}
/* IE6 Only */
* html .overbox_reserva {
	width: 100%;
}
#content_reserva {
	background: #FFFFFF;
	border: solid 8px #2f73ba;
	/*padding: 10px;*/
	width:350px;
	margin:0px auto 0px auto;
	overflow-x: hidden;
	overflow-y:hidden;
	height:auto;
	-webkit-border-radius: 5px;
	border-radius: 5px;
-webkit-box-shadow: 0px 0px 2px 2px #8e8e8e;
	box-shadow: 0px 0px 2px 2px #8e8e8e;
}
.texto_lightbox_reserva{
	background: #ffffff;
	padding: 10px;
	width:330px;
	margin:0px;
	z-index:1008;
	overflow-x:hidden;
	overflow-y: hidden;
	height: auto;
	position: relative;
}
.cerrar_reserva{
	background: #2f73ba;
	padding: 5px 0px 0px 10px;
	width:340px;
	margin:0px;
	text-align:right;
	height:18px;
}

.texto_cerrar_reserva{
	background: #2f73ba;
	padding: 0px;
	width:320px;
	margin:0px;
	float:left;
	text-align:right;
}
.texto_cerrar_reserva a:link{
	padding: 0px;
	margin:0px;
	color:#FFFFFF;
	text-decoration:none;
}
.texto_cerrar_reserva a:hover{
	padding: 0px;
	margin:0px;
	color:#FFFFFF;
	text-decoration:underline;
} 
.imagen_cerrar_reserva{
	padding: 0px 4px 0px 0px;
	margin:0px;
	text-align:right;
	border:0;
	float:left;
	width:16px;
}
.imagen_cerrar_reserva a:link img{
	padding: 0px;
	margin:0px;
	text-align:right;
	border:0;

}


.layer_login {
	margin:0;
	padding:0;
}
.col_izq {
	background-color:#DCE0EE;
	border:1px solid #CCC;
	padding:5px 10px;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:bold;
	color: #053972;
	border-right:none;
	width:50%;
}
.col_der {
	background-color:#FFF;
	border:1px solid #CCC;
	padding:5px 15px;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:bold;
	width:50%;
}
.btn_ingresar {
	text-align: right;
	padding: 15px 0 0 0;
}
.texto{
	padding:0 20px;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	color:#333;
	}
/************** FIN CSS PARA LIGHT_BOX *******************/
-->
</style>
<script src="/js/prototype.js" type="text/javascript"></script>
<script src="/js/json.js" type="text/javascript"></script>
<script src="/js/json_services.js" type="text/javascript"></script>
<script type="text/javascript">
if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){ 
 var iev=new Number(RegExp.$1)
}


function showLightbox_reserva(layer) {
	window.scroll(0,0);
	document.getElementById(layer).style.display='block';
	document.getElementById('fade_reserva').style.display='block';

	document.getElementById('id_login').value='';
	document.getElementById('id_password').value='';
	document.getElementById('imagen').style.display = 'none';
	document.getElementById('mensaje').innerHTML='';
	if (/MSIE (\d+\.\d+);/.test(navigator.userAgent))
	{
		if (iev>=6)
		selects = document.getElementsByTagName("select");
		for (i = 0; i != selects.length; i++) {
			selects[i].style.visibility = "hidden";
		}
	}
}
function hideLightbox_reserva(layer) {
	document.getElementById(layer).style.display='none';
	document.getElementById('fade_reserva').style.display='none';
	if (/MSIE (\d+\.\d+);/.test(navigator.userAgent))
	{
	
		selects = document.getElementsByTagName("select");
		for (i = 0; i != selects.length; i++) {
			selects[i].style.visibility = "visible";
		}
	}
}


function check_login_ajax(f)
{
    var url_cgi ='/cgi-bin/compra/check_login_user_json.cgi';
    document.getElementById('imagen').style.display = 'inline';
    document.getElementById('mensaje').innerHTML = '';
    var ajax_request = new Ajax.Request(
        url_cgi, {
            method      : 'post',
            parameters  : 'p='+f.elements['password'].value+'&l='+f.elements['login'].value,
            onComplete  : Responder
            }
        );
}

function Responder(http_request)
{
    var datos = eval('('+http_request.responseText+')');
    retorno = datos.respuesta;
    if(!retorno)
        {
        document.getElementById('mensaje').innerHTML = '{_MSG_ERROR_USUARIO_CLAVE}';
		document.getElementById('imagen').style.display = 'none';
        }
    else
        {
        go_to_login_page(document.forms.login_reserva);
        }

}
</script>
