Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :gardens, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
    resources :favorites, only: [:new, :create]
  end
  resources :chatrooms, only: [:show, :create, :index]
end
