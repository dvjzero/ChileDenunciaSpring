<!doctype html>
<html lang="es">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<head>
	<link rel="icon" href="./resources/img/favicon.ico" type="image/x-icon"> 
  	<link rel="shortcut icon" href="./resources/img/favicon.ico" type="image/x-icon"> 
	<meta charset="UTF-8">
	<title>Registro de usuario</title>
	<link rel="stylesheet" href="./resources/css/bootstrap.css">

</head>

<body>
	<div id="font">
		<img src="./resources/img/fondo.jpg">
	</div>

	<div id ="logo">
		<img src="./resources/img/Logo.png" width=600 height=200 alt="">
	</div>

<form:form method="post" action="addUser.html">
	<div style="border:1px solid black;margin-left:85px;margin-right:83px;background-color:#E8EDED;width:auto">
		<ul class="nav nav-pills">
			<li><a href="http://chiledenuncia.bl.ee/index.html" style="padding-left: 20px; padding-right: 20px;">Inicio</a></li>
			<li class="active"><a href="http://chiledenuncia.bl.ee/regusuario.html" style="padding-left: 20px; padding-right: 20px;">Registro</a></li>
			<li><a href="http://chiledenuncia.bl.ee/estadistica.html" style="padding-left: 20px; padding-right: 20px;">Estadística</a></li>
			<li><a href="http://chiledenuncia.bl.ee/formdenuncia.html" style="padding-left: 20px; padding-right: 20px;">Denunciar</a></li>
			<li><a href="http://chiledenuncia.bl.ee/buscar.html" style="padding-left: 20px; padding-right: 20px;">Buscar denuncia</a></li>
			<li><a href="http://chiledenuncia.bl.ee/autoridades.html" style="padding-left: 20px; padding-right: 20px;">Autoridades</a></li>
			<li><a href="http://chiledenuncia.bl.ee/uso.html" style="padding-left: 20px; padding-right: 20px;">Uso del sitio</a></li>
			<li><a href="http://chiledenuncia.bl.ee/contacto.html" style="padding-left: 20px; padding-right: 20px;">Contáctanos</a></li>
			<li><a href="http://chiledenuncia.bl.ee/quienessomos.html" style="padding-left: 20px; padding-right: 20px;">¿Quiénes somos?</a></li>
		</ul>
	</div>
	<div align="center">
	
	<div class="container">
			<div class="row centered-form">
				<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4" style="margin-left: 160px;">					
					<div class="panel panel-default" style="width:750px">
					<div class="panel-heading">
						<h3 class="panel-title">Regístrese en ChileDenuncia<small>¡Es gratis!</small></h3>
					</div>
					<div class="panel-body">
						<form role="form">
							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<form:label path="name"><font color="Black" size="2"><spring:message code="label.name"/></font></form:label>
									<div class="form-group">
										<form:input path="name" type="text" name="usuario" id="usuario" class="form-control input-sm" placeholder="Usuario"/>
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
								<form:label for="password" path="password"><font color="Black" size="2"><spring:message code="label.password"/></font></form:label>
									<div class="form-group">
										<form:input path="password" type="password" name="contraseña" id="last_name" class="form-control input-sm" placeholder="Contraseña"/>
									</div>
								</div>
							</div>
							 <form:label for="email" path="mail"><font color="Black" size="2"><spring:message code="label.mail"/></font></form:label>
							<div class="form-group">
								<form:input path="mail" type="email" name="email" id="email" class="form-control input-sm" placeholder="Correo electrónico"/>
							</div>

							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
								 <form:label for="city" path="city"><font color="Black" size="2"><spring:message code="label.city"/></font></form:label>
									<div class="form-group">
										<form:input path="city" type="text" name="ciudad" id="ciudad" class="form-control input-sm" placeholder="Ciudad"/>
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<form:label for="neighborhood" path="sector"><font color="Black" size="2"><spring:message code="label.sector"/></font></form:label>
									<div class="form-group">
										<form:input path="sector" type="text" name="sector" id="sector" class="form-control input-sm" placeholder="Sector"/>
									</div>
								</div>
							</div>
							<input type="submit" value="Registrarse" class="btn btn-info btn-block"></a>

							

						</form>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>
</form:form>



</body>
</html>	