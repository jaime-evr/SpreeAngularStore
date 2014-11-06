window.App = angular.module('SpreeAngularStore', ['ngResource', 'ngRoute'])

window.App.config ($httpProvider, $routeProvider) ->
  $httpProvider.interceptors.push('authInterceptor')

  $routeProvider.when('/',
    templateUrl: 'templates/sign_up.html'
    controller: 'UserCtrl'
  ).when('/products',
    templateUrl: 'templates/products.html'
    controller: 'ProductsCtrl'
  ).otherwise redirectTo: '/'

