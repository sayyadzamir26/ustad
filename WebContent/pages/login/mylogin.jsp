<!DOCTYPE html>
<html lang="en">
<head>
<title>login</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard.css">
<script src="${pageContext.request.contextPath}/js/plugins/jquery-2.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/angular-1.4.9.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/bootstrap.min.js"></script>

<body ng-app="app" ng-controller="userController">

	<div class="container">
		<div class="row" style="margin-top:50px;">
			<div class="col-md-offset-2 col-md-4" style="border: 2px solid green;" ng-show="showLogin" >
				<h2 class="text-center">Login Form</h2>
				<form class="form-horizontal" ng-submit="login()">
					<fieldset>
						<div class="control-group">
							<label class="control-label" for="email">ROOM DATA:</label>
							<div class="controls">
								<input id="loginEmail" name="room" ng-model="user.roomDetails"
									class="form-control" type="text" placeholder="Enter Room Details"
									class="input-large">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="password">created_by:</label>
							<div class="controls">
								<input id="loginPassword" ng-model="user.created_by"
									name="password" class="form-control" 
									 class="input-medium">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="signin"></label>
							<div class="controls">
								<input  type="submit" id="submit" class="btn btn-success" 
									value="Sign In" />
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>

		<div ng-show="showUserDetails" ng-include="'${pageContext.request.contextPath}/pages/login/userDetails.jsp'">
		</div>

	</div>
	<script src="${pageContext.request.contextPath}/js/login/app.js"></script>
	<script src="${pageContext.request.contextPath}/js/login/userService.js"></script>
	<script src="${pageContext.request.contextPath}/js/login/userController.js"></script>

</body>
</html>