<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="includes.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Captura de Request</title>
</head>
<body>

	<h1>Selecciona el periodo requerido</h1>
	<form:form action="usuario.do" method="POST" commandName="usuario" >
	<table>
		<tr>
			<td>Fecha Inicio</td>
			<td><input type="date" name="FechaIni"></td>
		</tr>
		<tr>
			<td>Fecha Fin</td>
			<td><input type="date" name="FechaFin"></td>			
			<div data-win-control="WinJS.UI.DatePicker" data-win-options="{current:'2/20/2011'}"></div>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" name="action" value="request"/>
			</td>
		</tr>
		
	</table>
	</form:form>
	<br>
		<table border="2">
			<th>Id</th>
			<th>IS</th>
			<th>Nombre</th>
			<th>Serie</th>
				<c:forEach items="${usuarioList}" var="usuario">
					<tr>
						<td>${usuario.usuarioId}</td>
						<td>${usuario.softtekIs}</td>
						<td>${usuario.nombre}</td>
						<td>${usuario.serie}</td>
					</tr>
				</c:forEach>
		</table>

</body>
</html>