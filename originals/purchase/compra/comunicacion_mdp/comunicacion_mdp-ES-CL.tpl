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
<table width="100%" border="0">
<tr>
    <td><h1>{_LABEL_MDP_TARJETAS_CREDITO_KMS}</h1></td>
       <td><h1>{_LABEL_MDP_TARJETAS_CREDITO}</h1></td>
     <td><h1>{_LABEL_MDP_TRANSFERENCIAS_BANCARIAS}</h1></td>
     <td><h1>{_LABEL_MDP_PAGO_PRESENCIAL}</h1></td>
</tr>
<tr>
    <td><img src="/images/procesos/comunicacion_mdp/tarjetas_credito_kms_cl.gif" width="50" height="30" alt="Tarjetas de cr&eacute;dito que acumulan KMS. LANPASS" title="Tarjetas de cr&eacute;dito que acumulan KMS. LANPASS"></td>
    <td><img src="/images/procesos/comunicacion_mdp/tarjetas_credito_cl.gif" width="220" height="30" alt="{_LABEL_MDP_TARJETAS_CREDITO}" title="{_LABEL_MDP_TARJETAS_CREDITO}"></td>
    <td><img src="/images/procesos/comunicacion_mdp/transferencia_bancaria_cl.gif" width="167" height="30" alt="Transferencia bancaria" title="Transferencia bancaria"></td>
    <td><img src="/images/procesos/comunicacion_mdp/pago_presencial_cl.gif" width="167" height="30" alt="TPago presencial" title="Pago presencial"></td>
</tr>
</table>

<div id="txt_legal_mdp">{_FRASE_MDP_LEGAL}</div>
</div>
</div>





