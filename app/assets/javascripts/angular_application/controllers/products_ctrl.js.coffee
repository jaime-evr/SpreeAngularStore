App.controller 'ProductsCtrl', ['$scope', '$routeParams', 'Product', ($scope, $routeParams, Product) ->
  Product.query (data) ->
      $scope.products = data.products

  $scope.product = Product.get(id: $routeParams.id)
]

