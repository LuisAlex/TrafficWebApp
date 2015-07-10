<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ include file="includes.jsp"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 
 	Prologue by HTML5 UP 
 	html5up.net | @n33co 
 	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license) 
 -->
<html>
<head>
<title>GateKeeper Usuarios</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="<spring:url value='js/ie/html5shiv.js' />"></script><![endif]-->
<link rel="stylesheet"
	href="<spring:url value='resources/css/main.css' />" />
<link rel="stylesheet"
	href="<spring:url value='resources/css/jquery-ui.css' />" />
<!--[if lte IE 8]><link rel="stylesheet" href="../css/ie8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="../css/ie9.css" /><![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<!-- Header -->
	<div id="header">
		<div class="top">
			<!-- Logo -->
			<div id="logo">
				<span class="image icon fa-laptop"></span>
				<h1 id="title">
					<sec:authentication property="principal.username" />
				</h1>
				<p style="color: #fff;">
					<sec:authentication property="principal.authorities" />
				</p>
				<p>Asociado Softtek</p>
			</div>
			<nav id="nav">
			<ul>
				<sec:authorize access="hasRole('Admin')">
					<li>
						<a href="#user-control" id="user-control-link" class="skel-layers-ignoreHref"><span class="icon fa-user">Control de usuarios</span></a>
					</li>
				</sec:authorize>
				<li>
					<a href="#users" id="users-link" class="skel-layers-ignoreHref"><span class="icon fa-users">Usuarios</span></a>
				</li>
				<sec:authorize access="hasRole('Admin')">
					<li>
						<a href="#reports" id="reports-link" class="skel-layers-ignoreHref"><span class="icon fa-file">Reportes</span></a>
					</li>
				</sec:authorize>
				<li>
					<a href="logout" id="logout-link" class="skel-layers-ignoreHref"><span class="icon fa-user-times"><spring:message code="user.logout" /></span></a>
				</li>
			</ul>
			</nav>
		</div>
		<div class="bottom"></div>
	</div>
	<!-- Main -->
	<div id="main">
		<!-- Users control -->
		<section id="user-control" class="three">
		<div class="container">
			<sec:authorize access="hasRole('Admin')">
				<header>
				<h2>Control de usuarios</h2>
				</header>
				<form:form action="usuario.do" method="POST" commandName="usuario">
					<div class="row">
						<div class="12u$ 12u$(mobile)">
							<form:input path="usuarioId" placeholder="Id" />
						</div>
					</div>
					<div class="row">
						<div class="12u$ 12u$(mobile)">
							<form:input path="softtekIs" placeholder="Softtek IS" />
						</div>
					</div>
					<div class="row">
						<div class="12u$ 12u$(mobile)">
							<form:input path="nombre" placeholder="Nombre" />
						</div>
					</div>
					<div class="row">
						<div class="12u$ 12u$(mobile)">
							<form:input path="serie" placeholder="Serie" />
						</div>
					</div>
					<div class="row">
						<div class="12u$ 12u$(mobile)">
							<button type="submit" name="action" value="+">
								<i class="icon fa-plus"></i>
							</button>
							<button type="submit" name="action" value="-">
								<i class="icon fa-minus"></i>
							</button>
							<button type="submit" name="action" value="editar">
								<i class="icon fa-pencil"></i>
							</button>
							<button type="submit" name="action" value="buscar">
								<i class="icon fa-search"></i>
							</button>
						</div>
					</div>
				</form:form>
			</sec:authorize>
			<footer> </footer>
		</div>
		</section>
		<!-- Users -->
		<section id="users" class="two">
		<div class="container">
			<header>
			<h2>Usuarios</h2>
			</header>
			<div class="row">
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
			</div>
		</div>
		</section>
		<!-- Reports -->
		<section id="reports" class="three">
			<div class="container">
				<sec:authorize access="hasRole('Admin')">
					<header>
					<h2>Reportes</h2>
					</header>
					<form:form action="usuario.do" method="POST" commandName="usuario">
						<div class="row">
							<div class="6u$ 12u$(mobile)">
							</div>
						</div>
						<div class="row">
							<div class="12u$ 12u$(mobile)">
								<select>
									<option>Tipo de reporte</option>
									<option>Entrada / salida de equipos</option>
									<option>Equipos en Softtek</option>
									<option>Equipos fuera de Softtek</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="12u$ 12u$(mobile)">
								<input type="text" id="datepicker-start" placeholder="Fecha de inicio">
							</div>
						</div>
						<div class="row">
							<div class="12u$ 12u$(mobile)">
								<input type="text" id="datepicker-end" placeholder="Fecha de fin">
							</div>
						</div>
						<div class="row">
							<div class="12u$ 12u$(mobile)">
								<button type="submit" name="action" value="+">
									<i class="icon fa-file-excel-o"></i>
								</button>
								<button type="submit" name="action" value="-">
									<i class="icon fa-file-pdf-o"></i>
								</button>
							</div>
						</div>
					</form:form>
				</sec:authorize>
				<footer> </footer>
			</div>
		</section>
	</div>
	<!-- Footer -->
	<div id="footer">
		<!-- Copyright -->
		<ul class="copyright">
			<li>&copy; Softtek. Todos los derechos reservados.</li>
		</ul>
	</div>
	<!-- Scripts -->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/jquery.scrolly.min.js"></script>
	<script src="resources/js/jquery.scrollzer.min.js"></script>
	<script src="resources/js/skel.min.js"></script>
	<script src="resources/js/util.js"></script>
	<!--[if lte IE 8]><script src="resources/js/ie/respond.min.js"></script><![endif]-->
	<script src="resources/js/main.js"></script>
	<script src="resources/js/jquery-ui.js"></script>
	<script>
		$(function() {
	    	$("#datepicker-start").datepicker();
	    	$("#datepicker-end").datepicker();
	 	});
	</script>
</body>
</html>
