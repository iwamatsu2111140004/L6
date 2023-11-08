class CartitemsController < ApplicationController
  def new
    @cartitem = Cartitem.new
  end
  
  def create
    @cartitem = Cartitem.new(qty: params[:cartitem][:qty], product_id: params[:product][:id], cart_id: current_cart)
    @cartitem.save
    redirect_to products_path
  end
  
  def destroy
    cartitem = Cartitem.find(params[:cartitem][:product_id])
    cartitem.destroy
    redirect_to cart_path(current_cart)
  end
end
  
 