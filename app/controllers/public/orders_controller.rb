class Public::OrdersController < ApplicationController

  def new
    @customer = current_customer
  end

  def confirm
  end

  def thanks
  end

  def create
  end

  def index
   @orders = current_customer.orders
  end

  def show
  end

end
