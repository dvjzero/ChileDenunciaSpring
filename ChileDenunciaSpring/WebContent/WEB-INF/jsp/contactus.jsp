<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
    <title>Registro de Contacto</title>
</head>
<body>

<form:form method="post" action="addContactus.html" >
<div align="center">
    <div class="container">
        <div class="row centered-form">
            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4" style="margin-left: 160px;">                   
                <div class="panel panel-default" style="width:750px">
                    <div class="panel-heading">
                        <h3 class="panel-title">Datos de contacto</h3>
                    </div>
                    <div class="panel-body">
                         <form>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group" style="border-radius: 10px;">
                                    <form:label path="name"><spring:message code="label.name"/></form:label>
                                        <form:input path="name" type="text" class="form-control" id="name" placeholder="Ingrese su nombre" required="required" />
                                    </div>
                                    <div class="form-group">
                                        <form:label path="mail"><spring:message code="label.mail"/></form:label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                            </span>
                                            <form:input path="mail"  type="email" class="form-control" id="email" placeholder="Ingrese su correo" required="required" /></div>
                                        </div>
                                        <div class="form-group">
                                            <form:label path="subject"><spring:message code="label.subject"/></form:label>
                                                  <form:select path="subject" id="subject" name="subject" class="form-control" required="required" style="width:340px">
															<form:option selected="selected" disabled="disabled" value="none" label="Escoja uno:"/>
															<form:options items="${subjectList}"/>
														</form:select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <form:label path="message"><spring:message code="label.message"/></form:label>
                                                    <form:textarea path="message" name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                                    placeholder="Mensaje"></form:textarea>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">
                                                    Enviar mensaje</button>
                                                </div>
                                            </div>
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