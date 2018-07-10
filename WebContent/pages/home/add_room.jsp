<!DOCTYPE HTML>
<!--
	Phantom by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>

<title>Generic - Phantom by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<script src="${pageContext.request.contextPath}/js/plugins/jquery-2.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/angular-1.4.9.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/bootstrap.min.js"></script>

</head>
<body ng-app="app" ng-controller="userController">
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<div class="inner">

				<!-- Logo -->
				<a href="index.html" class="logo"> <span class="symbol"><img
						src="images/logo.svg" alt="" /></span><span class="title">Helping Hand</span>
				</a>

				<!-- Nav -->
				<nav>
					<ul>
						<li><a href="#menu">Menu</a></li>
					</ul>
				</nav>

			</div>
		</header>

		<!-- Menu -->
		<nav id="menu">
			<h2>Menu</h2>
			<ul>
				<li><a
					href="${pageContext.request.contextPath}/pages/home/index.jsp">Home</a></li>
				<li><a href="generic.html">Share Jobs info</a></li>
				<li><a href="${pageContext.request.contextPath}/pages/home/add_room.jsp">Share Room info</a></li>
				<li><a href="${pageContext.request.contextPath}/pages/home/generic.jsp">Buy/Sell</a></li>
				<li><a href="elements.html">About</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<div class="container">
					<div class="row" style="margin-left: 350px;">
						<div class="col-md-offset-2 col-md-8"
							style="border: 8px solid green;" ng-show="showLogin">
							<h2 class="text-center">Add Room Information</h2>
							<form class="form-horizontal" ng-submit="login()">
								<fieldset>
									<div class="control-group">
										<label class="control-label" for="email">ROOM DATA:</label>
										<div class="controls">
											<textarea id="loginEmail" name="room"
												ng-model="user.roomDetails" class="form-control" type="text"
												placeholder="Enter Room Details" class="input-large"
												required rows="12"></textarea>
										</div>
									</div>

									<div class="field">
										<label class="control-label" for="password">created_by:</label>
										<!-- <div class="field">
											<input id="loginPassword" ng-model="user.created_by"
												name="password" class="field" 
												required>
										</div> -->
									</div>
									<div class="field">
										<input type="email" name="password" id="loginPassword"
											placeholder="Email" ng-model="user.created_by" required />
									</div>
									<div class="control-group">
										<label class="control-label" for="signin"></label>
										<div class="controls">
											<input type="submit" id="submit" class="btn btn-success"
												value="Add Room"/>
										</div>
									</div>
								</fieldset>
							</form>
						</div>
					</div>

					<div ng-show="showUserDetails"
						ng-include="'${pageContext.request.contextPath}/pages/login/userDetails.jsp'">
					</div>

				</div>

			</div>
		</div>

		<!-- Footer -->
		<footer id="footer">
			<div class="inner">
				<section>
					<h2>Get in touch</h2>
					<form method="post" action="#">
						<div class="field half first">
							<input type="text" name="name" id="name" placeholder="Name" />
						</div>
						<div class="field half">
							<input type="email" name="email" id="email" placeholder="Email" />
						</div>
						<div class="field">
							<textarea name="message" id="message" placeholder="Message"></textarea>
						</div>
						<ul class="actions">
							<li><input type="submit" value="Send" class="special" /></li>
						</ul>
					</form>
				</section>
				<section>
					<h2>Follow</h2>
					<ul class="icons">
						<li><a href="#" class="icon style2 fa-twitter"><span
								class="label">Twitter</span></a></li>
						<li><a href="#" class="icon style2 fa-facebook"><span
								class="label">Facebook</span></a></li>
						<li><a href="#" class="icon style2 fa-instagram"><span
								class="label">Instagram</span></a></li>
						<li><a href="#" class="icon style2 fa-dribbble"><span
								class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon style2 fa-github"><span
								class="label">GitHub</span></a></li>
						<li><a href="#" class="icon style2 fa-500px"><span
								class="label">500px</span></a></li>
						<li><a href="#" class="icon style2 fa-phone"><span
								class="label">Phone</span></a></li>
						<li><a href="#" class="icon style2 fa-envelope-o"><span
								class="label">Email</span></a></li>
					</ul>
				</section>
				<ul class="copyright">
					<li>&copy; Untitled. All rights reserved</li>
					<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
			</div>
		</footer>

	</div>

	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/js/login/app.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/login/userService.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/login/userController.js"></script>

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>