class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :phone_number
    devise_parameter_sanitizer.for(:sign_up) << :address
    devise_parameter_sanitizer.for(:sign_up) << :email
    devise_parameter_sanitizer.for(:sign_up) << :session_id
    devise_parameter_sanitizer.for(:sign_up) << :contact_preference

    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:account_update) << :phone_number
    devise_parameter_sanitizer.for(:account_update) << :address
    devise_parameter_sanitizer.for(:account_update) << :email
    devise_parameter_sanitizer.for(:account_update) << :contact_preference

  end
end
