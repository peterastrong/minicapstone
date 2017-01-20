Rails.application.routes.draw do
  get '/all_beers', to: 'beers#all_beers_method'

  get "/new_beer", to: "beers#new_beer_method"
  post "/new_beer_result", to: "beers#new_beer_result_method"

  get "/beers", to: "beers#index"
end
