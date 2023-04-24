Rails.application.routes.draw do
  resources :errorcodes
  resources :reservations
  resources :custbooks
  resources :abookings
  resources :rdetails
  resources :restaurants
  devise_for :users
  get 'pages/welcome'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#welcome"
  
end
