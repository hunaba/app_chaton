class ItemsController < ApplicationController

  def show
  @items = Item.all
  @item = Item.find(params[:id])
  puts params
  end
  
  def index
  	@items = Item.all
  end  
end
