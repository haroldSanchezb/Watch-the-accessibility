<div id="contenedor_paso1_asociados" >
<h1>{_LABEL_MENU_COMPROBANTE_COMPRA}</h1>
<p>Permite b&uacute;squedas parciales</p>
<div class="content_tb_process">
<h2>Busca tu ticket</h2>
<div class="box_content_process" style="width:762px; margin-left:auto; margin-right:auto">
<div class="box_int_border_process">
<div class="center_content">

<form action="lista_tickets.cgi">
   <div>
		<input type='hidden' name='accion' value='buscar'>
   </div>
                        
                        
                        <table cellspacing="0" cellpadding="0" border="0" width="100%" style="margin:0 auto; margin-left:auto; margin-right:auto">
                            <tbody><tr>
                                <td>
                                    <table class="tabla_form_proceso" style="width:100%; margin:0 auto;" cellspacing="0" cellpadding="0">
                                        <colgroup><col width="60%"><col>
                                        </colgroup><tbody><tr>
                                            <td class="encabezado_tabla_form_proceso" colspan="2">Busca tu ticket</td>
                                        </tr>
                                        <tr>
                                            <td class="dato_tabla_form_proceso">N&uacute;mero de ticket:</td>
                                            <td class="campo_tabla_form_proceso"><input type='text' name='numtkt' class="input"><br>
                                            Ej. 045-2123123456</td>
                                            
                                        </tr>
                                        <tr>
                                            <td class="dato_tabla_form_proceso">Apellido del pasajero:</td>
                                            <td class="campo_tabla_form_proceso"><input type='text' name='pax_name' class="input"><br>&nbsp;</td>
                                        </tr>                               
                                    </tbody></table>
									<input type="submit" onclick="check_and_submit_pnr(this.form)" value="Buscar" class="button-page float_right" name="Submit" style="margin-right:18px;">
                                    
                                  
                                    
                                    
                                    
                                </td>
                            </tr>
                        </tbody></table>
                        
                    </form>
</div>

</div>
</div>
</div>
</div>
