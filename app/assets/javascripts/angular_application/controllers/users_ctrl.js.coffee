App.controller 'UserCtrl', ['$scope', 'User', ($scope, User) ->
  $scope.user = {}

  $scope.signIn = ->
    @data = $scope.user
    new User(user: @data).$save (user) ->
      $('meta[name="api-key"]').attr('content', user.spree_api_key)
]

