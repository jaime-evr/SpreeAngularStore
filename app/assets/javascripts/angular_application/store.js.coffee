window.App = angular.module('SpreeAngularStore', ['ngResource', 'ngRoute'])

window.App.config ($httpProvider, $routeProvider) ->
  $httpProvider.interceptors.push('authInterceptor')

  $routeProvider.when('/',
    templateUrl: 'templates/users/new.html'
    controller: 'UserCreateCtrl'
  ).when('/products',
    templateUrl: 'templates/products/index.html'
    controller: 'ProductsCtrl'
  ).when('/product/:id',
    templateUrl: 'templates/products/show.html'
    controller: 'ProductCtrl'
  ).otherwise redirectTo: '/'

