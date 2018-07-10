<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" 
    prefix="fn" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app='otpApp'>
<head>
<link href="${pageContext.request.contextPath}/images/vodafone.ico" rel="shortcut icon" type="image/x-icon" />
<jsp:include page="/pages/include/Imports.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>

<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link rel="stylesheet" type="text/css"  href="<%=request.getContextPath() %>/css/reset.css" />
<link rel="stylesheet" type="text/css"  href="<%=request.getContextPath() %>/css/style_web_admin.css" media="all" />
<%-- <script src="<%=request.getContextPath()%>/javascript/jquery.min1.11.js" language="javascript" type="text/javascript"></script> --%>
<%-- <script type="text/javascript"  src="<%=request.getContextPath() %>/javascript/backfix.min.js" ></script> --%>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/main/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/login/generateOtp-service.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/login/generateOtp-controller.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/configuration/configurations.js"></script> --%>

<!-- <toaster-container toaster-options="{'time-out': 9000, 'animation-class': 'toast-top-center', 'limit': '1'}"></toaster-container> -->
<script>
	var ctx = "${pageContext.request.contextPath}";
	
<%-- 	function generateOtp()
	{
	
		alert("In Onclick Function")
		
		document.generateOtpForm.action = "<%=request.getContextPath()%>/generateOtp";
		document.generateOtpForm.method = "post";
		document.generateOtpForm.submit();
		
	}
	 --%>
	
</script>




<!-- <script type="text/javascript">
$(document).ready(function () {
 	 //hide overlay and dialog
  	    $("#overlay").fadeTo("slow", 0.7);
  		//$("#dialog").fadeTo("slow", 0.7);

  //on click show the overlay div and dialog div
  $("#showpopup").click(function () {
      $("#overlay").fadeTo("slow", 0.7);
      $('#dialog').fadeIn("slow");
  });
  //on click buttonclose go main screen
  $("#buttonClose").click(function () {

      $("#overlay").fadeOut("slow");
      $('#dialog').fadeOut("slow");
  });

	});
	
</script> -->


</head>
<body class="backGround" ng-controller='otpController'>

 <div class="loginPage">
    <div class="leftSide">
		<div class="mainContainer">
			<span class="infoHead">Info</span>
			<div class="loginContainer" id="dialog">
				<div class="loginHeading">
				<!-- 	<div class="closeLogin"><input type="button" id="buttonClose" class="closeButton"></div>
				</div> -->

				<%-- <div style="color: red;background-color: #FFFFFF;text-align: center; padding-top: 2%;">
				<c:out value="${message}"/>
				</div> --%>

				<%-- <form id="generateOtpForm" method= "post" autocomplete="off" action="<%=request.getContextPath()%>/generateOtp">
	
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<table class="logincontain" id="loginContain">
					<tr>
    					<td align="right"><label>Username:</label></td>
    					<td>
    						<input  
					        name="uname" placeholder="User Name" type="text" /> 
    					</td>
					</tr>

					<tr>
						<td align="right"><label>Circle:</label></td>
    					<td>
					    <select name="circleCode"  id="circleCode" data-default="" 
						style="width: 210px; height: 25px;background-color: #e3e3e3; font-style: italic;">
						
					        
					        
					        <option value="">Select Circle</option>
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
  								 <option value="24">CORPORATE</option>
  								 
  						</select>

					        
    					</td>
    				</tr>
   					<tr>
   						<td colspan="2" align="right">
   							
   							<input type="submit" name="Submit"  style="width: 106px; height: 31px;" value="Submit" />
   							<a href='../dashbord/dashbord.jsp' style="margin-right: 15%; text-decoration: none;">
                            	<img style="width: 106px; height: 31px;" src="<%=request.getContextPath() %>/image/login_button.png" onmouseover="this.src='<%=request.getContextPath() %>/image/login_hover.png';" onmouseout="this.src='<%=request.getContextPath() %>/image/login_button.png';" />
                            </a>
  
   						</td>
   					</tr>
   				</table>
				</form> --%>
				
				<form id="generateOtpForm"  autocomplete="off">
				<%-- <input type="hidden"
					name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
			

</script>
				<div id="loginContain" style="padding-top: 13%;padding-left: 20%;">
					<div style="margin-top:1%">
    					<input class="userName" ng-model="login.uname" name="uname" placeholder="Mobile Number" type="text"/> 
    				</div>	
					<div style="margin-top:4%">
						<select id="circleCode" class="circleName" name="circleCode" ng-model="login.circleCode" id="circleCode" on-select="onSelected($item)" >
					        <option value="">Select Circle</option>
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
  								 <option value="24">CORPORATE_ADMIN</option>
  						</select>
    				</div>	
   							
   							<%-- <a href='../dashbord/dashbord.jsp' style="margin-right: 15%; text-decoration: none;">
                            	<img style="width: 106px; height: 31px;" src="<%=request.getContextPath() %>/image/login_button.png" onmouseover="this.src='<%=request.getContextPath() %>/image/login_hover.png';" onmouseout="this.src='<%=request.getContextPath() %>/image/login_button.png';" />
                            </a> --%>
                         </div>
                         <button  ng-click = "generateOtp()" class="loginBtn" value="submit" ng-keypress="checkIfEnterKeyWasPressed($event)" autofocus>Generate OTP</button>   
  				</form>
			</div>
		</div>		
	</div>
</div>
</div>
</body>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/app/otp/app.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/app/otp/controllers.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/app/otp/services.js"></script>

</html>