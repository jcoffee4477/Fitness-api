Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/exercises" => "exercises#index"
  get "/exercises/:id" => "exercises#show"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/routines/:id" => "routines#show"
  patch "/routines/:id" => "routines#update"
end
