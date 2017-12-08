class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.save
    session[:order_id] = @order.id
    if @order.save

      respond_to do |format|
        format.html {
          flash[:notice] = "Item successfully added!"
          redirect_to products_path }
        format.js
      end
    else
      @message = @item.errors.full_messages
      respond_to do |format|
        format.html {
          flash[:notice] = @message
          redirect_to products_path
        }
        format.js
      end
    end
  end

  def update
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.update_attributes(item_params)
    @order.save
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    redirect_to cart_path
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
