<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu Roles</title>
</head>
<body>
	<h1>Alta de Roles</h1>
	<form:form action="rol.do" method="POST" commandName="role">
		<table>
			<tr>
				<td>ID</td>
				<td><form:input path="roleId" /></td>
			</tr>
			<tr>
				<td>Nombre</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>Descripción</td>
				<td><form:input path="description" /></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" name="action" value="+" />
					<input type="submit" name="action" value="-" /> <input
					type="submit" name="action" value="editar" /> <input type="submit"
					name="action" value="buscar" /></td>
			</tr>
		</table>
	</form:form>
	<br>
	<table border="2">
		<tr>
			<th>Id</th>
			<th>Nombre</th>
			<th>Descripción</th>
		</tr>
		<c:forEach items="${rolesList}" var="role">
			<tr>
				<td>${role.roleId}</td>
				<td>${role.name}</td>
				<td>${role.description}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>