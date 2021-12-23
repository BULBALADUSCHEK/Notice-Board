Rails.application.routes.draw do
  resources :comments
  root 'pages#main'
  get 'close', to: 'pages#close'
  get 'expired', to: 'pages#expired'
  get 'main', to: 'pages#main'
  resources :articles
end
