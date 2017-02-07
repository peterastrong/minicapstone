class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all 
    render "index.html.erb"
  end

  def new 
    render "new.html.erb"
  end 

  def create
    @supplier = Supplier.new(name: params[:name], email: params[:email], phone: params[:phone])
    @supplier.save
    flash[:success] = "Thanks for adding a new Supplier."
    redirect_to "/suppliers/#{@supplier.id}"
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @supplier = Supplier.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.assign_attributes(name: params[:name], email: params[:email], phone: params[:phone])
    @supplier.save 
    flash[:success] = "Supplier has been updated."
    redirect_to "/suppliers/#{@supplier.id}"
  end

  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy 
    flash[:danger] = "You have deleted this brewery."
    redirect_to "/suppliers"
  end

end
