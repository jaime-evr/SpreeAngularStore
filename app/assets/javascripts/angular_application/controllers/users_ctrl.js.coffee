App.controller 'UsersCtrl', ['$scope', '$window', '$location', 'User', ($scope, $window, $location, User) ->

  $scope.signUp = ->
    user = new User(user: $scope.user)
    user.$save (user) ->
      if user.spree_api_key
        $window.sessionStorage.token = user.spree_api_key
        $location.path '/products'
      else
        delete $window.sessionStorage.token
]

