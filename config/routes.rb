Rails.application.routes.draw do



  resources :mobiles
  get '/' => 'mobiles#index'
  get 'mobiles/:id' => 'mobiles#show' , as: :mobile_path
  get 'mobiles/new' => 'mobiles#new'
  post 'mobiles/index' => 'mobiles#create'
  get 'mobiles/:id/edit' => 'mobiles#edit', as: :edit_path
  patch 'mobiles/:id' => 'mobiles#update'
  get 'mobiles/:id/destroy' => 'mobiles#destroy', as: :delete_path

  get 'signup' => 'users#new'
  resources :users

  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'



  get 'orders/index' => 'orders#index'
  get 'orders/new' => 'orders#new'
  post 'orders/index' => 'orders#create'
  get 'orders/:id/destroy' => 'orders#destroy', as: :delete_order
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
