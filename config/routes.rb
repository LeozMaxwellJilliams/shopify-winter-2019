Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :shops
  resources :products
  resources :orders
  resources :line_items
end
