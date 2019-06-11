Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/peter", to: "pages#peter"
  get "/fiona", to: "pages#fiona"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :services do
    resources :reviews, only: [:new, :create, :show]
    resources :contracts, only: [:index, :show]
  end
  resources :contracts, only: [:new, :create, :update]
  resources :categories, only: [:show]

  namespace :provider do
    resources :services
   end
end
