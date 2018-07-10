<div class="col-md-offset-2 col-md-7" style="border: 2px solid green">
<head>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;    
}
</style></head>
 <h2>Latest Details</h2>
  
  <table class="table" style="width:100%">
    <thead>
      <tr>
        <th>Room Details</th>
        <th>Created On</th>
      </tr>
    </thead>
    <tbody>
      <tr ng-repeat="user in userDetails">
        <td>{{user.roomDetails}}</td>
        <td>{{user.created_on}}</td>
      </tr>
    </tbody>
  </table>


</div>