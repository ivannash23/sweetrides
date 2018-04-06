class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  respond_to :html , :json
  

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :phone_number, :location, :website, :avatar) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :current_password, :phone_number, :location, :website, :avatar) }
    end

    def authorize_admin
        redirect_to(root_path) unless current_user && current_user.admin?
    end


end