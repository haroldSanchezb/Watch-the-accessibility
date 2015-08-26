<style type="text/css">

#contenedor_oum h2 { 
	width: 766px;
	height: 25px;
	background: #033d7d;
	margin: 15px 0 0 0;
	padding: 0;
	font: normal 12px Arial, Helvetica, sans-serif;
	font-weight:bold;
	color: #fff;
    text-align: left;
	text-indent: 15px;
	letter-spacing: normal;
	line-height: 25px;
	-moz-border-radius-topleft: 5px;
	-webkit-border-top-left-radius: 5px;
	-moz-border-radius-topright: 5px;
	-webkit-border-top-right-radius: 5px;
}

#contenedor_oum #box-content {
	width: 762px;
	border: 2px solid #033d7d;
	margin: 0;
	padding: 0;
}

#contenedor_oum #box-int-border {
	width: 738px;
	border: 5px solid #e5ecf7;
	margin: 0;
	padding: 7px;
	overflow: auto;
/*	display: inline-block;*/
}


</style>
<form action="/cgi-bin/compra/calendario.cgi" method="get">
	<div>
		<input type="hidden" name="tipo_promo" value="distress">
		<input type="hidden" name="session_id" value="{SESSION_ID}">
		<input type="hidden" name="rand_check" value="{RAND_CHECK}">
		<input type="hidden" name="segmento" value="1">	
	</div>
   
<div id="contenedor_oum">   
 <h2>{TITULO_TIPO_DESTINO}</h2> 
<div id="box-content">
	<div id="box-int-border">
	<table style="margin-bottom: 0;" class="table" cellspacing="0" cellpadding="0" width="100%">
		<col width="2%">
		<col width="35%">
		<col width="2%">
		<col width="2%">
		<col>
		<tr>
			<th colspan="2">{_LABEL_OUM_OD}</th>
			<th colspan="3">{_LABEL_PRECIO}</th>
			<th colspan="1" style="padding-left:50px;">{_LABEL_TASAS}</th>
            <th colspan="2">{_LABEL_ESTATUS}</th>
		</tr>
		
			{ITEMS}
			
	</table>
    
	<table class="table" cellspacing="0" cellpadding="0" width="100%">
		<col width="20%">
		<col width="20%">
		<col>
		<tr>
			<th>{_LABEL_ADULTOS}</th>
			<th>{_LABEL_NINOS}</th>
			<th>{_LABEL_INFANTES}</th>
		</tr>
		<tr>
			<td>
				<select name="nadults">
					<option value="1" selected>1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
				</select>
			</td>
			<td>
				<select name="nchildren">
					<option value="0" selected>0</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
				</select>
			</td>
			<td>
				<select name="ninfants">
					<option value="0" selected>0</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
				</select>
			</td>
		</tr>
	</table>
    
    	</div>
    </div>
    </div>
    
    <br />  
    <br />
	
	<p>
		<input type="button" class="button-process" value='{_LABEL_COMPRAR}' name='ir' onclick='check_and_submit(this.form)'>
		<br><br>
	</p>
	
</form>
