class CustomersController < ApplicationController
  # before_filter :authenticate_user! If you want to see the current logged in users profile make sure you are logged in.

  def show
    @customer = Customer.find(current_customer.id)
    # @address = CustomerAddress.where(:customer_id => @customer.id)
  end
end
