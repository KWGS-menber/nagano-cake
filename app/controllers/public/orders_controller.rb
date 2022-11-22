class Public::OrdersController < ApplicationController

  def new
    @address = current_customer.address
    @order =Order.new
  end

  def confirm
    @cart_items = current_customer.cart_items.all
  end

  def thanks
  end

  def create
  end

  def index
   @orders = current_customer.orders
  end

  def show
   @order = Order.find(params[:id])
   @order_items = @order.order_items
  end
  
  private
  
  
  def order_params
    params.require(:order).permit(:customer_id, :name, :zip, :address,:total_price,:postage,:payment_method,:status)
  end

end
