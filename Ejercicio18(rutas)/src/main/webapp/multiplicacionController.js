var miControlador = miModulo.controller(
    "multiplicacionController",
    ['$scope', '$http', 'miServicio01', function ($scope, $http, myService) {
        $scope.resultado=null;
        $scope.multiplica=function(){
            $scope.resultado=myService.multiplicacion($scope.op1,$scope.op2);
        }
    }]
)