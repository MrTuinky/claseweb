var miControlador = miModulo.controller(
    "divisionController",
    ['$scope', '$http', 'miServicio01', function ($scope, $http, myService) {
        $scope.resultado=null;
        $scope.dividir=function(){
            $scope.resultado=myService.division($scope.op1,$scope.op2);
        }
    }]
)
