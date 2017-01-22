class BeersController < ApplicationController
  
  def index
    @beers = Beer.all 
    render "index.html.erb"
  end 

  def show 
    @beer = Beer.find_by(id: params[:id])
    render "show.html.erb"
  end 

  def new
    render "new.html.erb"
  end

  def create
    @beer = Beer.new(brand: params[:brand], style: params[:style], name: params[:name], package_size: params[:package_size], bottle_size: params[:bottle_size], rating_1to99: params[:rating], price: params[:price])
    @beer.save
    render "create.html.erb"
  end 
end
