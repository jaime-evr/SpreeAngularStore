window.App = angular.module('SpreeAngularStore', ['ngResource', 'ngRoute'])

window.App.config ($httpProvider, $routeProvider) ->
  $httpProvider.interceptors.push('authInterceptor')

  $routeProvider.when('/',
    templateUrl: 'templates/home/index.html'
  ).when('/products',
    templateUrl: 'templates/products/index.html'
    controller: 'ProductsCtrl'
  ).when('/products/:id',
    templateUrl: 'templates/products/show.html'
    controller: 'ProductsCtrl'
  ).otherwise redirectTo: '/'

