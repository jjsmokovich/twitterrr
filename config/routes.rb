Rails.application.routes.draw do
  resources :likes
  resources :relationships
  resources :comments
  resources :tweets
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
