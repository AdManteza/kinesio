class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :contact_num, :facebook_account, :email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :contact_num, :facebook_account, :email])
  end
end
