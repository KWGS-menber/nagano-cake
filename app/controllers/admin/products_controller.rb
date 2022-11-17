class Admin::ProductsController < ApplicationController
  def new
    @product=Product.new
  end
  def show
    
  end
  
  def create
  product=Product.new
  product.save
  end
  
  
  
  private
  
  def product_params
    params.require(:product).permit(:genre_id,:name,:price,:explanation,:is_active,)
  end
end
