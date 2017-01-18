class BeersController < ApplicationController
  def all_beers_method
    @all_beers = Beer.all 
    render "all_beers.html.erb"
  end 
end
