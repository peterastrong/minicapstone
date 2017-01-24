class BeersController < ApplicationController
  
  def index
    @beers = Beer.all.sort 
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
    flash[:success] = "Congrats for adding another beer to the list!!"
    redirect_to "/beers/#{@beer.id}"
  end 

  def edit 
    @beer = Beer.find_by(id: params[:id])
    render "edit.html.erb"
  end 

  def update
    @beer = Beer.find_by(id: params[:id])
    @beer.assign_attributes(brand: params[:brand], style: params[:style], name: params[:name], package_size: params[:package_size], bottle_size: params[:bottle_size], rating_1to99: params[:rating], price: params[:price])
    @beer.save
    flash[:success] = "The beer has been updated."
    redirect_to "/beers/#{@beer.id}"
  end

  def destroy
    @beer = Beer.find_by(id: params[:id])
    @beer_name_display = @beer.name
    @beer.destroy
    flash[:danger] = "You have successfully deleted this beer."
    redirect_to "/beers"
  end

end
