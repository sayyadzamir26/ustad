'use strict';

App.factory('RegisterService', function($http, $q) {
    return {
       
        postUserData : function(user){
            var config = {
                headers : {
                    'Content-Type': 'application/json'
                }
            }
            return $http.post('/JobNotifiy/get_user/', user, config)
                .then(
                    function(response){
                        return response.data;
                    },
                    function(errResponse) {
                        alert(errResponse.status + '*:' + errResponse.statusText);

                                    alert(errResponse.status + ':' + errResponse.statusText);
                        return $q.reject(errResponse);
                    });
        },
        
        getUserDetails : function() {
        	return $http.get('/JobNotifiy/get_room/get/sayyadzamir26@gmail.com/')
            .then(
                function(response){
                    return response.data;
                },
                function(errResponse) {
                    alert(errResponse.status + ':::' + errResponse.statusText);

                    alert(errResponse.status + ':' + errResponse.statusText);
                    return $q.reject(errResponse);
                });
        }
    };
});
