class ProductsController < ApplicationController 
  
  def index 
    
  end 
  
  def add 
    @item = Item.find(params[:id])
    
    cart = session[:cart] || []
    cart << @item.id
    
    session[:cart] = cart
  end 
  
  private 
  
   def product_params
    params.permit(:product)
  end
  
end 