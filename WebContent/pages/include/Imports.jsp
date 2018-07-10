<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 --%> 
<!-- CSS FILES -->
<link href="css/main/styles.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/calendarcontrol.css" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style_web_admin.css" media="all" type="text/css" />
<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/navigation-menus/menu.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login-dropdown/dropdown.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/logo/image-container.css" />

<%-- <link rel="stylesheet"	href="${pageContext.request.contextPath}/css/daterangepicker.css" /> --%>	 
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/datepicker.css" />
 <!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
 <!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->

<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/css/colorbox.css" /> --%>

<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/css/home.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css"> --%>

<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reports-table/table.css"/> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/app.css" media="all" type="text/css" />
  
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/new-jquery/jquery.min.js"></script>
  
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/angular-1.5.0/angular.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/angular-1.5.0/angular-animate.min.js""></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/angular-1.3.2/angular-messages.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/angular-1.3.2/angular-sanitize.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/angular-1.3.2/angular-ui-router.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/new-bootsrap/bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/new-bootrap/bootstrap.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/angular-1.3.2/bootstrap-ui/ui-bootstrap-0.11.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/angular-1.3.2/bootstrap-ui/ui-bootstrap-tpls-0.11.2.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/bootstrap-datepicker.js"></script>
   
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/block-UI/angular-block-ui.min.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/block-UI/angular-block-ui.min.js"></script>

<!-- ANGULAR_LOCALSTORAGE -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/angular/local-storage/dist/angular-local-storage.min.js"></script>

<!-- ANGULAR_FILEUPLOAD -->
<script src = "${pageContext.request.contextPath}/js/lib/angular/angular-fileupload/angular-file-upload-shim.min.js"></script>
<script src = "${pageContext.request.contextPath}/js/lib/angular/angular-fileupload/angular-file-upload.min.js"></script>
 
<!-- ANGULAR NG-CSV -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/angular/ng-csv/ng-csv.min.js"></script>

<!-- Angular mainApp is created  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/main/app.js"></script>

<!--  Angular Router for app-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/configuration/configurations.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/main/application-controller.js"></script>

<!-- CONSTANTS JS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Constants/constants.js"></script>

<!-- ANGULAR NG-DIALOG -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/angular/ng-dialog/js/ngDialog.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/login/login-controller.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/login/login-service.js"></script>
	
<!-- STRING JS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/string.min.js"></script>

<!-- BROWSER -->
<script src = "${pageContext.request.contextPath}/js/lib/browser/browser.js"></script>

<!-- NOTY -->
<script src = "${pageContext.request.contextPath}/js/lib/noty/js/noty/packaged/jquery.noty.packaged.min.js"></script>
 
<link href="${pageContext.request.contextPath}/js/lib/angular/toaster/toaster.css" rel="stylesheet">
<script src = "${pageContext.request.contextPath}/js/lib/angular/toaster/toaster.js"></script>
<toaster-container toaster-options="{'time-out': 2000, 'animation-class': 'toast-top-center', 'limit': '1' }"></toaster-container>
  
<script type="text/javascript" src="${pageContext.request.contextPath}/js/login/login-controller.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/login/login-service.js"></script>

<!-- COLORBOX -->
<script src = "${pageContext.request.contextPath}/js/lib/colorbox/jquery.colorbox.js"></script>
<link rel=stylesheet type=text/css href="${pageContext.request.contextPath}/js/lib/colorbox/colorbox.css"/>

<!-- Pagination -->
<script src = "${pageContext.request.contextPath}/js/lib/dirPagination.js"></script>

<!-- Datepicker UI -->
<script src = "${pageContext.request.contextPath}/js/lib/jqueryui/js/jquery-ui.min.js"></script>
<link rel=stylesheet type=text/css href="${pageContext.request.contextPath}/js/lib/jqueryui/css/custom/jquery-ui.css"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/angular/angular-sql/alasql.min.js"></script>
 <script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/angular/angular-sql/xlsx.core.min.js"></script>
 
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/lib/chosen/docsupport/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/lib/chosen/docsupport/prism.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/lib/chosen/chosen.css">
<script src="${pageContext.request.contextPath}/js/lib/chosen/chosen.jquery.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/lib/chosen/chosen.proto.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/lib/chosen/docsupport/prism.js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/lib/angular-bootstrap/ui-bootstrap-tpls-1.3.3.min.js"></script>