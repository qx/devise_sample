Rails.application.routes.draw do

  # delete "roles/destroy/:id(.:format)" => "roles#destroy", as: "delete_role"
  resources :roles

  resources :products
  resources :members
  resources :manages
  devise_for :users
  root to: "products#index"
end
