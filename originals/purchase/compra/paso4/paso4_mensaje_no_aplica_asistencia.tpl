<style type="text/css">
<!--
/**************COMIENZO DE CSS DE LIGHT_BOX; PORFAVOR NO BORRAR DEL TPL*******************/
.fadebox {
        display: none;
    position: absolute;
    top: 0%;
    left: 0%;
    width: 100%;
    height: 2200px;
    background-color: black;
    z-index:1001;
    -moz-opacity: 0.5;
    opacity:.50;
    filter: alpha(opacity=50);
}

/* IE6 Only */
* html .fadebox {
    width:230%;
}

/* IE6 Only */
* html .overbox {
    width: 100%;
    left: 28%;
}
.overbox {
    display: none;
    position: absolute;
    top: 90%;
    left:0;
    height: 100%;
    z-index:1002;
    overflow: hidden;
    overflow-x: hidden;
    width:100%;
}

#content {
    background: #FFFFFF;
    border: solid 8px #CCCCCC;
    /*padding: 10px;*/
    width:340px;
    margin:0px auto 0px auto;
    overflow-x: hidden;
    overflow-y:hidden;
    height:200px;
}
.texto_lightbox{
    background: #ffffff;
    padding: 10px;
    width:320px;
    margin:0px;
    z-index:1008;
    overflow-x:hidden;
    overflow-y: hidden;
    height: 150px;
    position: absolute;
}
.cerrar{
    background: #CCCCCC;
    padding: 5px 0px 0px 10px;
    width:350px;
    margin:0px;
    text-align:right;
    height:18px;
}

.texto_cerrar{
    background: #CCCCCC;
    padding: 0px;
    width:300px;
    margin:0px;
    float:left;
    text-align:right;
}
.texto_cerrar a:link{
    padding: 0px;
    margin:0px;
    color:#333333;
    text-decoration:none;
}
.texto_cerrar a:hover{
    padding: 0px;
    margin:0px;
    color:#333333;
    text-decoration:underline;
}
.imagen_cerrar{
    padding: 0px 4px 0px 0px;
    margin:0px;
    text-align:right;
    border:0;
    float:left;
    width:16px;
}
.imagen_cerrar a:link img{
    padding: 0px;
    margin:0px;
    text-align:right;
    border:0;

}
.posicionar-chile-peru {
    position: relative;
    top: 490px;
    top: 300px\9;
}
@-moz-document url-prefix() {
    .posicionar-chile-peru {
        top: 300px;
    }
}
/**************FIN DE CSS DE LIGHT_BOX; PORFAVOR NO BORRAR DEL TPL*******************/

-->
</style>
<!-- JS de despliegue de lightbox de link "solo deseo reervar"-->
<script type="text/javascript">
if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){ 
 var ieversion=new Number(RegExp.$1)
}


function showLightbox(layer) {
    window.scroll(0,0);
    document.getElementById(layer).style.display='block';
    document.getElementById('fade').style.display='block';
    if (/MSIE (\d+\.\d+);/.test(navigator.userAgent))
    {
        if (ieversion>=6)
        selects = document.getElementsByTagName("select");
        for (i = 0; i != selects.length; i++) {
            selects[i].style.visibility = "hidden";
        }
    }
}
function hideLightbox(layer) {
    document.getElementById(layer).style.display='none';
    document.getElementById('fade').style.display='none';
    if (/MSIE (\d+\.\d+);/.test(navigator.userAgent))
    {
    
        selects = document.getElementsByTagName("select");
        for (i = 0; i != selects.length; i++) {
            selects[i].style.visibility = "visible";
        }
    }
}
</script>
<!-- FIN JS de despliegue de lightbox de link "solo deseo reervar"-->

<!--Contenido de Light box-->
<div id="mas_informacion" class="overbox">
    {*POSICIONAR_LIGHTBOX}
        <div id="content" class="posicionar-chile-peru">
    {/POSICIONAR_LIGHTBOX}
    {*MANTENER_LIGHTBOX}
        <div id="content">
    {/MANTENER_LIGHTBOX}
    <div class="cerrar">
    <div class="texto_cerrar"><a href="javascript:hideLightbox('mas_informacion');">{_LABEL_CERRAR}</a></div>
    <div class="imagen_cerrar"><a href="javascript:hideLightbox('mas_informacion');"><img src="/images/common/cerrar_lightbox.gif" width="13" height="15" alt="{_LABEL_CERRAR}"></a></div>
    </div>
    <div class="texto_lightbox">{_MSG_ALERTA_PASO4_ASISTENCIA}<br /><br /></div>
    </div>
</div>
<div id='fade' class="fadebox">&nbsp;</div>
<!--FIN Contenido de Light box-->

