class Public::DeliveriesController < ApplicationController
  def index
    @delivery = Delivery.new
    @deliveries = Delivery.all
  end

  def edit
    @delivery = Delivery.find(params[:id])
  end

  def create
    @delivery = Delivery.new(delivery_params)
    if @delivery.save
      flash[:notice] = "配送先住所を登録しました"
      redirect_to public_deliveryies_path
    else
      @delivery = delivery.all.page(params[:page]).per(10)
      flash[:notice] = "配送先住所を入力してください"
      render :index
    end
  end

  def update
    @delivery = Delivery.find(params[:id])
    if @delivery.update(delivery_params)
      flash[:notice] = "配送先住所を変更しました"
      redirect_to public_deliveryies_path
    else
      flash[:notice] = "配送先住所を入力してください"
      render :edit
    end
  end

  def destroy
    @delivery = Delivery.find(params[:id])
    @delivery.destroy
    redirect_to public_deliveryies_path
  end

  private

  def delivery_params
    params.require(:delivery).permit(:name, :zip, :address)
  end
end
