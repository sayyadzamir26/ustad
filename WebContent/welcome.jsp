<!DOCTYPE html>
<html>
<title>Helping Hands</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-theme w3-top w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-right w3-hide-large w3-hover-white w3-large w3-theme-l1" href="javascript:void(0)" onclick="w3_open()"><i class="fa fa-bars"></i></a>
        <marquee direction = "left"> !!!! We Are Happy To Help You in Job Search and find the room on rent !!!! </marquee>
 
  
  </div>
</div>

<!-- Sidebar -->
<nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" style="z-index:3;width:250px;margin-top:43px;" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
    <i class="fa fa-remove"></i>
  </a>
  <h4 class="w3-bar-item"><b>Menu</b></h4>
  <a class="w3-bar-item w3-button w3-hover-black" href="http://localhost:8080/JobNotifiy/">Home</a>
  <a class="w3-bar-item w3-button w3-hover-black" href="http://localhost:8080/JobNotifiy/">Job Search</a>
  <a class="w3-bar-item w3-button w3-hover-black" href="/JobNotifiy/service/roomies/">Room Search</a>
    <a class="w3-bar-item w3-button w3-hover-black" href="/JobNotifiy/TC/reports">TC</a>
  
 </nav>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3-main" style="margin-left:250px">

  <div class="w3-row w3-padding-64">
    <div class="w3-twothird w3-container">
      <h1 class="w3-text-teal">Job Notification for Fresher/Experience</h1>
      <p> We Are Happy To Help You in Job Search and find the room on rent</p>
    </div>
  

       <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
    
    <title>Job Notify</title>  
 <script type="text/javascript">
            var app = angular.module("CountryManagement", []);
         
            //Controller Part
            app.controller("CountryController", function($scope, $http) {
         
               
                $scope.countries = [];
                $scope.countryForm = {
                    id : -1,
                    title : "",
                    description : ""
                };
         
                //Now load the data from server
                _refreshCountryData();
         
                //HTTP POST/PUT methods for add/edit country 
                // with the help of id, we are going to find out whether it is put or post operation
                
                $scope.submitCountry = function() {
         
                    var method = "";
                    var url = "";
                    if ($scope.countryForm.id == -1) {
                        //Id is absent in form data, it is create new country operation
                        method = "POST";
                        url = 'http://localhost:8080/JobNotifiy/service/getNotifiy/';
                    } else {
                        //Id is present in form data, it is edit country operation
                        method = "PUT";
                        url = 'http://localhost:8080/JobNotifiy/service/getNotifiy/';
                    }
         
                    $http({
                        method : method,
                        url : url,
                        data : angular.toJson($scope.countryForm),
                        headers : {
                            'Content-Type' : 'application/json'
                        }
                    }).then( _success, _error );
                };
         
                //HTTP DELETE- delete country by Id
                $scope.deleteCountry = function(country) {
                    $http({
                        method : 'DELETE',
                        url : '/AngularjsSpringRestExample/country/' + country.id
                    }).then(_success, _error);
                };
 
             // In case of edit, populate form fields and assign form.id with country id
                $scope.editCountry = function(country) {
                  
                    $scope.countryForm.title = country.title;
                    $scope.countryForm.description = country.description;
                    $scope.countryForm.id = country.id;
                };
         
                /* Private Methods */
                //HTTP GET- get all countries collection
                function _refreshCountryData() {
                    $http({
                        method : 'GET',
                        url : 'http://localhost:8080/JobNotifiy/service/getNotifiy/'
                    }).then(function successCallback(response) {
                        $scope.countries = response.data;
                    }, function errorCallback(response) {
                        console.log(response.statusText);
                    });
                }
         
                function _success(response) {
                    _refreshCountryData();
                    _clearFormData()
                }
         
                function _error(response) {
                    console.log(response.statusText);
                }
         
                //Clear the form
                function _clearFormData() {
                    $scope.countryForm.id = -1;
                    $scope.countryForm.title = "";
                    $scope.countryForm.description = "";
                
                };
            });
        </script>
        <style>
           
.blue-button{
 background: #25A6E1;
 filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
 padding:3px 5px;
 color:#fff;
 font-family:'Helvetica Neue',sans-serif;
 font-size:12px;
 border-radius:2px;
 -moz-border-radius:2px;
 -webkit-border-radius:4px;
 border:1px solid #1A87B9
}     

.red-button{
 background: #CD5C5C;

 padding:3px 5px;
 color:#fff;
 font-family:'Helvetica Neue',sans-serif;
 font-size:12px;
 border-radius:2px;
 -moz-border-radius:2px;
 -webkit-border-radius:4px;
 border:1px solid #CD5C5C
}      

table {
  font-family: "Helvetica Neue", Helvetica, sans-serif;
   width: 99%;
}

caption {
  text-align: left;
  color: silver;
  font-weight: bold;
  text-transform: uppercase;
  padding: 5px;
}

th {
  background: SteelBlue;
  color: white;
}


tbody tr:nth-child(even) {
  background: WhiteSmoke;
}

tbody tr td:nth-child(2) {
  text-align:center;
}

tbody tr td:nth-child(3),
tbody tr td:nth-child(4) {
  text-align: center;
  font-family: monospace;
}

tfoot {
  background: SeaGreen;
  color: white;
  text-align: right;
}

tfoot tr th:last-child {
  font-family: monospace;
}

            td,th{
                border: 1px solid gray;
                width: 25%;
                text-align: left;
                padding: 5px 10px;
            }     
            
        </style>
    <head>
    <body ng-app="CountryManagement" ng-controller="CountryController">


        <form ng-submit="submitCountry()">
            <table>
               
                <tr>
                    <th colspan="2">Enter Job Details</th>
                 </tr>
                <tr>
                    <td>Job Position</td>
                    <td><input type="text" ng-model="countryForm.title" /></td>
                </tr>
                <tr>
                    <td>Job Details</td>
                    <td>
                    
                    <input type="text" ng-model="countryForm.description"  /></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Submit" class="blue-button" /></td>
                </tr>
            </table>
        </form>
        <table>
            <tr>
              
                <th>Job Position</th>
                <th>Job Details</th>
               
            </tr>
 
            <tr ng-repeat="country in countries">
               
    <td> {{ country.title }}</td>
    <td >{{ country.description }}</td>  
                
<!--                 <td><a ng-click="editCountry(country)" class="blue-button">Edit</a> | <a ng-click="deleteCountry(country)" class="red-button">Delete</a></td>
 -->            </tr>
 
        </table>
  </div>

  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a class="w3-button w3-black" href="#">1</a>
      <a class="w3-button w3-hover-black" href="#">2</a>
      <a class="w3-button w3-hover-black" href="#">3</a>
      <a class="w3-button w3-hover-black" href="#">4</a>
      <a class="w3-button w3-hover-black" href="#">5</a>
      <a class="w3-button w3-hover-black" href="#">�</a>
    </div>
  </div>

  <footer id="myFooter">
    <div class="w3-container w3-theme-l2 w3-padding-32">
      <h4></h4>
    </div>

    <div class="w3-container w3-theme-l1">
      <p>Powered by <a href="http://jobnotify-env.pncwipvp5d.ap-southeast-1.elasticbeanstalk.com" target="_blank">tworks.org</a></p>
    </div>
  </footer>

<!-- END MAIN -->
</div>

<script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
    if (mySidebar.style.display === 'block') {
        mySidebar.style.display = 'none';
        overlayBg.style.display = "none";
    } else {
        mySidebar.style.display = 'block';
        overlayBg.style.display = "block";
    }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
    overlayBg.style.display = "none";
}
</script>

</body>
</html>
