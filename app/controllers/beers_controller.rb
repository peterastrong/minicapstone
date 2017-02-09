class BeersController < ApplicationController
  #before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:index, :show]
  def index
    sort_attribute = params[:sort]
    order = params[:order]
    discount = params[:where]
    search_result = params[:search_result]
    if sort_attribute
      @beers = Beer.order(sort_attribute => order)
    elsif discount
      @beers = Beer.where("price < ?", discount)
    elsif search_result
      @beers = Beer.where("name ILIKE ? or brand ILIKE ?", "%#{search_result}%", "%#{search_result}%")
    elsif params[:category]
      selected_category = Category.find_by(name: params[:category])
      @beers = selected_category.beers
    else 
      @beers = Beer.order(rating_1to99: :desc)
    end 
    render "index.html.erb"
  end 

  def show
    
    if params[:id] == "random" 
      @beer = Beer.all.sample
    else 
      @beer = Beer.find_by(id: params[:id])
    end 
    render "show.html.erb"
  end 

  def new
    @beer = Beer.new
    render "new.html.erb"
  end

  def create
    @beer = Beer.new(brand: params[:brand], style: params[:style], name: params[:name], package_size: params[:package_size], bottle_size: params[:bottle_size], rating_1to99: params[:rating_1to99], price: params[:price], description: params[:description], supplier_id: params[:supplier_id])
    if @beer.save
      @beer.images.create(url: params[:image])
      flash[:success] = "Congrats for adding another beer to the list!!"
      redirect_to "/beers/#{@beer.id}" 
    else
      render "new.html.erb"
    end
  end 

  def edit 
    @beer = Beer.find_by(id: params[:id])
    render "edit.html.erb"
  end 

  def update
    @beer = Beer.find_by(id: params[:id])
    @beer.assign_attributes(brand: params[:brand], style: params[:style], name: params[:name], package_size: params[:package_size], bottle_size: params[:bottle_size], rating_1to99: params[:rating_1to99], price: params[:price], description: params[:description], supplier_id: params[:supplier_id])
    
    if @beer.save
      flash[:success] = "The beer has been updated."
      redirect_to "/beers/#{@beer.id}"
    else
      render "edit.html.erb"
    end  
  end

  def destroy
    @beer = Beer.find_by(id: params[:id])
    @beer_name_display = @beer.name
    @beer.destroy
    flash[:danger] = "You have successfully deleted this beer."
    redirect_to "/beers" 
  end


end
