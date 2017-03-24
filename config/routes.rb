Rails.application.routes.draw do

  root to: "public#landing"

  namespace :administration do
    get 'dashboard'
  end

  namespace :development do
    get 'dashboard'
  end

  get 'about', to: 'public#about'
  get 'careers', to: 'public#careers'
  get 'help', to: 'public#help'
  get 'landing', to: 'public#landing'
  get 'privacy_policy', to: 'public#privacy_policy'
  get 'sitemap', to: 'public#sitemap'
  get 'terms_of_service', to: 'public#terms_of_service'
  get 'error/not_found', to: 'public/error#not_found'

  namespace :user do
    get 'dashboard'
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users_controller/omniauth_callbacks" }
  # resources :users_permissions
  # resources :permissions
  # resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
