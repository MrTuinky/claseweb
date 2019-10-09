miModulo.controller('controlador', function($scope, $http) {
   
    $scope.ver = function (){
        var url='servlet';
        var use;
        $http.get(url).success(function(respuesta){
            console.log("res:", respuesta);
            use=respuesta;
             console.log("USE:", use);
              $scope.use=use;
            });
        }
 
});