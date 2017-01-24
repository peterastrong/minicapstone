Rails.application.routes.draw do

  root to:"beers#index" 

  get "/beers", to: "beers#index"
  get "/beers/new", to: "beers#new"
  post "/beers", to: "beers#create"
  get "/beers/:id", to: "beers#show"
  get "/beers/:id/edit", to: "beers#edit"
  patch "/beers/:id", to: "beers#update"
  delete "/beers/:id", to: "beers#destroy"
end
