
<style type="text/css">

.fadebox_layer_espera_proceso {
display: none;
position: fixed;
top: 0%;
left: 0%;
width: 100%;
height: 2000px;
background-color: #ffffff;
z-index:1001;
-moz-opacity: 0.8;
opacity:.80;
filter: alpha(opacity=80);
}


/* IE6 Only */
* html .fadebox_layer_espera_proceso {
width:100%;
position: absolute;
}

.overbox_layer_espera_proceso {
display: none;
position: absolute;
top: 20px;
left: 0;
width: 100%;
height: 100%;
z-index:1002;
}

/* IE6 Only */
* html .overbox_layer_espera_proceso {
width: 100%;
left: auto;
top:10px;
}

#content_layer_espera_proceso {
background: #FFFFFF;
width:100%;
height:auto;
margin:0px auto 0px auto;
overflow:auto;

text-align: center;
}

#content_layer {
background: #2f73ba;
border: solid 8px #2f73ba;
width:560px;
height:auto;
margin:0px auto 0px auto;
overflow:auto;
text-align: center;
-webkit-border-radius: 5px;
	border-radius: 5px;
-webkit-box-shadow: 0px 0px 2px 2px #8e8e8e;
	box-shadow: 0px 0px 2px 2px #8e8e8e;
}

#cerrar {
text-align:center;
margin-left:399px;
z-index:1010;
width: 100%;
}

.cerrar_layer {
    background: none repeat scroll 0 0 #2f73ba;
    height: 18px;
    margin: 0;
    padding: 5px 0 5px 10px;
    text-align: right;
    width: 550px;
}

.texto_cerrar_layer {
    background: none repeat scroll 0 0 #2f73ba;
    float: left;
    margin: 0;
    text-align: right;
    width: 525px;
    padding-right:5px;
}

.texto_cerrar_layer a {
    color: #ffffff;
	font-size:1.1em;
    margin: 0;
    padding: 0;
    text-decoration: none;
}
.texto_cerrar_layer a:hover {
    color: #ffffff;
    text-decoration: underline;
}

.imagen_cerrar_layer {
    border: 0 none;
    float: left;
    margin: 0;
    padding: 0 4px 0 0;
    text-align: right;
    width: 16px;
}


</style>
<div id='layer_general' class="overbox_layer_espera_proceso" style="display: none">
    <div id="content_layer">
        <div class="cerrar_layer">
            <div class="texto_cerrar_layer"><a href="javascript:hideLightbox_espera_procesa_pago('layer_general');">{_LABEL_CERRAR}</a></div>

            <div class="imagen_cerrar_layer"><a href="javascript:hideLightbox_espera_procesa_pago('layer_general');"><img height="15" width="13" alt="Cerrar" src="/images/common/cerrar_lightbox.png"></a>
            </div>
        </div>
        <div id="content_layer_espera_proceso">
            <div style='text'<br><img src='/images/cajero/wait_pago.gif'><br>
                <p class="labelLoadingModal">{_LABEL_LOADING}</p>
            </div>
        </div>
    </div>
</div>
<div id='fade_layer_espera' class="fadebox_layer_espera_proceso">&nbsp;</div>
