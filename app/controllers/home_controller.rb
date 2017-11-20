class HomeController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.search(params[:term], params[:page])
  end
end
