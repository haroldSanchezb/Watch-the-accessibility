<style type="text/css">


table {
   
    border-spacing: 0;
   
	 
	}
	
.tabla_simple {
	border: solid #ccc 1px;
	border:  #ccc 0px;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	-webkit-box-shadow: 0 1px 1px #ccc;
	-moz-box-shadow: 0 1px 1px #ccc;
	box-shadow: 0 1px 1px #ccc;
	width: 800px;
	font-size: 1.4em;
	margin:auto;
	line-height:1.2em;
	text-align:center;
	margin-top:10px;
	margin-bottom:15px;
}

.tabla_simple td, .tabla_simple th {
    padding: 10px;
    border-bottom: 1px solid #f2f2f2; 
	font-size: 0.875em;   
}

.tabla_simple tbody tr:nth-child(even) {
    background: #efeeee;
}

.celda1 {
	background-color:#2f73ba;
	border-radius: 6px 0 0 0;
	color: #FFF;

	}
	
.celda2 {
    background-color:#4985c3;
	color: #FFF;
	}
	
.celda3 {
    background-color:#6396cb;
	color: #FFF;
	}	
	
.celda4 {
    background-color:#7da8d4;
	color: #FFF;
	}	
.celda5 {
	background-color:#97b9dd;
	border-radius: 0 6px 0 0;
	color: #FFF;
	padding:5px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #FFF;
	}
.celda6 {
    background-color:#97b9dd;
	color: #FFF;
}	

#nota{
	padding: 10px;
	height: auto;
	width: 780px;
	margin-right: auto;
	margin-left: auto;
	border-radius: 6px;
	border: 1px solid #f2f2f2;
}	
</style>

<h1>{_LABEL_TITULO_TABLA_ANAC}</h1>

<table class="tabla_simple" border="0">
  <tr>
    <td rowspan="2" class="celda1">{_LABEL_ANAC_NUMERO_VUELO}</td>
    <td rowspan="2" class="celda2">{_LABEL_ANAC_AEROPUERTO_ORIGEN}</td>
    <td rowspan="2" class="celda3">{_LABEL_ANAC_AEROPUERTO_DESTINO}</td>
    <td rowspan="2" class="celda4">{_LABEL_TABLA_PORCENTAJE_VUELOS_CANCELADOS}</td>
    <td colspan="2" class="celda5">{_LABEL_TABLA_PORCENTAJE_VUELOS_ATRASADOS}</td>
  </tr>
  <tr>
    <td class="celda6">{_LABEL_TABLA_SUPERIOR_TREINTA_MINUTOS}</td>
    <td class="celda6">{_LABEL_TABLA_SUPERIOR_SESENTA_MINUTOS}</td>
  </tr>
  <tr>
    <td>LA4567</td>
    <td>A</td>
    <td>A</td>
    <td>00</td>
    <td>00</td>
    <td>00</td>
  </tr>
  <tr>
    <td>LA4367</td>
    <td>B</td>
    <td>C</td>
    <td>00</td>
    <td>00</td>
    <td>00</td>
  </tr>
   <tr>
    <td>LA4367</td>
    <td>B</td>
    <td>C</td>
    <td colspan="3">{_MSG_NO_EXISTE_INFORMACION_ANAC}</td>
  </tr>
</table>
<div id="nota">{_LABEL_NOTA_TABLA_ANAC_PUNTUALIDAD}</div>