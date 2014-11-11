App.controller 'AuthorizationsCtrl', ['$scope', 'Authorization', ($scope, Authorization) ->

  $scope.signIn = ->
    authorization = new Authorization(email: $scope.email, password: $scope.password)
    authorization.$save (authorization) ->
      console.log authorization
]
