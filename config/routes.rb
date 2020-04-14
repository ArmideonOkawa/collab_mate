Rails.application.routes.draw do
  post "/login", to: 'users#login'
  get "/users/:id", to: 'users#show'
  resources :users, only: [:show, :create]
end
