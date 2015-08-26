<!-- INICIO HEADER Brasil Mundolan -->
<div id="header-mundolan" class="img-top-mundolan-es">
	<div id="logo-mundolan">
		<a href="{_URL_HOME}"><img src="/images/common/header/logo_mundolan.jpg" width="208" height="57" border="0" alt="MUNDOLAN"></a>
	</div>
	<div id="box-right">
		<div id="td-top">
		<form name="form_buscar" action="/cgi-bin/asociados/search.cgi" method="post">
			<ul>
			<li class="fono">{_LABEL_TELEFONO_MUNDOLAN}</li>
			<li>|</li>
			<li><a href="/asociados/informacion/sugerencias/sugerencias.html">{_LABEL_SUGERENCIAS_MUNDOLAN}</a></li>
			<li>|</li>
			<li>
			<input type="text" name="q" id="buscar" class="buscador" onfocus="if(this.value=='{_LABEL_BUSCAR}')this.value='';" onblur="if(this.value=='')this.value='{_LABEL_BUSCAR}';" value="{_LABEL_BUSCAR}">
            <input type="image" src="/images/common/header/btn_search.gif" class="btn-search">
			</li>
			</ul>
		</form>
		</div>
		<div id="td-down">
			<ul>
			<li class="version"><a href="{URL_COUNTRY_SELECTOR}">{_LABEL_VERSION_SITIO}</a></li>
			<li>{_FRASE_HOME}</li>
			</ul>
		</div>
	</div>
</div>
<!-- FINAL HEADER Brasil Mundolan -->

