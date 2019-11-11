<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mandiri Utama Finance</title>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resources/bower_components/login_css/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/bower_components/login_css/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/bower_components/login_css/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/bower_components/login_css/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/bower_components/login_css/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/bower_components/login_css/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/bower_components/login_css/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/bower_components/login_css/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/bower_components/login_css/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/bower_components/login_css/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/bower_components/login_css/css/main.css">
<!--===============================================================================================-->
</head>
<body>
<div class="limiter">
		<div class="container-login100" style="background-image: url('resources/bower_components/login_css/images/bg-01.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						Log in
					</span>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>


					<div class="container-login100-form-btn">
						<button type="submit" class="login100-form-btn" onclick="index()">
							Login
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
	
<!--===============================================================================================-->
	<script src="resources/bower_components/login_css/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/bower_components/login_css/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/bower_components/login_css/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/bower_components/login_css/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/bower_components/login_css/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/bower_components/login_css/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/bower_components/login_css/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resources/bower_components/login_css/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="resources/bower_components/login_css/js/main.js"></script>

<script>
function index(){
	location.href="/dashboard";
}</script>
</body>
</html>