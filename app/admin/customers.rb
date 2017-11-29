ActiveAdmin.register Customer do
  permit_params :first_name, :last_name, :date_of_birth, :phone_number, :email, :user_name, :password
end
