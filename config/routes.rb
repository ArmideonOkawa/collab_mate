Rails.application.routes.draw do
  post "/login", to: 'users#login'
  get '/persist', to: 'users#persist'
  resources :users, only: [:show, :create]
  get "/projects", to: "projects#index"
  post "/projects", to: "projects#create"
  get "/categories", to: "categories#index"
  # resources :projects
end
