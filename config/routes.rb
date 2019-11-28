Rails.application.routes.draw do
  devise_for :users
   resources :users, only: [:show, :edit, :update]
  resources :items, only: [:show, :create, :index]
  resources :orders, except: [:new, :edit, :update]
  resources :carts, except: [:new, :edit, :index]
	root to:"items#index"
end