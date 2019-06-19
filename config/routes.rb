Rails.application.routes.draw do
  get 'sessions/new'
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  root "tweeets#index"
  
  resources :likes
  resources :relationships
  resources :comments
  resources :tweets
  resources :users

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
