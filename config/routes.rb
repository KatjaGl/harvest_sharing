Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :products, only: [ :index, :show ]
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  get "products/:id", to: "products#show", as: :product
  get "products/new", to: "products#new"
  post "products", to: "products#create"

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
