App.controller 'UserCtrl', ['$scope', '$window', '$location', 'User', ($scope, $window, $location, User) ->
  $scope.user = {}

  $scope.signUp = ->
    @data = $scope.user
    new User(user: @data).$save (user) ->
      $window.sessionStorage.token = user.spree_api_key
      $location.path '/products'
]

