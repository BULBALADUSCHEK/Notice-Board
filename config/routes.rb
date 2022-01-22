Rails.application.routes.draw do
  root 'pages#main'
  get 'close', to: 'pages#close'
  get 'expired', to: 'pages#expired'
  get 'main', to: 'pages#main'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :articles do
    resources :comments     
    patch :change_state  
  end

end
