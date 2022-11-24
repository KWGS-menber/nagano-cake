class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!  
  def show
    @order = Order.find(params[:id])
    @order_items= @order.order_items
    # @order.name = @order.customer.last_name + current_customer.first_name

    # @status = Order.status
  end

  private
  def order_params
    params.require(:order).permit( :name, :zip, :address,:total_price,:postage,:payment_method, :status)
  end
end
