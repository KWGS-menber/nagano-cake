class Admin::OrderItemsController < ApplicationController
  
  
  def update
    @order_item=OrderItem.find(params[:id])
    @order_item.update(order_item_params)
    flash[:notice]="変更を修正しました"
    redirect_to admin_order_path
  end
  
  
  
  
  
  
  private
  
  def order_item_params
    params.require(:order_item).permit(:product_id,:order_id,:product_count,:price,:production_status)
  end
  
end
