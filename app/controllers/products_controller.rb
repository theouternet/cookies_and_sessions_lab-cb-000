class ProductsController < ApplicationController 
  
  def index 
    
  end 
  
  def add 
    @item = Item.find(params[:id])
    
    cart = session[:cart] || []
    cart << @item.id
    
    session[:cart] = cart
  end 
  
end 