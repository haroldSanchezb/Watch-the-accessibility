<h4>{_LABEL_KMS}</h4>
<table class="table" style="width: 100%;" cellpadding="1" cellspacing=0>
  <tr>
    <th>{_LABEL_KMS_DISPONIBLES}</th>
    <th>{_LABEL_KMS_COMPRADOS}</th>
    <th>{_LABEL_KMS_UTILIZADOS}</th>
  </tr>
  <tr>
    <td>{KMS_DISPONIBLES}</td>
    <td>{KMS_COMPRADOS}</td>
    <td>{KMS_UTILIZADOS}
      <form name='aux' action='#'>
        <input type="hidden" name="status_cobro_premio" id="status_cobro_premio" value='T'>
        <input type="hidden" name="currency" id="currency" value=''>
        <input type="hidden" name="total_kms" id="total_kms" value='{KMS_UTILIZADOS}'>
      </form></td>
  </tr>
</table>
