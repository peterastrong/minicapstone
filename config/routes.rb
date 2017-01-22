Rails.application.routes.draw do

  root to:"beers#index" #makes links homepage go to a page directly 

  get '/all_beers', to: 'beers#all_beers_method'

  get "/new_beer", to: "beers#new_beer_method"
  post "/new_beer_result", to: "beers#new_beer_result_method"

  get "/beers", to: "beers#index"
  get "/beers/:id", to: "beers#show"

end
