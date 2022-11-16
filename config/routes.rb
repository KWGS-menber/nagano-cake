Rails.application.routes.draw do
  devise_for :users
  devise_for :dliveries
  devise_for :order_items
  devise_for :genres
  devise_for :carts
  devise_for :products
  devise_for :orders
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
