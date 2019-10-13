miModulo.config(['$routeProvider',function($routeProvider){

    $routeProvider.when('/',{templateUrl:'homeTemplate.html',controller:'homeController'})
    
    $routeProvider.when('/multi',{templateUrl:'multiplicacionTemplate.html',controller:'multiplicacionController'})
    $routeProvider.when('/suma',{templateUrl:'sumaTemplate.html',controller:'sumaController'})
    $routeProvider.when('/resta',{templateUrl:'resta.html',controller:'restaController'})
    $routeProvider.when('/division',{templateUrl:'dividir.html',controller:'divisionController'})
    $routeProvider.when('/tabla',{templateUrl:'tablaTemplate.html',controller:'tablaController'})
    $routeProvider.when('/tablaMulti',{templateUrl:'tablaMultiplicacionTemplate.html',controller:'tablaMultiplicacionController'})
    $routeProvider.otherwise({redirectTo:'/'})


}])