<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" style="margin-top: 20px;">
<head>

<meta charset="UTF-8">
<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css"
	href="//cdn.datatables.net/1.10.0/css/jquery.dataTables.css">
<!-- jQuery -->
<script type="text/javascript" charset="utf8"
	src="//code.jquery.com/jquery-1.10.2.min.js"></script>

<!-- DataTables -->
<script type="text/javascript" charset="utf8"
	src="//cdn.datatables.net/1.10.0/js/jquery.dataTables.js"></script>


<title>Usuarios</title>


</head>


<body>


	<div align="center" style="background-color: #D4DBE6; margin-left: 85px; margin-right: 83px">

		<table id="table_id" width="100%" class="display">
			<thead>
				<tr>

					<th>Nombre</th>
					<th>Correo</th>
					<th>Ciudad</th>
					<th>Sector</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${userForm.users}" var="user" varStatus="status">

					<tr class="success">
						<td>${user.nombre}</td>
						<td>${user.mail}</td>
						<td>${user.ciudad}</td>
						<td>${user.sector}</td>
						<td><form:form method="post" action="deleteContact.html">
								<input type="hidden" name="id" value="${user.id}" />
								<input type="submit" value="eliminar" />
							</form:form></td>
					</tr>

				</c:forEach>
			</tbody>

		</table>

	</div>





</body>
</html>