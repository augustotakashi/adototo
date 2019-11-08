Rails.application.routes.draw do
  resources :pets
  devise_for :users, controllers: {
  	registrations: 'registrations'
  }
  root 'pets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
