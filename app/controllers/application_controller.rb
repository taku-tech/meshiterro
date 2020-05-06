class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
	end
end

Refile.secret_key = '19a99e6f04ce0c26f335f63a880813d99c4169abfd36ca0acf17edb4cd5d9d885d6e29ab1bcbe7e5c68ae1b6e0820c14a48d10fcd8dff688078a35f2da6b6bf0'