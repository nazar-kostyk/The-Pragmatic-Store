Rails.application.routes.draw do
  # resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'
  resources :products
  resources :line_items do
    collection do
      post :decrement
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
