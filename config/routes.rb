Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :products, only: [ :index, :show ]


  resources :chatrooms, only: :show do
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

Rails.application.routes.draw do
  get "reviews/:id", to: "reviews#show", as: :review
end

Rails.application.routes.draw do
  get "reviews/new", to: "reviews#new"
end

Rails.application.routes.draw do
  post "reviews", to: "reviews#create"
end
