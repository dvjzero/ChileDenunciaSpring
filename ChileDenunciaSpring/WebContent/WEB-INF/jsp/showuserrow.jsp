<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
  <link rel="icon" href="./resources/img/favicon.ico" type="image/x-icon"> 
  <link rel="shortcut icon" href="./resources/img/favicon.ico" type="image/x-icon"> 
	<meta charset="UTF-8">
	<title>Buscar usuarios</title>
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
	<div id="font">
    <img src="./resources/img/fondo.jpg"alt="">
  </div>

  <div id ="logo">
   <img src="./resources/img/Logo.png" width=600 height=200 alt="">
 </div>
 <div style="border:1px solid black;margin-left:85px;margin-right:83px;background-color:#E8EDED;width:auto">
  <ul class="nav nav-pills">
    <li><a href="http://chiledenuncia.bl.ee/index.html" style="padding-left: 20px; padding-right: 20px;">Inicio</a></li>
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
<br><br>
  <p align="center" style="margin-left:85px;margin-right:83px;widows: 86.5%;border:1px solid black;">
    <label for="search">
      <strong>Escriba una palabra </strong>
    </label>
    <input style="border:1px solid black;border-radius: 10px" type="text" id="search"/>
    
  </p>


<div style="background-color:#D4DBE6;margin-left:85px;margin-right:85px;">  
  <h1 style="text-align:center">Listado de usuarios</h1>
  <div id="contenedor" style="height:610px;overflow-y: scroll">

    <table class="sortable-theme-dark" data-sortable width="100%" id="tblData" class="target" bgcolor="#ACAAFC">
      <thead>
        <tr bgcolor="#E8EDED">

        <th width="15%">Nombre</th>
        <th width="15%">Correo</th>
        <th width="10%">Ciudad</th>
        <th width="10%">Sector</th>
        </tr>
      </thead>     
      <tbody>
	<c:forEach items="${userForm.users}" var="user" varStatus="status">

        <tr class="active">
            <td>${user.nombre}</td>            
            <td>${user.mail}</td>
            <td>${user.ciudad}</td>
            <td>${user.sector}</td>

        </tr>
        
	</c:forEach>
          </tbody>

        </table>


      </div>

    </div>



  

</body>
  </html>