window.App = angular.module('SpreeAngularStore', ['ngResource', 'ngRoute'])

window.App.config ($httpProvider, $routeProvider) ->
  $httpProvider.interceptors.push('authInterceptor')

  $routeProvider.when('/',
    templateUrl: 'templates/users/new.html'
    controller: 'UsersCtrl'
  ).when('/products',
    templateUrl: 'templates/products/index.html'
    controller: 'ProductsCtrl'
  ).when('/products/:id',
    templateUrl: 'templates/products/show.html'
    controller: 'ProductsCtrl'
  ).otherwise redirectTo: '/'

