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


<body ng-app="app" ng-controller="userController" data-ng-init="getUserDetails()">

	<div ng-show="showUserDetails" ng-include="'${pageContext.request.contextPath}/pages/login/userDetails.jsp'">
		</div>

	</div>
	<script src="${pageContext.request.contextPath}/js/login/app.js"></script>
	<script src="${pageContext.request.contextPath}/js/login/userService.js"></script>
	<script src="${pageContext.request.contextPath}/js/login/userController.js"></script>

</body>
</html>