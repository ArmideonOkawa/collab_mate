Rails.application.routes.draw do
  post "/login", to: 'users#login'
  get '/persist', to: 'users#persist'
  resources :users, only: [:show, :create]
  resources :projects, only: [:show, :create]
end
