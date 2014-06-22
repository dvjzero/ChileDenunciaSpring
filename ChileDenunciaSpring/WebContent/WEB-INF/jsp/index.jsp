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
 		 <h1 style="text-align:center">${message}</h1>
  		<div id="contenedor" style="height:610px;	">




      </div>

    </div>

      </div>
      







       

 


      <br><br>
    </div>
    <br><br>

    <br>
   
  </div>
</div>




</body>
</html>