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
  end

  def show
  end
  
  private
  
  
  def order_params
    params.require(:order).permit(:customer_id, :name, :zip, :address,:total_price,:postage,:payment_method,:status)
  end

end
