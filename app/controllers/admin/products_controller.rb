class Admin::ProductsController < ApplicationController
  def new
    @product=Product.new
    @genre=Genre.all
    
  end
  
  def show
    @product=Product.find(params[:id])
  end
  
  def create
  @product=Product.new(product_params)
  @product.save
  redirect_to admin_product_path(@product.id)
  end
  
  
  
  private
  
  def product_params
    params.require(:product).permit(:genre_id,:name,:price,:explanation,:is_active,)
  end
end
