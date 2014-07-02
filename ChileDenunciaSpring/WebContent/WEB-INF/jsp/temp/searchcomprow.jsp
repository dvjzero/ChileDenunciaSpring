
<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
  <link rel="icon" href="./resources/img/favicon.ico" type="image/x-icon"> 
  <link rel="shortcut icon" href="./resources/img/favicon.ico" type="image/x-icon"> 
	<meta charset="UTF-8">
	
 <script type="text/javascript">

  $(document).ready(function()
  {
   $("#table").tablesorter();
 });

  </script>
<script>
$(document).ready(function()
{
	$('#search').keyup(function()
	{
		searchTable($(this).val());
	});
});
</script>
<script>
function searchTable(inputVal)
{
	var table = $('#tblData');
	table.find('tr').each(function(index, row)
	{
		var allCells = $(row).find('td');
		if(allCells.length > 0)
		{
			var found = false;
			allCells.each(function(index, td)
			{
				var regExp = new RegExp(inputVal, 'i');
				if(regExp.test($(td).text()))
				{
					found = true;
					return false;
				}
			});
			if(found == true)$(row).show();else $(row).hide();
		}
	});
}
</script>  
  
  
   
  

 
</head>
<body>
<br>
 <p align="center" style="margin-left:85px;margin-right:83px;widows: 86.5%;border:1px solid black;">
    <label for="search">
      <strong>Escriba una palabra </strong>
    </label>
    <input style="border:1px solid black;border-radius: 10px" type="text" id="search"/>
    <label>ej: robo, Avenida Alemania, Cachulo</label>
  </p>

<div style="background-color:#D4DBE6;margin-left:85px;margin-right:85px;">  
  <h1 style="text-align:center">Listado de denuncias</h1>
  <div id="contenedor" style="height:610px;overflow-y: scroll">

     
    <table class="sortable-theme-dark" data-sortable width="100%" id="tblData" class="target" bgcolor="#ACAAFC">
     <thead>
        <tr bgcolor="#E8EDED">
 			<th>Usuario Creador</th>
 			<th>Tipo</th>
     	    <th>Ciudad</th>
     	    <th>Sector</th>
     	    <th>Denuncia</th>
	                        
	   </tr>
	   
      </thead>     
      <tbody>
      		<c:forEach items="${contactForm.contacts}" var="contact" varStatus="status">
        				
            <tr class="success">
            <td>${contact.usuario_creador}</td>            
            <td>${contact.tipo}</td>
            <td>${contact.ciudad}</td>
            <td>${contact.sector}</td>
            <td>${contact.denuncia}</td>

          	</tr>

			</c:forEach>
           </tbody>

        </table>


      </div>

    </div>




</body>
</html>