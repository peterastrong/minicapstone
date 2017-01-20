class BeersController < ApplicationController
  def all_beers_method
    @all_beers = Beer.all 
    render "all_beers.html.erb"
  end 

  def new_beer_method
    render "new_beer.html.erb"
  end 

  def new_beer_result_method
    @beer = Beer.new(brand: params[:brand], style: params[:style], name: params[:name], package_size: params[:package_size], bottle_size: params[:bottle_size], rating_1to99: params[:rating], price: params[:price])
    @beer.save
    render "new_beer_result.html.erb"
  end

  def index
    @beers = Beer.all? 
    render "index.html.erb"
  end 

end
