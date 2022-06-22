Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :gardens, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
    member do
      post 'toggle_favorite', to: "gardens#toggle_favorite"
    end
  end
  resources :chatrooms, only: [:show, :create, :index] do
    resources :messages, only: :create
  end

end
