class ChargesController < ApplicationController
  def new
    @order = current_order
    @amount = total
  end

  def create
    @amount = total
    @customer = Stripe::Customer.create(email: params[:stripeEmail], source: params[:stripeToken])

    @charge = Stripe::Charge.create(customer: @customer, amount: @amount, description: 'Imaginaria, thanks for buying with us! ',
                                    currency: 'cad')
    update_status
    session.delete(:order_id)
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private

  def total
    (current_order.total.to_i + 15) * 100
  end

  def update_status
    @order = current_order
    @order.update(status_id: 3)
  end
end
