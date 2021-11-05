Rails.application.routes.draw do
  resources :pages, only: [:about,:contact]
  root to: 'pages#home'
  resources :developers, only: [:index, :show, :new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
