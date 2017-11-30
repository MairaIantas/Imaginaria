module ApplicationHelper
  def current_order
		if !session[:order_id].nil?
			Order.find(session[:order_id])
		elsif customer_signed_in?
      current_customer.orders.build
		else
      Order.new
    end
	end
end
