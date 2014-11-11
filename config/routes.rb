Rails.application.routes.draw do

  mount Spree::Core::Engine, :at => '/'

  Spree::Core::Engine.add_routes do
    namespace :api do
      resource :authorizations, only: :create
    end
  end
end
