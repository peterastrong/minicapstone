class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.new(quantity: params[:quantity], 
                                      user_id: current_user.id,
                                      status: "carted", 
                                      beer_id: params[:beer_id])
    carted_product.save
    redirect_to "/carted_products"
  end

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    if @carted_products == []
      redirect_to "/beers"
    else
      render "index.html.erb"
    end 
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.update(status: "removed")
    flash[:danger] = "this item has been deleted"
    redirect_to "/carted_products"
  end
end
