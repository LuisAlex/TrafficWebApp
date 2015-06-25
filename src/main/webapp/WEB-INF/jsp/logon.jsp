<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE HTML>
<!--
	Prologue by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>GateKeeper Logon</title>
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
		<section id="contact" class="four" style="height: 600px;">
			<div class="container">

				<header>
					<h2>Gatekeeper</h2>
				</header>

				<form method="post" action="/TrafficWebApp/usuariosAlta">
					<div class="row">
						<div class="6u 12u$(mobile)" style="margin-left: 250px; margin-top: 50px;">
							<input type="text" name="is" placeholder="Softtek IS" />
						</div>
					</div>
					<div class="row">
						<div class="6u$ 12u$(mobile)" style="margin-left: 250px;">
							<input type="password" name="passwd" placeholder="Contraseña" />
						</div>
					</div>
					<div class="row">
						<div class="6u$ 12u$(mobile)" style="margin-left: 250px;">
							<input type="submit" value="Login" />
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