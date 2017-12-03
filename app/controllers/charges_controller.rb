class ChargesController < ApplicationController
  def new
    @order = current_order
    @amount = current_order.total * 100
  end

  def create
    @amount = get_total  #get_subtotal # $5 in cents

    @customer = Stripe::Customer.create(email:  params[:stripeEmail],
                                       source: params[:stripeToken])

    @charge = Stripe::Charge.create(customer:    @customer,
                                    amount:      @amount,
                                    description: 'Imaginaria, thanks for buying with us! ',
                                    currency:    'cad')


    @order = current_order
    @order.update(status_id: 3)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private
  def get_total
    (current_order.total.to_i * 1000)
  end

end
