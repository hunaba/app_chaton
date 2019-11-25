class ItemsController < ApplicationController
<<<<<<< HEAD
def show
	@items = Item.all 
end
=======

  def show
	@items = Item.all
  end
  
  def index
  	@items = Item.all
  end  
>>>>>>> 3c947b754fed805f315833f73bbf2f877b7f84b0
end
