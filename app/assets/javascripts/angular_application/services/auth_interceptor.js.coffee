App.factory 'authInterceptor', [ '$rootScope', '$window', ($rootScope, $window) ->
  request: (config) ->
    if $window.sessionStorage.token
      config.headers['X-Spree-Token'] = $window.sessionStorage.token
    return config

  response: (response) ->
    if response.status == 401
      console.log 'Not Authenticated'
    return response
]
