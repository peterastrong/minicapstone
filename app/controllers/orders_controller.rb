class OrdersController < ApplicationController

  def create
    carted_products = current_user.carted_products.where(status: "carted")
    order = Order.new(user_id: current_user.id)
    order.calculate_absolute_total(carted_products)
    order.save
    carted_products.update_all(status: "purchased", order_id: order.id)
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
