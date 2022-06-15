Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


    get "products/:id", to: "products#show", as: :product
    get "products/new", to: "products#new"
    post "products", to: "products#create"

    #

  # resources :users, only: [ :new, :show, :new, :create, :update, :edit, :delete]
  # resources :products, only: [ :index, :show ] do
  #   resources :chatrooms, only: [:show ]
  #   end
  end
  # resources :messages
  # resources :gardens
  # resources :garden_products
  # resources :characteristics
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# resources :reviews
# resources :favorites
# only: [:index, :show]do
# resources
