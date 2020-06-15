Rails.application.routes.draw do
  get 'matchs/index'
  get 'requests/index'
  get 'requests/show'
  get 'requests/new'
  devise_for :users
  root to: 'requests#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :requests, only: [:show, :new, :create, :destroy] do
    resources :matchs, only: :show
  end
end
