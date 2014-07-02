<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head> 


<meta charset="UTF-8">
<title>Registro de Contacto</title>
</head>
<body>
	${message}
	<form:form method="post" action="addContact.html">
		<div align="center">
			<div class="container">
				<div class="row centered-form">
					<div
						class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4"
						style="margin-left: 160px;">
						<div class="panel panel-default" style="width: 750px">
							<div class="panel-heading">
								<h3 class="panel-title">Ingrese su denuncia</h3>
							</div>
							<div class="panel-body">
								<form>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group" style="border-radius: 10px;">
												<form:label path="users_creator" for="name" ><font size="3"><spring:message code="label.users_creator" /></font></form:label>
																 <form:input size="39"
														path="users_creator" type="text" class="form-control"
														id="name" placeholder="Ingrese su nombre"
														required="required" />
											</div>
											<div class="form-group">
												<form:label	for="subject" path="type"><font size="3"><spring:message code="label.type" /></font></form:label><br>
														<form:select path="type" id="subject" name="subject" class="form-control" required="required" style="width:340px">
															<form:option selected="selected" disabled="disabled" value="none" label="Escoja uno:"/>
															<form:options items="${typeList}"/>
														</form:select>
											</div>
											<div class="form-group" style="border-radius: 10px;">

												<div class="form-group" style="border-radius: 10px;">
													<form:label for="name" path="city"><font size="3"><spring:message code="label.city" /></font></form:label>
															<form:input size="39" path="city" type="text"
															class="form-control" id="name"
															placeholder="Ciudad de la denuncia" required="required" />
												</div>
												<form:label path="sector" for="name"><font size="3"><spring:message code="label.sector" /></font></form:label>

														<form:input size="39" path="sector" type="text"
														class="form-control" id="name"
														placeholder="Sector de la denuncia" required="required" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<form:label for="name" path="complaint"><font size="3"><spring:message code="label.complaint" /></font></form:label>
												<form:textarea path="complaint" name="message" id="message" class="form-control" rows="9" cols="39" required="required" placeholder="Descripción de la denuncia"></form:textarea>
											</div>
										</div>
										<br> <input type="submit" value="Adjuntar archivo">
										<br> <br>
										<div class="col-md-12">
											<button value="Agregar denuncia" type="submit"
												class="btn btn-primary pull-right" id="btnContactUs">

												<font size="3">Enviar denuncia</font>
											</button>

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