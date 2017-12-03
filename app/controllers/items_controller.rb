class ItemsController < ApplicationController

  def create
    @order = current_order
    @order_item = @order.items.new(item_params)
    @order.save
    session[:order_id] = @order.id

    redirect_to home_path,
    error: "An error in create ItemsController"
  end

  def update
    @order = current_order
    @order_item = @order.items.find(params[:id])
    @order_item.update_attributes(item_params)
    @order_item = @order.items

    redirect_to home_path,
     error: "An error in update ItemsController"
  end

  def destroy
    @order = current_order
    @order_item = @order.items.find(params[:id])
    @order_item.destroy
    @order_item = @order.items

    redirect_to home_path,
    error: "An error in destroy ItemsController"
  end

  private
    def item_params
      params.require(:item).permit(:product_id, :qnty)
    end

end
