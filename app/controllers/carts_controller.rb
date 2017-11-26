class CartsController < ApplicationController
  def show
    @order_item = current_order.items
  end
end
