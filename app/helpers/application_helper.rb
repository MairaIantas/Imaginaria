module ApplicationHelper
  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    elsif customer_signed_in?
      current_customer.orders.build # find_orders
    else
      Order.new
    end
  rescue StandardError => e
    flash[:error] = e
  end

  private

  def find_orders
    if !current_customer.orders.where(status_id: 1).nil?
      # current_customer.orders.where(status_id: 1).first
    else
      current_customer.orders.build
    end
  end
end
