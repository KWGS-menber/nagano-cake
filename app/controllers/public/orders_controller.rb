class Public::OrdersController < ApplicationController

  def new
    @address = current_customer.address
    @order =Order.new
  end

  def confirm
  end

  def thanks
  end

  def create
  end

  def index
  end

  def show
  end

end
