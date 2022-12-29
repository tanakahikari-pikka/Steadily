class ApplicationController < ActionController::Base
  # before_action :authenticate_user!,except: [:top, :about]
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password])
  end
  # def after_sign_in_path_for(resource)
  #   user_path(current_user.id)
  # end

  # def after_sign_in_path_for(resource)
  #   user_path(current_user.id)
  # end
end
