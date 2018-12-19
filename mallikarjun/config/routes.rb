Rails.application.routes.draw do
  devise_for :controllers
  devise_for :users
  namespace :api do
      namespace :v1 do
      	
        resources :products, only: [:index]
      end
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
end
