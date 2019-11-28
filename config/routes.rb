Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :items, only: [:show, :create, :index]
  resources :orders
  resources :carts
  resources :static_pages, only: [:index]
  get '/carts/paiement', to: 'carts#paiement', as: 'paiement'
	root to:"items#index"
end