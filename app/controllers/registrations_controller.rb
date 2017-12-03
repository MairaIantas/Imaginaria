class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:customer).permit(:first_name, :last_name, :date_of_birth, :phone_number, :email, :password, :password_confirmation, :street, :number, :zipcode, :city, :province_id)
  end

  def account_update_params
    params.require(:customer).permit(:first_name, :last_name, :date_of_birth, :phone_number, :email, :password, :password_confirmation, :current_password, :street, :number, :zipcode, :city, :province_id)
  end

rescue StandardError => e
  redirect_to root_path, error: 'An error in RegistrationsController ' + e.to_s
end
