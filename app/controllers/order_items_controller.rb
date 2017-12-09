class OrderItemsController < ApplicationController

  def create
    @order_item = OrderItem.all
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.save
    session[:order_id] = @order.id
    respond_to do |format|
      format.html {redirect_to products_path}
      format.js
    end
  end

  def update
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.update_attributes(item_params)
    @order.save
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    respond_to do |format|
      format.html {redirect_to cart_path}
      format.js
    end
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
