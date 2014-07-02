
<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
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




</head>
<body>

	<div align="center" style="background-color: #D4DBE6; margin-left: 85px; margin-right: 83px">

		<table id="table_id" width="100%" class="display">
			<thead>
				<tr>
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


</body>
</html>