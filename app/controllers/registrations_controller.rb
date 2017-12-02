class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:customer).permit(:first_name, :last_name, :date_of_birth, :phone_number, :email, :password, :password_confirmation, :street, :number, :zipcode)
  end

  def account_update_params
    params.require(:customer).permit(:first_name, :last_name, :date_of_birth, :phone_number, :email, :password, :password_confirmation, :current_password, :street, :number, :zipcode)
  end
end
