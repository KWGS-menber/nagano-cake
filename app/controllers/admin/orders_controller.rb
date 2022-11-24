class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!  
  def show
    @order = Order.find(params[:id])
    @order.name = @order.customer.last_name + current_customer.farst_name

    # @status = Order.status
  end

  private
  # def prder_params
  #   params.require(:order).permit()
  # end
end
