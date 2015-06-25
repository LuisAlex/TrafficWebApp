<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ include file="includes.jsp"%>
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
				<h1 id="title">Roberto C Torres</h1>
				<p>Softtek Employee</p>
			</div>
			<nav id="nav">
			<ul>
				<li><a href="#top" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-user">Control de usuarios</span></a></li>
				<li><a href="#users" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-users">Usuarios</span></a></li>
			</ul>
			</nav>
		</div>

		<div class="bottom"></div>

	</div>

	<!-- Main -->
	<div id="main">

		<!-- Intro -->
		<section id="top" class="two">
		<div class="container">

			<header>
			<h2>Control de usuarios</h2>
			</header>
			<form:form action="usuario.do" method="POST" commandName="usuario">

				<div class="row">
					<div class="6u$ 12u$(mobile)" style="margin-left: 250px;">
						<td><form:input path="usuarioId" placeholder="Id" /></td>
					</div>
				</div>
				<div class="row">
					<div class="6u$ 12u$(mobile)" style="margin-left: 250px;">
						<td><form:input path="softtekIs" placeholder="Softtek IS" /></td>
					</div>
				</div>
				<div class="row">
					<div class="6u$ 12u$(mobile)" style="margin-left: 250px;">
						<td><form:input path="nombre" placeholder="Nombre" /></td>
					</div>
				</div>
				<div class="row">
					<div class="6u$ 12u$(mobile)" style="margin-left: 250px;">
						<td><form:input path="serie" placeholder="Serie" /></td>
					</div>
				</div>
				<div class="row">
					<div class="12u$ 12u$(mobile)">
						<button type="submit" name="action" value="+"><i class="icon fa-plus"></i></button>
						<button type="submit" name="action" value="-"><i class="icon fa-minus"></i></button>
						<button type="submit" name="action" value="editar"><i class="icon fa-pencil"></i></button> 
						<button type="submit" name="action" value="buscar"><i class="icon fa-search"></i></button>
					</div>
				</div>
			</form:form>

			<footer> </footer>

		</div>
		</section>

		<!-- Portfolio -->
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

	</div>

	<!-- Footer -->
	<div id="footer">

		<!-- Copyright -->
		<ul class="copyright">
			<li>&copy; Softtek. Todos los derechos reservados.</li>
		</ul>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollzer.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>