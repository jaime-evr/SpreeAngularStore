App.factory 'Authorization', ['$resource', ($resource) ->
  $resource 'api/v1/authorizations', {}
]
