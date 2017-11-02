class CategoriesController < ApplicationController
  def show
    @products = Category.find(params[:id]).product
  end
end
