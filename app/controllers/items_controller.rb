class ItemsController < ApplicationController
def show
	@items = Item.all 
end
 
  def index
  	@items = Item.all
  end  
end
