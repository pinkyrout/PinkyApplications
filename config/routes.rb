Rails.application.routes.draw do
  resources :users do
  	resource :address
  	resources :posts
  end
  #resources :address
  #resources :user
  root 'users#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
