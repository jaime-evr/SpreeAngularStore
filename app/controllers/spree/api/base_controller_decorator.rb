Spree::Api::BaseController.class_eval do

  skip_before_filter :authenticate_user, if: :create_user_action?

  def create_user_action?
    location = request.path_parameters
    location[:controller] == 'spree/api/users' && location[:action] == 'create'
  end
end
