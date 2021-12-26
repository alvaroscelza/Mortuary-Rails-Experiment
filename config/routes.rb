Rails.application.routes.draw do
  resources :products
  resources :providers
  resources :users
  devise_for :users
  root 'providers#index'
end
