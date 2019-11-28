Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :items, only: [:show, :create, :index]
  resources :orders
  resources :carts
	root to:"items#index"
end