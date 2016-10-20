Rails.application.routes.draw do
  resources :products
  resources :members
  resources :manages
  devise_for :users
  root to: "products#index"
end
