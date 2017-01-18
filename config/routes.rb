Rails.application.routes.draw do
  get '/all_beers', to: 'beers#all_beers_method'
end
