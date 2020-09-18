Rails.application.routes.draw do
  #user_routes
  post "/login", to: 'users#login'
  get '/persist', to: 'users#persist' 
  get '/users/:id/projects', to: 'users#projects'
  post "/users/:id/projects", to: "projects#create"
  resources :users, only: [:index, :show, :create]

  #projects_routes
  get "/projects", to: "projects#index"
  post "/projects", to: "projects#create"
  get "/projects/:id",  to: "projects#show"

  ##idea_routes
  get "/ideas", to: "ideas#index"
  get "/projects/:id/ideas", to: "ideas#project_ideas"
  post "/projects/:id/ideas", to: "ideas#create"
  delete "/ideas/:id", to: "ideas#destroy"
end

