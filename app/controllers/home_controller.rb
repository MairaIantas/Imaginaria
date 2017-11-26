class HomeController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.search(params[:term], params[:page], params[:category_id])
    @order_item = current_order.items.new
  end
end
