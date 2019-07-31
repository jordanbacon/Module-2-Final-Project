Rails.application.routes.draw do
  resources :tours
  post '/edit_slot', to: 'slots#update'
  resources :slots, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
