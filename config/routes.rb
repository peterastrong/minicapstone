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
  get "/suppliers", to: "suppliers#index"
  get "/suppliers/new", to: "suppliers#new"
  post "/suppliers", to: "suppliers#create"
  get "/suppliers/:id", to: "suppliers#show"
  get "/suppliers/:id/edit", to: "suppliers#edit"
  patch "/suppliers/:id", to: "suppliers#update"
  delete "suppliers/:id", to: "suppliers#destroy"



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

#orders routes
  post "/orders", to: "orders#create"
  get "/orders/:id", to: "orders#show"

#carted products routes
  post "/carted_products", to: "carted_products#create"
  get "/carted_products", to: "carted_products#index"
end
