class ChargesController < ApplicationController
  def new
    @amount = get_subtotal
    @description = 'Description of Charge'
    @order_item = current_order.items
  end

  def create
     @amount = get_subtotal #get_subtotal # $5 in cents

    # @customer = Stripe::Customer.create(email:  params[:stripeEmail],
                                       # source: params[:stripeToken])

    @charge = Stripe::Charge.create(customer:    current_customer.id,
                                    amount:      @amount,
                                    description: 'Rails Stripe customer',
                                    currency:    'cad')

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private
  def get_subtotal
    (current_order.subtotal * 100)
  end

end
