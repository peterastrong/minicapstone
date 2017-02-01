Rails.application.routes.draw do

  root to:"beers#index" 
#products routes
  get "/beers", to: "beers#index"
  get "/beers/new", to: "beers#new"
  post "/beers", to: "beers#create"
  get "/beers/:id", to: "beers#show"
  get "/beers/:id/edit", to: "beers#edit"
  patch "/beers/:id", to: "beers#update"
  delete "/beers/:id", to: "beers#destroy"

#suppliers routes



#images routes
  get "/products/:product_id/images/new", to: 'images#new'
  post "/products/:product_id/images", to: 'images#create'

  #users routes

  get "/sign_up", to: "users#new"
  post "users", to: "users#create"

  #login routes 

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  
end
