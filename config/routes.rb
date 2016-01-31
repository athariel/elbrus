Rails.application.routes.draw do
  devise_for :users

  resources :ingredients
  resources :dishes
  resources :measurements
  resources :products

  root 'products#index'
end
