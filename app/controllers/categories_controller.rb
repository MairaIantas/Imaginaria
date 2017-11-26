class CategoriesController < ApplicationController
  def show
    @products = Category.find(params[:id]).products
    @order_item = current_order.items.new
  end
end
