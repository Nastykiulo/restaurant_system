Rails.application.routes.draw do
  resources :restaurant_working_hours
  resources :restaurants
  # devise_for :users
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
