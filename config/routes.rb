Rails.application.routes.draw do

  resources :pianos, only: [:new, :index, :show, :edit, :destroy]

  root to: 'pages#home'

  post 'pianos', to: 'pianos#create'
  patch 'pianos/:id', to: 'pianos#update'

end
