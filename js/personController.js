angular.module('myApp', []).controller('personCtrl', function($scope) {
	$scope.firstName = "Mark",
	$scope.lastName  = "Deegan",
	$scope.fullName = function() {
		return $scope.firstName + " - " + $scope.lastName;
	}
});