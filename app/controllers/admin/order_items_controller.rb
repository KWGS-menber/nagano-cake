class Admin::OrderItemsController < ApplicationController
  
  
  
  
  
  
  
  
  
  private
  
  def order_item_params
    params.require(:order_item).permit(:product_id,:order_id,:product_count,:price,:production_status)
  end
  
end
