Rails.application.routes.draw do
  resources :bookings
  resources :services
  resources :clients
  resources :stylists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
