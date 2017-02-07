class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.new(quantity: params[:quantity], 
                        user_id: current_user.id,
                        status: "carted", 
                        beer_id: params[:beer_id])
    
    carted_product.save
    redirect_to "/carted_products/#{carted_product.id}"
  end

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render "index.html.erb"
  end
end
