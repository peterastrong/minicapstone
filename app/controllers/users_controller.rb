class UsersController < ApplicationController

  def new
    render "new.html.erb"
  end 

  def create
    user = User.new(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Thanks for signing up."
      redirect_to "/beers"
    else 
      flash[:warning] = "The two passwords do not match. Try again."
      redirect_to "/sign_up"
    end 
    
  end

end
