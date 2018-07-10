<div class="col-md-offset-2 col-md-7" style="border: 2px solid green">
<body ng-app="app" ng-controller="RegisterController">


  
  
				<form class="form-horizontal" ng-submit="register()">
					 <input type="submit" id="submit" class="btn btn-success"
									value="Get Job" /> 
				
</form>



 <h2>Job Details</h2>
  
  <table class="table">
    <thead>
      <tr>
        <th>Job Details</th>
        <th>date</th>
      </tr>
    </thead>
    <tbody>
      <tr ng-repeat="user in userDetails">
        <td>{{user.roomDetails}}</td>
        <td>{{user.created_by}}</td>
      </tr>
    </tbody>
  </table>
</div>