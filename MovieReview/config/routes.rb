Rails.application.routes.draw do
  # nested route to associate review with movie
  resources :movies do
    resources :reviews
  end
  root 'movies#index'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
end
