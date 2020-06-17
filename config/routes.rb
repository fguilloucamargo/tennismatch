Rails.application.routes.draw do
  devise_for :users
  root to: 'requests#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :requests, only: [:show, :new, :create, :destroy] do
    resources :matches, only: [:index, :create]
  end
  resources :matches, only: :destroy
end
