class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:accept_invitation, keys: [:username, :email, :password, :password_confirmation])
        devise_parameter_sanitizer.permit(:invite, keys: [:admin, :email])
        devise_parameter_sanitizer.permit(:sign_up, keys: [:gender, :username, :email, :password, :password_confirmation])
        devise_parameter_sanitizer.permit(:account_update, keys: [:gender, :height, :weight, :username, :lastname, :firstname, :profession, :contact, :address])
    end
end
