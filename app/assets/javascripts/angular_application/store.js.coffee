window.App = angular.module('SpreeAngularStore', ['ngResource', 'ngRoute'])

window.App.config ($httpProvider, $routeProvider) ->
  apiKey = $('meta[name="api-key"]').attr('content')
  $httpProvider.defaults.headers.common['X-Spree-Token'] = apiKey

  $routeProvider.when('/',
    templateUrl: 'templates/users.html'
    controller: 'UsersCtrl'
  ).otherwise redirectTo: '/'

