<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<meta charset="UTF-8">
	<title>Registro de usuario</title>
	

</head>

<body>


<form:form method="post" action="addUser.html" commandName="administrador">
	
	<form:errors path="name" cssClass="errorblock" element="div"  />
	<div align="center">
	
	<div class="container">
			<div class="row centered-form">
				<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4" style="margin-left: 160px;">					
					<div class="panel panel-default" style="width:750px">
					<div class="panel-heading">
						<h3 class="panel-title">Regístrese en ChileDenuncia<small>¡Es gratis!</small></h3>
					</div>
					<div class="panel-body">
						
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
							
							${message}
							<input type="submit" value="Registrarse" class="btn btn-info btn-block"/>

							

					</div>
				</div>
			</div>
		</div>

	</div>
</div>
</form:form>



</body>
</html>	