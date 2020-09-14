Rails.application.routes.draw do
  
  post "/login", to: 'users#login'
  get '/persist', to: 'users#persist' 
  get '/users/:id/projects', to: 'users#projects'
  resources :users, only: [:index, :show, :create]

  get "/projects", to: "projects#index"
  post "/projects", to: "projects#create"
  get "/projects/:id",  to: "projects#show"

  get "/categories", to: "categories#index"
  # resources :projects
end

