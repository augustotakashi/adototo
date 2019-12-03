Rails.application.routes.draw do
  resources :line_items
  resources :pets
  post 'line_items/maile', to: 'line_items#maile', as: 'maile'
  resources :carts
  
  devise_for :users, controllers: {
  	registrations: 'registrations'
  }
  root 'pets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
