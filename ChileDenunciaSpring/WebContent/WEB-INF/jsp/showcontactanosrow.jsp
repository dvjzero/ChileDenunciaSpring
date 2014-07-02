<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Ejemplo de Resultado en Tabla</title>
</head>
<body>
<h2>Registros Ingresados</h2>
<table width="50%">
    <tr>
        <th>Nombre</th>
        <th>Mail</th>
        <th>Asunto</th>
        <th>Mensaje</th>
  
    </tr>
    <c:forEach items="${contactForm.contactus}" var="contactus" varStatus="status">
        <tr>
            <td>${contactus.Nombre}</td>
            <td>${contactus.E-mail}</td>
            <td>${contactus.Asunto}</td>
            <td>${contactus.Mensaje}</td>

        </tr>
    </c:forEach>
</table>  
<br/>
<input type="button" value="Back" onclick="javascript:history.back()"/>
</body>
</html>