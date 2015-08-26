
<h1>AIR's</h1>

<script type="text/javascript">

function marcar(f,a)
	{
	var i;

	for (i=0;i<f.elements.length;i++)
		{
		if (f.elements[i].type == 'checkbox')
			{
			if (a==1)
				{
				f.elements[i].checked=true;
				}
			else
				{
				f.elements[i].checked=false;
				}
			}
		}
	}
</script>


<form action='adm_airs.cgi' method='post'>
	<div>
		<input type='hidden' name='accion' value='mostrar'>
	</div>

	<table class="table" width='100%'>
		{AIR_LIST}
	</table>
	
	<p>
		<input type='button' value='Marcar todos' onclick='marcar(this.form,1)' name="marcar">
		<input type='button' value='Desmarcar todos' onclick='marcar(this.form,0)' name="desmarcar">
		<input type='button' value='Bajar marcados' onclick="this.form.accion.value='bajar'; this.form.submit()" name="bajar">
		<input type='button' value='Borrar marcados' onclick="this.form.accion.value='borrar'; this.form.submit()" name="borrar">
	</p>
</form>
