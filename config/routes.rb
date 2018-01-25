Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :destroy, :show] do
  	resources :addresses
  	resources :posts
  end
  resources :addresses
  #resources :address
  #resources :user
  root 'users#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
