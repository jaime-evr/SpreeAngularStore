module Spree
  module Api
    class AuthorizationsController < BaseController
      def create
        email = params[:email]
        password = params[:password]
        resource = Spree::User.find_for_database_authentication(login: email)

        binding.pry
        return record_not_found unless resource
        if resource.valid_password?(password)
          render json: {  status: :ok,
                          user: resource
          }
          return
        end
        invalid_login_attempt
      end

      protected

      def invalid_login_attempt
        render json: { error: t('devise.failure.invalid') }, status: :unprocessable_entity
      end

      def record_not_found
        render json: { error: 'Record not found' }, status: :not_found
      end
    end
  end
end
