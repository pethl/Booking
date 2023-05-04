Rails.application.routes.draw do
  resources :employees
  resources :sattings
  resources :sittings
  resources :opening_hours
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
  
  #Route for the gettimes_pages_path for the put method
 # put 'reservations/gettimes', to: 'reservations#gettimes', as: 'gettimes_reservations' #gettimes_reservations_path
  get 'pages/welcome'
  get 'pages/reservation'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#welcome"
  
end
