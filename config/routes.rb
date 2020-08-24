Rails.application.routes.draw do
  resources :services
  resources :appointments
  resources :cities
  resources :barbers
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
