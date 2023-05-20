Rails.application.routes.draw do
  resources :employees
  resources :sattings
  resources :sittings
  resources :opening_hours
  resources :exemptions
  resources :errorcodes
  resources :reservations  do
  collection do
    get :customer_details
  end
end
  resources :custbooks
  resources :abookings
  resources :rdetails
  resources :restaurants
  devise_for :users
  
  #Route for the gettimes_pages_path for the put method
 # put 'reservations/gettimes', to: 'reservations#gettimes', as: 'gettimes_reservations' #gettimes_reservations_path
  post 'enquiries/time_set', to: 'enquiries#time_set', as: 'time_set_enquiries' #time_set_enquiries_path
  post 'enquiries/mergetime', to: 'enquiries#mergetime', as: 'mergetime_enquiries' #mergetime_enquiries_path

 # get 'enquiries/mergetime'
  get 'enquiries/picktime'
  get 'enquiries/welcome'
  get 'enquiries/reservation'
  
   get 'pages/welcome'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#welcome"
  
end
