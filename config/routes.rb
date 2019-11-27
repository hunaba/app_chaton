Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :items, only: [:show]
 resource :cart, only: [:show] #ou cartS ??
 root to:"items#index"  
 resources :users do
 	resources :carts
 	get 'show', to: 'carts#show'
 end
end
