Rails.application.routes.draw do
  get 'day_book/index'

  resources :calendar_bookings
  resources :shop_calendars
  resources :shop_stylist_workdays
  resources :shop_stylists
  resources :shop_workdays
  resources :shop_settings
  resources :shops
  resources :hair_dressers
  get 'booker/day'

  get 'booker/week'

  resources :bookings do
    collection do
      get 'make'
      post 'save'
    end
  end
  resources :services
  resources :clients
  resources :stylists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #  get 'store/index'
  # root 'day_book#index', as: 'day_book_index'


end
