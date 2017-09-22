Rails.application.routes.draw do

  root to: 'pages#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users
  resources :plants
  resources :gardens do
    resources :plots
  end

  resources :plots, only: [:create, :new] 

end
