<!DOCTYPE html>
<html lang="en">
<head>
<title>Registration</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/dashboard.css">
<script
	src="${pageContext.request.contextPath}/js/plugins/jquery-2.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/plugins/angular-1.4.9.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/plugins/bootstrap.min.js"></script>
	
	<style>
.mainContainer {
	background: url("${pageContext.request.contextPath}/images/BG.jpg")
		no-repeat;
	background-size: 100% 100%;
	/* position: absolute; */
	float: left;
}</style>
	</head>
	
	
<body ng-app="app" ng-controller="RegisterController">
<div class="container">
		<div class="row" style="margin-top: 50px;">
			<div class="col-md-offset-2 col-md-4"
				style="border: 2px solid green;" ng-show="showLogin">
				<h2 class="text-center">Registration Form</h2>
				<form class="form-horizontal" ng-submit="register()">
					<fieldset>
						<div class="control-group">
							<label class="control-label" for="email">Reference Email
								id</label>
							<div class="controls">
								<input id="loginEmail" name="room" ng-model="user.created_by"
									class="form-control" type="text"
									placeholder="Reference Email" class="input-large" required>
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="password">Email id:</label>
							<div class="controls">
								<input id="loginPassword" ng-model="user.email"
									name="password" class="form-control" class="input-medium" required>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="password">Pin 4 digit:</label>
							<div class="controls">
								<input id="loginPassword" ng-model="user.password"
									name="password" class="form-control" class="input-medium" required>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="signin"></label>
							<div class="controls">
								 <input type="submit" id="submit" class="btn btn-success"
									value="Register" /> 
									
									 <input type="submit" id="submit" class="btn btn-success"
									value="Login" /> 
									    <span class="psw">Forgot <a href="#">password?</a></span>
									
									
									
									
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
	<script src="${pageContext.request.contextPath}/js/login/app.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/login/RegisterService.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/login/RegisterController.js"></script>

</body>
</html>