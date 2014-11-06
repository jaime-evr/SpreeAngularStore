App.factory 'User', ['$resource', ($resource) ->
  $resource '/api/users', {},
]

