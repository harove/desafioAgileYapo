Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :products
  resources :users, only: [:show]
  resources :sales, only: [:create, :index]
  root to: "products#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
