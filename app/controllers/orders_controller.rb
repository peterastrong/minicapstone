class OrdersController < ApplicationController

  def create
    order = Order.new(quantity: params[:quantity], 
                        user_id: current_user.id, 
                        beer_id: params[:beer_id])
    order.calculate_absolute_total
    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show

    @order = Order.find_by(id: params[:id])
    if current_user && current_user == @order.user
      render "show.html.erb"
    else
      redirect_to "/beers"
    end
  end

end
