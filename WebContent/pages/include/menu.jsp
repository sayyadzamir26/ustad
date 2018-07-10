<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    
    <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    <meta name="viewport" content="width=device-width"/>
    <link href="${pageContext.request.contextPath}/css/estilos.css" rel="stylesheet"/>

	
	
</head>
<body>
<c:url value="/j_spring_security_logout" var="logoutUrl" />
<div id="mobile-nav"></div>
<nav>
    <ul class="menu">
        <li><a href="${pageContext.request.contextPath}/views/addpartner.jsp">Partner Master</a></li>
        <li><a href="#">API Master</a></li>
        <li><a href="#">Field Mapping</a></li>
        <li><a href="${pageContext.request.contextPath}/views/AuditLog.jsp">Logs</a></li>
        <li><a href="${pageContext.request.contextPath}/views/adduser.jsp">User Management</a></li>
        <li><a href="${pageContext.request.contextPath}/syncdashboard.jsp">Sync Dash-Board</a></li>
        <li><a href="#">Contact</a></li>
        <li><a href="${logoutUrl}">Logout</a></li>
        
        
    </ul>
</nav>


</body>

<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/mostrar_nav.js"></script>

<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-36251023-1']);
    _gaq.push(['_setDomainName', 'jqueryscript.net']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

</script>
</html>