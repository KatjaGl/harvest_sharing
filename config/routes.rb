Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :gardens, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
    resources :favorites, only: [:new, :create]
  end
  resources :chatrooms, only: [:show, :create, :index] do
    resources :messages, only: :create
  end
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
