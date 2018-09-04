Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :organizations do
  resources :campaigns, only: [:new, :create]
  end
  resources :campaigns, only: [:index, :show, :edit, :update, :destroy]
  resources :orders, only: [:index, :show, :create] do
    resources :payments, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
