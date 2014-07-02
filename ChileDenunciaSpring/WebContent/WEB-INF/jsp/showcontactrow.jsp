
<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="icon" href="./resources/img/favicon.ico" type="image/x-icon"> 
  <link rel="shortcut icon" href="./resources/img/favicon.ico" type="image/x-icon"> 
	<meta charset="UTF-8">
	<title>Buscar denuncias</title>
	<link rel="stylesheet" href="./resources/css/bootstrap.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
  <script type="text/javascript" src="./resources/js/bootstrap.js"></script>
  <link rel="stylesheet" href="./resources/js/sortable-theme-dark.css" />
  <script src="./resources/js/sortable.min.js"></script>
  

  <script type="text/javascript">

  $(document).ready(function()
  {
   $("#table").tablesorter();
 });

  </script>
  
 
</head>
<body>

<div>
  <div class="container">
  <div class="row well" style="background-color:rgba(255,0,0,0.0);border:0px solid black;">


    <div class="col-md-8" style="display:inline-block;background-color:#D4DBE6;text-align:center;border:0px solid black;border-radius: 10px;table-layout:fixed">

      <div style="background-color:#D4DBE6;margin-right:0px;">  
 		 <h1 style="text-align:center">Listado de denuncias</h1>
  		<div id="contenedor" style="height:610px;overflow-y: scroll">

    <table class="table" data-sortable width="100%" id="tblData" class="target" bgcolor="#ACAAFC">
      <thead>
        <tr bgcolor="#E8EDED">
 			<th >Usuario Creador</th>
 			<th style="padding-left: 30px;">Tipo</th>
     	    <th style="padding-left: 20px;">Ciudad</th>
     	    <th style="padding-left: 12px;">Sector</th>
     	    <th style="padding-left: 130px;">Denuncia</th>
	                        
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

      </div>
      

      <div class="col-md-4">


       	
        <iframe style="border:7px solid black;border-radius: 10px" width="327" height="680" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6223.349965989187!2d-72.61722285!3d-38.74821994999999!2m3!

1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9614d6aab6660773%3A0x42a98f98a0267491!2sUniversidad+de+la+Frontera!5e0!3m2!1ses!2scl!4v1397102833526" 

frameborder="0" style="border:0"></iframe>
    
  </div>
</div>

</div>
</div>




</body>
</html>