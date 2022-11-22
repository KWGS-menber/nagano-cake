class Public::OrdersController < ApplicationController

  def new
    @address = current_customer.address
    @order =Order.new
  end


  def confirm
    @order = Order.new(order_params)
    @order.postal_code = current_customer.postal_code
    @order.address = current_customer.address
    @order.name = current_customer.first_name + current_customer.last_name
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
      params.require(:order).permit(:zip, :address, :payment_method, :select_address,:name)
  end
end
