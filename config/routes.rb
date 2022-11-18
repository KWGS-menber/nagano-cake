Rails.application.routes.draw do
  devise_for :deliveries
  root to: 'public/homes#top'
  get "about" => "public/home#about"

  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    get '/admins' => 'admins#top'
    resources :products, only:[:index,:create,:show,:edit,:update]
    resources :genres, only:[:index,:create,:edit,:update]
    resources :customers, only:[:index,:show,:edit,:update]
    resources :orders,only:[:show,:update]
    resources :order_items, only:[:update]
  end

  namespace :public do
    get '/about' => 'homes#about'
    resources :products, only:[:index,:show] do
      get 'search' => "genres#search"
    end
    resource :customers, only:[:show ,:edit,:update]
    # idは必要ないためresoure
    get '/customers/my_page' => 'customers#show'
    get '/customers/infomation/edit' => 'customers#edit'
    get '/customers/infomation' => 'customers#update'
    get '/customers/unsubscribe' => 'customers#destroy'
    patch '/customers/delete_status' => 'customers#is_deleted'
    resources :cart_items, only:[:index,:update,:destroy,:create]
    delete '/cart_items/destroy_all' => 'cart_items#destroy_all'
    resources :orders, only:[:new,:index,:show,:create]
    get '/orders/new' => 'orders#new'
    post '/orders/confirm' => 'orders#confirm'
    get '/orders/thanks' => 'orders#thanks'
    resources :deliveries, only:[:index,:edit,:create,:update,:destroy]
  end


end
