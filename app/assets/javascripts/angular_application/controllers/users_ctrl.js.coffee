App.controller 'UserCreateCtrl', ['$scope', '$window', '$location', 'User', ($scope, $window, $location, User) ->
  $scope.user = {}

  $scope.signUp = ->
    user = new User(user: $scope.user)
    user.$save (user) ->
      $window.sessionStorage.token = user.spree_api_key
      $location.path '/products'
]

