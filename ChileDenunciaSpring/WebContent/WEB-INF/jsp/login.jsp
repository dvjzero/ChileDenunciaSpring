<!doctype html>
<html lang="es">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<head>
<link rel="icon" href="./resources/img/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="./resources/img/favicon.ico"
	type="image/x-icon">
<meta charset="UTF-8">
<title>Registro de usuario</title>
<link rel="stylesheet" href="./resources/css/bootstrap.css">

</head>
<body>
<div align="center" style="margin-left: 83px; margin-right: 86px">
	<form:form method="post" action="show.html">
		<form:label path="name">
			<font color="Black" size="2"><spring:message code="label.name" /></font>
		</form:label>
		<div class="form-group">
			<form:input style="width:40%;opacity:0.6;border:2px solid white;" size="100" path="name" type="text" name="usuario" id="usuario"
				class="form-control input-sm" placeholder="Usuario" />
		</div>

		<div class="form-group">
			<form:label for="password" path="password">
				<font color="Black" size="2"><spring:message
						code="label.password" /></font>
			</form:label>
			<div class="form-group">
				<form:input style="width:40%;opacity:0.6;border: 2px solid white;" size="100" path="password" type="password" name="contraseña"
					id="last_name" class="form-control input-sm"
					placeholder="Contraseña" />
			</div>
		</div>


		<input style="width:40%" type="submit" value="Ingresar" class="btn btn-info btn-block">
	</form:form>
	</div>
	</body>

</html>
