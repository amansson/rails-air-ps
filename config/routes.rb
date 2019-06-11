Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/peter", to: "pages#peter"
  get "/fiona", to: "pages#fiona"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :services do
    resources :reviews, only: [:new, :create]
    resources :contracts, only: [:create]
  end

  namespace :consumer do
    resources :contracts, only: [:index, :destroy]
  end

  namespace :provider do 
    resources :services, only: [:index]
    resources :contracts, only: [:index, :update, :destroy]
   end
end
