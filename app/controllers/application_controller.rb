class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :error

  include ApplicationHelper

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :date_of_birth, :email, :phone_number, :current_password, :street, :number, :zipcode, :city, :province_id)}
  end
end
