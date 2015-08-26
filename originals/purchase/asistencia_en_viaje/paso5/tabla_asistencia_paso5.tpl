<script type="text/javascript">
if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){ 
 var ieversion=new Number(RegExp.$1)
}
 </script>

<h4>{_TITULO_TARIFA_ASISTENCIA_TABLA} {_IMG_ASISTENCIA_VIAJE}</h4>
<table class="table" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th>{_LABEL_ASISTENCIA_NOMBRE_PRODUCTO}</th>
    <th>{_LABEL_ASISTENCIA_TIPO_PLAN}</th>
    <th>{_LABEL_ASISTENCIA_INTEGRANTES}</th>
    <th>{_LABEL_TOTAL}</th>
  </tr>
  <tr>


	<td>{ASISTENCIA_TIPO_PRODUCTO}</td>
    <td>{ASISTENCIA_TIPO_PLAN}</td>
    <td>{NUMERO_INTEGRANTES_PLAN}</td>
    <td><b>{SIMBOLO_MONEDA} {TOTAL}</b></td>
  </tr>
</table>

