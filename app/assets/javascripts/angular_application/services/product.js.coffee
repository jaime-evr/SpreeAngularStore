App.factory 'Product', ['$resource', ($resource) ->
  $resource '/api/products/:id', {},
    query:
      params:
        isArray: false
]

