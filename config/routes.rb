Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :shops, except: [:new, :edit]
  resources :products, except: [:new, :edit]
  resources :orders, except: [:new, :edit]
  resources :line_items, except: [:new, :edit]
end
