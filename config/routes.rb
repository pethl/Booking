Rails.application.routes.draw do
  resources :exemptions
  resources :errorcodes
  resources :reservations do
    resources :tags
      put '/enquiry_check', to: 'reservations#enquiry_check'
end
  resources :custbooks
  resources :abookings
  resources :rdetails
  resources :restaurants
  devise_for :users
  
  get 'pages/welcome'
  get 'pages/reservation'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#welcome"
  
end
