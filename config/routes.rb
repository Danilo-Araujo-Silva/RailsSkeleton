Rails.application.routes.draw do
  root to: "public#index"

  resources :users_permissions
  resources :permissions
  resources :users

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
