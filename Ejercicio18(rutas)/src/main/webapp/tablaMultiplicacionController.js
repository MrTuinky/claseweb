/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var miControlador = miModulo.controller(
        "tablaMultiplicacionController",
        ['$scope', '$http', 'miServicio01', function ($scope, $http, myService) {
                $scope.resultado = null;

                $scope.tabla = function () {
                    var altura = $scope.op1;
                    console.log($scope.op1);
                    var ancho = $scope.op2;
                    console.log($scope.op2);
                    filas = [];

                    for (i = 0; i < $scope.op1; i++) {
                        filas.push([]);
                        for (j = 0; j < $scope.op2; j++) {
                            
                            var total =0;
                            total = myService.multiplicacion(i,j);
                             console.log("QUES ",total);
                            filas[i].push(total);
                        }

                    }
                    $scope.resultado = filas;
                    console.log($scope.resultado);
                }
            }]
        )


