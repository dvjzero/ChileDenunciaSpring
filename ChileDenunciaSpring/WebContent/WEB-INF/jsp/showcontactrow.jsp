<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
  <link rel="icon" href="./resources/img/favicon.ico" type="image/x-icon"> 
  <link rel="shortcut icon" href="./resources/img/favicon.ico" type="image/x-icon"> 
	<meta charset="UTF-8">
	<title>ChileDenuncia Home</title>
	<link href="./resources/css/bootstrap.css" rel="stylesheet">
	<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <script src="./resources/js/bootstrap.js"></script>
  
  <link href="./resources/css/signin.css" rel="stylesheet">
  
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
	<div id="font">
    <img src="./resources/img/fondo.jpg" alt="">
  </div>

  <div id ="logo">
   <img src="./resources/img/Logo.png" width=600 height=200 alt="" >
 </div>
 
 <div style="border:1px solid black;margin-left:85px;margin-right:83px;background-color:#E8EDED;width:auto">
  <ul class="nav nav-pills">
   <li class="active"><a href="http://chiledenuncia.bl.ee/index.html" style="padding-left: 20px; padding-right: 20px;">Inicio</a></li>
   <li><a href="http://chiledenuncia.bl.ee/regusuario.html" style="padding-left: 20px; padding-right: 20px;">Registro</a></li>
   <li><a href="http://chiledenuncia.bl.ee/estadistica.html" style="padding-left: 20px; padding-right: 20px;">Estadística</a></li>
   <li><a href="http://chiledenuncia.bl.ee/formdenuncia.html" style="padding-left: 20px; padding-right: 20px;">Denunciar</a></li>
   <li><a href="http://chiledenuncia.bl.ee/buscar.html" style="padding-left: 20px; padding-right: 20px;">Buscar denuncia</a></li>
   <li><a href="http://chiledenuncia.bl.ee/autoridades.html" style="padding-left: 20px; padding-right: 20px;">Autoridades</a></li>
   <li><a href="http://chiledenuncia.bl.ee/uso.html" style="padding-left: 20px; padding-right: 20px;">Uso del sitio</a></li>
   <li><a href="http://chiledenuncia.bl.ee/contacto.html" style="padding-left: 20px; padding-right: 20px;">Contáctanos</a></li>
   <li><a href="http://chiledenuncia.bl.ee/quienessomos.html" style="padding-left: 20px; padding-right: 20px;">¿Quiénes somos?</a></li>

 </ul>
</div>
<div>
  <div class="container">
  <div class="row well" style="background-color:rgba(255,0,0,0.0);border:0px solid black;">


    <div class="col-md-8" style="display:inline-block;background-color:#D4DBE6;text-align:center;border:0px solid black;border-radius: 10px;;table-layout:fixed">

      <div style="background-color:#D4DBE6;margin-left:85px;margin-right:85px;">  
 		 <h1 style="text-align:center">Listado de denuncias</h1>
  		<div id="contenedor" style="height:610px;	">

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

      </div>
      

      <div class="col-md-4">


       <div style="display:inline-block;background-color:#4D7DCC;text-align:center;border:1px solid black;width:347px;border-radius: 10px;" >
        <form>

         <form class="form-signin" role="form">
          <h2 class="form-signin-heading">Ingreso de usuario</h2>
          <input style="margin-left:40px;width:80%;border:1px solid black" type="email" class="form-control" placeholder="Correo electrónico" required autofocus 

style="">
          <input style="margin-left:40px;width:80%;border:1px solid black" type="password" class="form-control" placeholder="Contraseña" required>
          <label style="width:50%" class="checkbox">
            <input style="margin-left:20px" type="checkbox" value="remember-me">Recordar datos
          </label>
          <a href="http://chiledenuncia.bl.ee/trans.html">
            <button style="margin-left:40px;width:80%;border:1px solid black" class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>  
          </a><br><br>
          <p align="left" style="margin-left:14px"><strong>Conectar con</strong></p>
          <a href="">
            <button style="margin-left:40px;width:80%;border:1px solid black;background-color:#3b5998" class="btn btn-lg btn-primary btn-block" 

type="submit">Facebook</button>  
          </a><br>
          <a href="">
            <button style="margin-left:40px;width:80%;border:1px solid black;background-color:#d50f25" class="btn btn-lg btn-primary btn-block" 

type="submit">Google</button>  
          </a><br>
          <a href="">
            <button style="margin-left:40px;width:80%;border:1px solid black;background-color:#4099FF" class="btn btn-lg btn-primary btn-block" 

type="submit">Twitter</button>  
          </a><br>
         


        </form>


        <br>
        <a href="" style="color:white">Recuperar contraseña</a>

      </form>


      <br><br>
    </div>
    <br><br>

    <br>
    <fieldset>
      <div style="background-color:#4D7DCC;text-align:center;border:1px solid black;border-radius: 10px;">

        <legend align="center"><font color="white">Denuncias en su zona:</font></legend>
        <font color="white"></font>	
        <iframe width="327" height="220" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6223.349965989187!2d-72.61722285!3d-38.74821994999999!2m3!

1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9614d6aab6660773%3A0x42a98f98a0267491!2sUniversidad+de+la+Frontera!5e0!3m2!1ses!2scl!4v1397102833526" 

frameborder="0" style="border:0"></iframe>
      </div>
    </fieldset>
  </div>
</div>

</div>
</div>




</body>
</html>