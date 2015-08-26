<!--
AUTH: ASOCIADOS
-->

<form name="formulario" action="/cgi-bin/formulario/envia_formulario.cgi" method="post"> 

<input type='hidden' name='codigo_concurso' value='20060627_concurso1_mundolan'> 
<input type='hidden' name='tipo_formulario' value='concurso'> 
<input type='hidden' name='redirect' value='/asociados/encuestas/respuesta_concurso1.html'>
<input name="agencia" type="hidden" id="agencia" value="{+ASOCIADOS_INFO('nombre_empresa')}">
<input name="nombre_agente" type="hidden" id="nombre_agente" value="{+ASOCIADOS_INFO('nombre_agente')}" >
<input name="login_agente" type="hidden" value="{+LOGIN}" >
<table class="tabla2">
  <colgroup>
    <col width="40" height="50">
	<col>
	<col width="40">
	<col>	
  </colgroup>
  <tbody>
    <tr class="par">
      <td class="first"><div class="center"><strong>1-</strong></div></td>
      <td colspan="3" class="first"><strong>&iquest;Cu&aacute;ntas veces a la semana volamos a UIO?</strong></td>
      </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta1" type="radio" value="a"></div></td>
      <td colspan="3" class="first"><strong>a. </strong>7 frecuencias, 3 veces directo, 4 con conexi&oacute;n en LIM</td>
      </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta1" type="radio" value="b"></div></td>
      <td colspan="3" class="first"><strong>b. </strong>8 frecuencias, 2 veces directo, 6 con conexi&oacute;n en LIM</td>
      </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta1" type="radio" value="c"></div></td>
      <td colspan="3" class="first"><strong>c. </strong>Jueves, Viernes, S&aacute;bado y Domingo. Todos los d&iacute;as, excepto S&aacute;bado con conexi&oacute;n en LIM</td>
      </tr>
    <tr class="par">
      <td class="first"><div class="right"><strong>2-</strong></div></td>
      <td colspan="3" class="first"><strong>&iquest;Qu&eacute; d&iacute;as volamos a GYE?</strong></td>
      </tr>	
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta2" type="radio" value="a"></div></td>
      <td colspan="3" class="first"><strong>a. </strong>Jueves, S&aacute;bado y Domingo Directo. Todos los d&iacute;as, except S&aacute;bados con conexi&oacute;n en LIM</td>
      </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta2" type="radio" value="b"></div></td>
      <td colspan="3" class="first"><strong>b. </strong>Viernes, S&aacute;bado y Domingo Directo. Todos los d&iacute;as, excepto S&aacute;bado con conexi&oacute;n en LIM</td>
      </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta2" type="radio" value="c"></div></td>
      <td colspan="3" class="first"><strong>c. </strong>Jue, Vie, Sab, Dom, Todos los d&iacute;as (excepto Sab) con conexi&oacute;n en LIM</td>
      </tr>
    <tr class="par">
      <td class="first"><div class="right"><strong>3-</strong></div></td>
      <td colspan="3" class="first"><strong>&iquest;Cu&aacute;nto demora la conexi&oacute;n en Lim del SCL LIM UIO?</strong></td>
      </tr>		
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta3" type="radio" value="a"></div></td>
      <td colspan="3" class="first"><strong>a. </strong>Llegamos a LIM a las 9:30, el LIM UIO sale a las 12:49, son 3:19 de conexi&oacute;n</td>
      </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta3" type="radio" value="b"></div></td>
      <td colspan="3" class="first"><strong>b. </strong>Llegamos a LIM a las 9:20, el LIM UIO sale a las 12:49, son 3:29 de conexi&oacute;n</td>
      </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta3" type="radio" value="c"></div></td>
      <td colspan="3" class="first"><strong>c. </strong>Llegamos a LIM a las 8:20, el LIM UIO sale a las 12:49, son 4:29 de conexi&oacute;n</td>
      </tr>
    <tr class="par">
      <td class="first"><div class="right"><strong>4-</strong></div></td>
      <td colspan="3" class="first"><strong>&iquest;Cu&aacute;ntas frecuencias semanales directas a BOG tendr&aacute; LAN a contar del 15junio y qu&eacute; d&iacute;as ser&aacute;n?</strong></td>
      </tr>			
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta4" type="radio" value="a"></div></td>
      <td colspan="3" class="first"><strong>a. </strong>3 frecuencias directas, Martes, Mi&eacute;rcoles y Domingo</td>
      </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta4" type="radio" value="b"></div></td>
      <td colspan="3" class="first"><strong>b. </strong>3 frecuencias directas, Mi&eacute;rcoles, Jueves y Domingo</td>
      </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta4" type="radio" value="c"></div></td>
      <td colspan="3" class="first"><strong>c. </strong>3 frecuencias directas, Martes, Jueves y Domingo</td>
      </tr>
    <tr class="par">
      <td class="first"><div class="right"><strong>5-</strong></div></td>
      <td colspan="3" class="first"><strong>&iquest;Qu&eacute; transacci&oacute;n debe utilizar en su sistema de distribuci&oacute;n para desplegar la mejor conexi&oacute;n LAN a GYE el 01 septiembre del 2006? (Conteste una alternativa, dependiendo del Sistema de Distribuci&oacute;n que utilice)</strong></td>
      </tr>	
    <tr class="impar">
      <td class="first">&nbsp;</td>
      <td class="first"><strong>SISTEMA AMADEUS</strong></td>
      <td>&nbsp;</td>
      <td class="first"><strong>SISTEMA SABRE</strong></td>
    </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta5" type="radio" value="a_Amadeus"></div></td>
      <td class="first"><strong>a. </strong>AN1A01SEPSCLGYE/ALA</td>
      <td><div class="right"><input name="pregunta5" type="radio" value="a_Sabre"></div></td>
      <td class="first"><strong>a. </strong>1+FECHA+CITYPAIR+&rdquo;pillow&rdquo;+CC</td>
    </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta5" type="radio" value="b_Amadeus"></div></td>
      <td class="first"><strong>b. </strong>AN1A01SEPSCLGYE/ALA,LP,XL</td>
      <td><div class="right"><input name="pregunta5" type="radio" value="b_Sabre"></div></td>
      <td class="first"><strong>b. </strong>FECHA+CITYPAIR+&rdquo;pillow&rdquo;+CC</td>
    </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta5" type="radio" value="c_Amadeus"></div></td>
      <td class="first"><strong>c. </strong>AN1A01SEPSCLGYE/ALA,LP</td>
      <td><div class="right"><input name="pregunta5" type="radio" value="c_Sabre"></div></td>
      <td class="first"><strong>c. </strong>1+FECHA+CITYPAIR+&rdquo;pillow&rdquo;</td>
    </tr>
    <tr class="par">
      <td class="first"><div class="right"><strong>6-</strong></div></td>
      <td colspan="3" class="first"><strong>&iquest;Cu&aacute;ntas frecuencias y qu&eacute; d&iacute;as se puede volar a CCS con LAN?</strong></td>
      </tr>		
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta6" type="radio" value="a"></div></td>
      <td colspan="3" class="first"><strong>a. </strong>5 frecuencias, todos los d&iacute;as excepto los Viernes y S&aacute;bados</td>
      </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta6" type="radio" value="b"></div></td>
      <td colspan="3" class="first"><strong>b. </strong>6 frecuencias, todos los d&iacute;as excepto los Viernes</td>
    </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta6" type="radio" value="c"></div></td>
      <td colspan="3" class="first"><strong>c. </strong>6 frecuencias, todos los d&iacute;as excepto los S&aacute;bados</td>
    </tr>
    <tr class="par">
      <td class="first"><div class="right"><strong>7-</strong></div></td>
      <td colspan="3" class="first"><strong>&iquest;Cu&aacute;ntas frecuencias semanales y qu&eacute; d&iacute;as volamos a Santa Cruz?</strong></td>
    </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta7" type="radio" value="a"></div></td>
      <td colspan="3" class="first"><strong>a. </strong>2 frecuencias semanales, Lunes y Jueves</td>
    </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta7" type="radio" value="b"></div></td>
      <td colspan="3" class="first"><strong>b. </strong>2 frecuencias semanales, Lunes y Viernes</td>
    </tr>
    <tr class="impar">
      <td class="first"><div class="right"><input name="pregunta7" type="radio" value="c"></div></td>
      <td colspan="3" class="first"><strong>c. </strong>3 frecuencias semanales, Lunes, Jueves, Viernes</td>
    </tr>
  </tbody>
</table>
<div class="center"><input type="submit" name="envio" value="Enviar" class="boton-secundario"></div>
</form>

