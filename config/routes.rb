Rails.application.routes.draw do
  resources :national_parks
  resources :reviews
  resources :slots
  resources :tours
  resources :users
  resources :bookings
  resources :campsites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
