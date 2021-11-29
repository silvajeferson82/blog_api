class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  #Permite configurar update de usuario 
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :nickname])
  end
end
