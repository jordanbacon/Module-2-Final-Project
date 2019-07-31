Rails.application.routes.draw do
  resources :national_parks
  resources :reviews
  resources :slots
  resources :tours
  resources :users
  resources :bookings
  resources :campsites

  resources :sessions, only: [:new, :create, :destroy, :index]
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
