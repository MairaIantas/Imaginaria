class CartsController < ApplicationController
  def show
    @order_item = current_order.items
    @subtotal = get_subtotal
  end

  private
  def get_subtotal
    subtotal = 0
      @order_item.each { |item| subtotal = subtotal + (item.qnty * item.price) }
    subtotal
  end
end
