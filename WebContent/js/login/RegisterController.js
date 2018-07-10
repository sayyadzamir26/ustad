'use strict';
App.controller('RegisterController', [ '$scope', '$rootScope', 'RegisterService',
		'$http', function($scope, $rootScope, RegisterService, $http) {

			$scope.user = {};

			$scope.user.userName = "";
			$scope.user.email = "";
			$scope.user.password = "";
			$scope.user.gender = "";
			$scope.user.delete_flag = "F";
			$scope.user.created_by = "";
			$scope.user.job_flag = "F";
			$scope.user.room_flag = "F";
			$scope.user.created_on = "";
			$scope.user.modified_on = "";

			$scope.showUserDetails = false;
			$scope.showLogin = true;
			$scope.userDetails = [];

			$scope.register = function() {
				RegisterService.postUserData($scope.user).then(function(d) {
					//$scope.showLogin = false;
					//$scope.showUserDetails = true;
					//$scope.getUserDetails();
					 console.log($scope.user);
					 
					 console.log(d);



				});
			};

			$scope.getUserDetails = function() {
				userService.getUserDetails().then(function(d) {
					$scope.userDetails = d;
				});
			}

		} ]);