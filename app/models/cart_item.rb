class CartItem < ApplicationRecord
 
  belongs_to :product
  belongs_to :customer
  belongs_to :order
  
end
