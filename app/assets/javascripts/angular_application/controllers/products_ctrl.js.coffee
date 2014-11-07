App.controller 'ProductsCtrl', ['$scope', '$location', 'Products', ($scope, $location, Products) ->
  Products.query (data) ->
      $scope.products = data.products
]

