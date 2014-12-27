var app = angular.module('test', []).controller("xController", function ($scope, xDependency) {

    $scope.viewGoalButtonDisabled = true;

    $scope.search = function (criteria) {
        $scope.errors = [];

        $scope.goals;

        return xDependency.search(criteria).$promise.then(
            function (goals) {
                $scope.viewGoalButtonDisabled = false;
                $scope.goals = goals;
            },
            function (response) {
                $scope.viewGoalButtonDisabled = false;
                $scope.errors = response.data;
            });
    };
});