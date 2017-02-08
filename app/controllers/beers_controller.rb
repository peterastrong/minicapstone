class BeersController < ApplicationController
  
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
    if current_user && current_user.admin
      render "new.html.erb"
    else
      flash[:warning] = "Please login"
      redirect_to "/login"
    end 
  end

  def create
    if current_user && current_user.admin
      @beer = Beer.new(brand: params[:brand], style: params[:style], name: params[:name], package_size: params[:package_size], bottle_size: params[:bottle_size], rating_1to99: params[:rating_1to99], price: params[:price], description: params[:description],image: params[:image], supplier_id: params[:supplier_id])
      @beer.save
      flash[:success] = "Congrats for adding another beer to the list!!"
      redirect_to "/beers/#{@beer.id}"
    else 
      flash[:warning] = "Please login"
      redirect_to "/login"
    end 
  end 

  def edit 
    if current_user && current_user.admin
      @beer = Beer.find_by(id: params[:id])
      render "edit.html.erb"
    else 
      flash[:warning] = "Please login"
      redirect_to "/login"
    end   
  end 

  def update
    if current_user && current_user.admin
      @beer = Beer.find_by(id: params[:id])
      @beer.assign_attributes(brand: params[:brand], style: params[:style], name: params[:name], package_size: params[:package_size], bottle_size: params[:bottle_size], rating_1to99: params[:rating_1to99], price: params[:price], description: params[:description], supplier_id: params[:supplier_id])
      @beer.save
      flash[:success] = "The beer has been updated."
      redirect_to "/beers/#{@beer.id}"
    else 
      flash[:warning] = "Please login"
      redirect_to "/login"
    end 
  end

  def destroy
    if current_user && current_user.admin
      @beer = Beer.find_by(id: params[:id])
      @beer_name_display = @beer.name
      @beer.destroy
      flash[:danger] = "You have successfully deleted this beer."
      redirect_to "/beers"
    else 
      flash[:warning] = "Please login"
      redirect_to "/login"
    end 
  end


end
