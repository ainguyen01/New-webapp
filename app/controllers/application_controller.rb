class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

before_action :authenticate_user!, :except => [:show, :index]
# before_action :authenticate_user!


before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up => [:username])

    devise_parameter_sanitizer.permit(:account_update => [:username])
  end
end
