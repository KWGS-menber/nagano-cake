class Public::OrdersController < ApplicationController

  def new
    @address = current_customer.address
    @order =Order.new
  end


  def confirm
    @order = Order.new(order_params)
    @address = Address.find(params[:order][:address_id])
    @order.zip = @address.zip
    @order.address = @address.address
    @order.name = @address.name
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
    params.require(:order).permit( :name, :zip, :address,:total_price,:postage,:payment_method,:status, :select_address)
  end
end
