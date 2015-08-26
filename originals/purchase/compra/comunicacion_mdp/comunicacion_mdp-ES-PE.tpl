<!--FUNCION QUE ACTIVA Y DESACTIVA LAYER-->
<script type="text/javascript">
function showHide(shID) {
   if (document.getElementById(shID)) {
      if (document.getElementById(shID+'-show').style.display != 'none') {
         document.getElementById(shID+'-show').style.display = 'none';
         document.getElementById(shID).style.display = 'block';
      }
      else {
         document.getElementById(shID+'-show').style.display = 'inline';
         document.getElementById(shID).style.display = 'none';
      }
   }
}
</script>

<!--TITULO MDP-->
<div id="comunicacion_mdp">
<p><a title="{_LABEL_FORMULARIO_ACERCA_DE_MEDIO_DE_PAGO}" href="#" id="example-show" class="mostrar_mdp" onclick="showHide('example');return false;"><strong>{_TITULO_MDP}</strong></a></p>
    
<!--TITULO MDP CON LAYER ACTIVO-->
<div id="example" style="display: none;"> 
<p style="padding-bottom:15px"><a title="{_LABEL_FORMULARIO_ACERCA_DE_MEDIO_DE_PAGO}" href="#" id="example-hide" class="esconder_mdp" onclick="showHide('example');return false;"><strong>{_TITULO_MDP}</strong></a></p>
<table width="120%" border="0">
<tr>
    <td><h1>{_LABEL_MDP_TARJETAS_CREDITO_KMS}</h1></td>
    <td><h1>{_LABEL_MDP_TARJETAS_CREDITO}</a></h1></td>
    <td><h1>{_LABEL_MDP_PAGO_PRESENCIAL}</h1></td>
</tr>
<tr>
    <td style="border-right-color:#CCC"><img src="/images/procesos/comunicacion_mdp/tarjetas_credito_kms_pe.gif" width="54" height="30" alt="Tarjetas de cr&eacute;dito que acumulan KMS. LANPASS" title="Tarjetas de cr&eacute;dito que acumulan KMS. LANPASS"></td>
    <td><img src="/images/procesos/comunicacion_mdp/tarjetas_credito_pe.gif" width="93" height="30" alt="{_LABEL_MDP_TARJETAS_CREDITO}" title="{_LABEL_MDP_TARJETAS_CREDITO}"></td>
    <td><img src="/images/procesos/comunicacion_mdp/pago_presencial_pe.gif" width="568" height="30" alt="{_LABEL_MDP_PAGO_PRESENCIAL}" title="{_LABEL_MDP_PAGO_PRESENCIAL}"></td>
</tr>
</table>
<div id="txt_legal_mdp">{_FRASE_MDP_LEGAL}</div>
</div>
</div>





