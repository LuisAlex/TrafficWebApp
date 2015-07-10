<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE HTML>
<!--
	Prologue by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<sec:authorize access="isAuthenticated()">
<% 
	response.sendRedirect("index");
%>
</sec:authorize>
<title>Login</title>
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
	<!-- Main -->
	<div id="main" style="margin-left: 0px;">
		<!-- Contact -->
		<section id="banner" class="four" style="height: 670px;">
			<div class="container" style="width: 400px;">
				<!-- Spring Security start -->
				<header>
					<h2></h2>
				</header>
				<form action="j_spring_security_check" method="POST">
					<div class="row">
						<div class="12u 12u$(mobile)">
							IS: <input type='text' name='j_username' value=''>
						</div>
					</div>
					<div class="row">
						<div class="12u 12u$(mobile)">
							Contraseña: <input type='password' name='j_password' />
						</div>
					</div>
					<div class="row">
						<div class="12u 12u$(mobile)">
							<span style="color: red;">${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</span>
						</div>
					</div>
					<div class="row">
						<div class="12u 12u$(mobile)">
							<input type="submit" value="Iniciar Sesión" />
						</div>
					</div>
				</form>
			</div>
		</section>
	</div>
	<!-- Footer -->
	<div id="footer" style="margin-left: 0px;">
		<!-- Copyright -->
		<ul class="copyright">
			<li>&copy; Softtek. Todos los derechos reservados.</li>
		</ul>
	</div>
	<!-- Scripts -->
	<script src="<spring:url value='resources/js/jquery.min.js' />"></script>
	<script src="<spring:url value='resources/js/jquery.scrolly.min.js' />"></script>
	<script
		src="<spring:url value='resources/js/jquery.scrollzer.min.js' />"></script>
	<script src="<spring:url value='resources/js/skel.min.js' />"></script>
	<script src="<spring:url value='resources/js/util.js' />"></script>
	<!--[if lte IE 8]><script src="<spring:url value='resources/js/ie/respond.min.js' />"></script><![endif]-->
	<script src="<spring:url value='resources/js/main.js' />"></script>
</body>
</html>