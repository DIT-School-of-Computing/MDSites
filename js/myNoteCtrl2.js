app.controller("myNoteCtrl2", function($scope) {
    $scope.message = "";
    $scope.left  = function() {return 250 - $scope.message.length;};
    $scope.clear = function() {$scope.message = "";};
    $scope.save  = function() {alert("Second Note Saved");};
});