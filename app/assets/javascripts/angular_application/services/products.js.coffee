App.factory 'Products', ['$resource', ($resource) ->
  $resource '/api/products', {},
    query:
      params:
        isArray: false
]

