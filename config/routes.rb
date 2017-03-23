Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users_controller/omniauth_callbacks" }

  root to: "users#index"

  resources :users_permissions
  resources :permissions
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
