var miControlador = miModulo.controller(
    "restaController",
    ['$scope', '$http', 'miServicio01', function ($scope, $http, myService) {
        $scope.resultado=null;
        $scope.resta=function(){
            $scope.resultado=myService.resta($scope.op1,$scope.op2);
        }
    }]
)
