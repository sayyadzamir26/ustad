<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<html ng-app="loginApp">

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link href="${pageContext.request.contextPath}/images/vodafone.ico"
	rel="shortcut icon" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Login</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/new-jquery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/captcha/CAPTCHA.js"></script>
<jsp:include page="/pages/include/Imports.jsp"></jsp:include>

<style>
.mainContainer {
	background: url("${pageContext.request.contextPath}/images/bg.jpg")
		no-repeat;
	background-size: 100% 100%;
	/* position: absolute; */
	float: left;
}

.circleName {
	/* background:url("${pageContext.request.contextPath}/images/circle.png");
	background-repeat: no-repeat;
	background-position:1% 0%; */
	-webkit-appearance: none;
	-moz-appearance: none;
	color: #000 !important;
	/* background-size: 25px 30px; */
}

.circleName:-moz-focusring{
	color: transparent;
	text-shadow: 0 0 0 #BFBCBC;
}

/* .userName {
	background:url("${pageContext.request.contextPath}/images/mobile_number.png");
	background-repeat: no-repeat;
	background-position: 1% 0%;
	color: #000;
    background-size: 25px 32px;
} */

.userName1 {
	background-repeat: no-repeat;
	background-position: 1% 0%;
	color: #DCDCDC;
}

.otpfield {
	/* background:url("${pageContext.request.contextPath}/images/Otp_login.png");
	background-repeat: no-repeat;
	background-position: 1% 0%; */
	color: #000;
	font-family: RobotoMedium;
	/* border-bottom-color: #fff; */
}

.userName:focus , .otpfield:focus ,.circleName:focus , .user-text:focus{
    border-bottom-color: #fff;
    border-bottom: 2px solid #000;
    font-family: RobotoMedium;
}

.userNameinput::-webkit-input-placeholder:focus{
	font-family:RobotoMedium;
}

/* 
.loginBtn:focus{
	box-shadow: 0 0 3pt 2pt #719ECE;
} */

/* Chrome placeholders */
::-webkit-input-placeholder {
	color: #000000;
	font-family:RobotoLight;
}

::-webkit-input-placeholder:focus {
	color: #000000;
	font-family:RobotoMedium;
}

/* Firefox placeholders */
select::-moz-placeholder {
	color: #000000;
	font-family:RobotoLight;
}

select::-moz-placeholder:focus {
	color: #000000 !important;
	font-family:RobotoMedium;
}

select option {
	color: #323232;
}

select::-ms-expand {
	display: none;
}

.loginFooter {
	float: left;
	width: 100%;
	background-color: #f5f5f5;
	height: 4%;
	text-align:center;
}

.footerTextStyle {
	font-family: RobotoRegular;
	font-size: 0.8em;
	color: #000;
}

select option { font-family: RobotoRegular; color: #000;}

.user-text
{
	height: 38px;
    font-size: 14px;
    font-family: RobotoMedium;
    background-repeat: no-repeat;
    background-position: 1% 0%;
    color: #000;
    background-color: transparent;
    border: none;
    border-bottom: 1px solid #848484;
    outline: none;
    width: 58% !important;
    margin-left: 9.5%;
}

.user-text:before {
	content: 'Enter Captcha';
}

#captcha > div
{
	margin-top:37px;
}

.loginBtn{
	margin-left: 24%;
    margin-top: 14%;
}
</style>

<script type="text/javascript">
window.onload=function() {

	if(document.getElementById('refreshButton').disabled)
	{
	//document.getElementById('refreshButton').title="disable for 10 seconds";
		document.getElementById('refreshButton').style.cursor="not-allowed";
	}
	
    setTimeout(function(){
      document.getElementById('refreshButton').disabled = false;
      document.getElementById('refreshButton').style.cursor="auto";
    },10000);
    
  }
  
function checkCaptcha() {
	document.getElementById('refreshButton').disabled = true;
	document.getElementById("captcha").value='';
	document.getElementById('refreshButton').style.cursor="not-allowed";
	
	var path = '<%=request.getContextPath() %>';
	var path1 = '/captcha-image.jpg';
	document.getElementById("captchaId").innerHTML = "<img src='"+path+path1+"' style='width: 100%;height:50px;'/>";
	
	setTimeout(function(){
		 document.getElementById('refreshButton').disabled = false;
	     document.getElementById('refreshButton').style.cursor="auto";
	   },10000);
	
}	
</script>
</head>

<body ng-controller="loginController" ng-app="loginApp" ng-cloak>
	<div class="w mainContainer" style="height: 96%;">
		<div class="loginContainer">
			<script type="text/javascript">
				var springException = "${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}";
				var springException1 = "${fn:escapeXml(param.msg)}";
				var urlException = "${fn:escapeXml(param.msg)}"
				console.log('Spring exception', springException);
				console.log('Spring exception1', springException1);

				localStorage.setItem("exception.code",'${fn:escapeXml(param.msg)}');
				localStorage.setItem("exception.token",'${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}');
				//console.log(springException1);
			 	if (springException1 == 'SessionAuthenticationException') {
					localStorage.setItem("exceptionMessage",'SessionAuthenticationException');
					window.location.href = ctx+ '/pages/login?msg=SessionAuthenticationException';
				}
				if (springException1 == 'sessionExpired') {
					localStorage.setItem("exceptionMessage", 'sessionExpired');
					window.location.href = ctx+ '/pages/login/?msg=sessionExpired';
				}

				if (springException1 == 'sessionAuthError') {
					localStorage.setItem("exceptionMessage", 'sessionAuthError');
					window.location.href = ctx+ '/pages/login/?msg=sessionAuthError';
				}
				if (springException1 == 'maxSession') {
					localStorage.setItem("exceptionMessage", 'maxSession');
					window.location.href = ctx + '/pages/login/?msg=maxSession';
				}
			</script>
			<img src="<%=request.getContextPath()%>/images/login_vodafone_logo.png" style="width: 50px;height: 50px;position: absolute;top: 2%;right: 2%;">
			<img src="<%=request.getContextPath()%>/images/logo.png" style="width: 200px;height: 58px;margin-left: 20%;">
			<div style="margin-top: 10%;">
				<form id="loginForm" trigger-submit name="loginForm1" method="post" autocomplete="off" ng-if="generateOtp">
					<div style="padding-left: 8%;margin-top: 4%;">
						<img src="${pageContext.request.contextPath}/images/mobile_number.png" style="height: 32px;width: 40px;position: relative;top: 12px;right: 6px;"> 
						<input type="text" class="userName" ng-model="login.uname" name="uname" 
						ng-keypress="filterValue($event)" maxlength="10" placeholder="Mobile Number"/>
					</div>
					<div style="padding-left: 8%;margin-top: 4%;">
						<img src="${pageContext.request.contextPath}/images/circle.png" style="height: 32px;width: 40px;position: relative;top: 12px;right: 6px;">
						<select id="circleCode" class="circleName" name="circleCode" ng-model="login.circleCode" 
							id="circleCode" on-select="onSelected($item)">
							<!-- <option value="">Select Circle</option>
							 <option value="1">Mumbai</option>
							 <option value="2">Gujarat</option>
							 <option value="3">Andhra Pradesh</option>
							 <option value="4">Karnataka</option>
							 <option value="5">Chennai</option>
							 <option value="6">Kolkata</option>
							 <option value="7">ROBengal</option>
							 <option value="8">Rajasthan</option>
							 <option value="9">MG</option>
							 <option value="10">Tamilnadu</option>
							 <option value="11">Kerala</option>
							 <option value="12">Odisha</option>
							 <option value="13">Assam</option>
							 <option value="14">North East</option>
							 <option value="15">MPCG</option>
							 <option value="16">Bihar</option>
							 <option value="17">Delhi</option>
							 <option value="18">Haryana</option>
							 <option value="19">Punjab</option>
							 <option value="20">UPE</option>
							 <option value="21">UPW</option>
							 <option value="22">HP</option>
							 <option value="23">JNK</option>
							 <option value="24">CORPORATE_ADMIN</option> -->
	
							<option value="">Select Circle</option>
							<option value="3">Andhra Pradesh</option>
							<option value="13">Assam</option>
							<option value="16">Bihar</option>
							<option value="5">Chennai</option>
							<option value="24">CORPORATE_ADMIN</option>
							<option value="17">Delhi</option>
							<option value="2">Gujarat</option>
							<option value="18">Haryana</option>
							<option value="22">HP</option>
							<option value="23">JNK</option>
							<option value="4">Karnataka</option>
							<option value="11">Kerala</option>
							<option value="6">Kolkata</option>
							<option value="9">MG</option>
							<option value="15">MPCG</option>
							<option value="1">Mumbai</option>
							<option value="14">North East</option>
							<option value="12">Odisha</option>
							<option value="19">Punjab</option>
							<option value="8">Rajasthan</option>
							<option value="7">ROBengal</option>
							<option value="10">Tamilnadu</option>
							<option value="20">UPE</option>
							<option value="21">UPW</option>
						</select>
					</div>
					<!-- --------------Captcha DIV--------------- -->
					<div style="padding-left: 8%;margin-top: 6%;">
						<input type="text" class="user-text l" name="captcha" id="captcha" ng-model="login.captcha"
						ng-keypress="checkIfEnterKeyWasPressed($event)"/>
	 					<div class="l"  id="captchaId" style="position: relative;top: -12px;left: -28%;">
							<img src="<%=request.getContextPath()%>/captcha-image.jpg" style="width: 100%;height: 48px;"/>
						</div>
						<%-- <input class="l" type="image" id="refreshButton" disabled="disabled" onclick="checkCaptcha()" src="${pageContext.request.contextPath}/images/refresh.png" 
						style="height: 22px;width: 22px;position: relative;top: 5%;left: 6%;border: none;cursor: auto;outline: none;"
						ng-if="$event.keycode === 13 ? generateOtp() : null"/> --%>
						
						<input class="l" type="image" id="refreshButton" disabled="disabled" onclick="checkCaptcha()" src="${pageContext.request.contextPath}/images/refresh_icon.png" 
						style="position: relative;top: 5%;left:-22%;border: none;cursor: auto;outline: none;"
						/>
					</div>
					
					<!-- generateOtp button -->
					<%-- <div id="parentCap">
						<div id="captcha" style="margin-top: 37px;">
							<img src="${pageContext.request.contextPath}/images/refresh.png" onclick="refreshTest()" 
							style="    height: 20px; width: 25px; position: relative; top: 62px; left: 22%;">
						</div>
					</div> --%>
					<div ng-hide="hideOtpBtn">
						<!-- <button ng-click="generateOtp()" class="loginBtn" value="button" 
						ng-keypress="checkIfEnterKeyWasPressed($event)" autofocus>Generate OTP</button> -->
						<button ng-click="generateOtp()" class="loginBtn" value="button" autofocus>Generate OTP</button>
					</div>
				
					 <!-- <div ng-hide="hideOtpBtn">
						<button class="loginBtn" id="generateOTP" value="button" onclick="checkCaptcha()" ng-keypress="checkIfEnterKeyWasPressed($event)" autofocus>Generate
							OTP</button>
					</div>  -->
					<!-- <span style="font-family: RobotoRegular; display: inline-block; margin-left: 34%; margin-top: 8%; 
					font-size: 14px;color: #000;">Diagnostics</span> -->
				</form>
				
				
				<form id="loginForm" trigger-submit name="loginForm" ng-if="!generateOtp" 
				action="${pageContext.request.contextPath}/j_spring_security_check" method="post" autocomplete="off">
					<div style="padding-left: 8%;margin-top: 4%;">
						<img src="${pageContext.request.contextPath}/images/mobile_number.png" style="height: 32px;width: 40px;position: relative;top: 12px;right: 6px;">
						<input class="userName" ng-model="login.uname" name="uname"
							placeholder="Mobile Number" ng-keypress="filterValue($event)" type="text" />
					</div>
					<div style="padding-left: 8%;margin-top: 4%;">
						<img src="${pageContext.request.contextPath}/images/circle.png" style="height: 32px;width: 40px;position: relative;top: 12px;right: 6px;">
						<select class="circleName" name="circleCode" ng-model="login.circleCode" id="circleCode" on-select="onSelected($item)">
							<!-- <option value="">Select Circle</option>
							<option value="1">Mumbai</option>
							<option value="2">Gujarat</option>
							<option value="3">Andhra Pradesh</option>
							<option value="4">Karnataka</option>
							<option value="5">Chennai</option>
							<option value="6">Kolkata</option>
							<option value="7">ROBengal</option>
						16	<option value="8">Rajasthan</option>
							<option value="9">MG</option>
							 <option value="10">Tamilnadu</option>
							 <option value="11">Kerala</option>
							 <option value="12">Odisha</option>
							 <option value="13">Assam</option>
							 <option value="14">North East</option>
							 <option value="15">MPCG</option>
							 <option value="16">Bihar</option>
							 <option value="17">Delhi</option>
							 <option value="18">Haryana</option>
							 <option value="19">Punjab</option>
							 <option value="20">UPE</option>
							 <option value="21">UPW</option>
							 <option value="22">HP</option>
							 <option value="23">JNK</option>
							 <option value="24">CORPORATE_ADMIN</option> -->
							<option value="">Select Circle</option>
							<option value="3">Andhra Pradesh</option>
							<option value="13">Assam</option>
							<option value="16">Bihar</option>
							<option value="5">Chennai</option>
							<option value="24">CORPORATE_ADMIN</option>
							<option value="17">Delhi</option>
							<option value="2">Gujarat</option>
							<option value="18">Haryana</option>
							<option value="22">HP</option>
							<option value="23">JNK</option>
							<option value="4">Karnataka</option>
							<option value="11">Kerala</option>
							<option value="6">Kolkata</option>
							<option value="9">MG</option>
							<option value="15">MPCG</option>
							<option value="1">Mumbai</option>
							<option value="14">North East</option>
							<option value="12">Odisha</option>
							<option value="19">Punjab</option>
							<option value="8">Rajasthan</option>
							<option value="7">ROBengal</option>
							<option value="10">Tamilnadu</option>
							<option value="20">UPE</option>
							<option value="21">UPW</option>
						</select>
					</div>

				<!-- otp input -->
					<div style="margin-top: 6%" ng-hide="showloginDiv">
						<img src="${pageContext.request.contextPath}/images/login_OTP_icon.png" 
						style="height: 34px;width: 40px;position: relative;top: 12px;right: -25px;">
						<input class="otpfield" ng-model="login.upassword" name="upassword" maxlength="6" 
						ng-keypress="filterOTPValue($event)" type="password" placeholder="OTP" id="otp" />
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	
						<!-- verify and resent buttons -->
						<input type="submit" ng-click="encryptAndSubmit($event)" class="loginBtn" name="Login" value="Verify OTP" style="margin-top: 10%; margin-left:9%; padding: 1% 6%;" />
						<input ng-click="resendOtp()" type="button" class="loginBtn" name="resend otp" value="Resend OTP" style="margin-top: 10%;  margin-left:8%; padding: 1% 6%;" />
					</div>
				</form>
			</div>		
		</div>
	</div>
	<div class="footer-panel loginFooter">
		<div class="footerTextStyle">Powered By Mobicule Technologies Pvt. Ltd. Copyright 2017-2018. All Rights Reserved. Version 3.0.0</div>
	</div>
</body>

<script type="text/javascript">
history.pushState(null, document.title, location.href);
window.addEventListener('popstate', function (event)
{
  history.pushState(null, document.title, location.href);
});
</script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/login/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/login/loginPageController.js"></script>
<%-- 	<script type="text/javascript" src="${pageContext.request.contextPath}/js/login/app.js"></script> --%>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/login/loginPageController.js"></script>
 --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/login/loginPageService.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/login/directives.js"></script>

<script>var ctx = "${pageContext.request.contextPath}";</script>
</html>