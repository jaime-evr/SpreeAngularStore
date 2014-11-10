App.factory 'authInterceptor', [ '$rootScope', '$window', '$location', ($rootScope, $window, $location) ->
  request: (config) ->
    if $window.sessionStorage.token
      config.headers['X-Spree-Token'] = $window.sessionStorage.token
    return config
  ,
  responseError: (response) ->
    if response.status == 401
      $location.path '/'
    return response
]
